import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_fe/core/constants/app_theme.dart';
import 'package:todo_fe/core/widgets/main_button.dart';
import 'package:todo_fe/features/tasks/presentation/widgets/card_task_widget.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../domain/entities/task.dart';
import 'package:intl/intl.dart';

import '../blocs/task/task_bloc.dart';
import '../blocs/task/task_event.dart';
import '../blocs/task/task_state.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Task> ongoingTasks = [];
  List<Task> completedTasks = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _loadTasks();

    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        _loadTasks();
      }
    });
  }

  void _loadTasks() {
    switch (_tabController.index) {
      case 0:
        context.read<TaskBloc>()
          ..add(GetOngoingTasksEvent())
          ..add(GetCompletedTasksEvent());
        break;
      case 1:
        context.read<TaskBloc>().add(GetOngoingTasksEvent());
        break;
      case 2:
        context.read<TaskBloc>().add(GetCompletedTasksEvent());
        break;
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskBloc, TaskState>(
      listener: (context, state) {
        if (state is TasksLoaded) {
          if (state.isOngoing) {
            setState(() {
              ongoingTasks = state.tasks;
            });
          } else {
            setState(() {
              completedTasks = state.tasks;
            });
          }
        }

        if (state is TaskCreated ||
            state is TaskCompleted ||
            state is TaskUpdated ||
            state is TaskDeleted ||
            state is SubTaskCreated ||
            state is SubTaskDeleted ||
            state is SubTaskCompleted) {
          _loadTasks();
        }
      },
      child: Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        appBar: AppBar(
          title: const Text('Tasks'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'All Tasks'),
              Tab(text: 'Ongoing'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildAllTasksList(ongoingTasks, completedTasks),
              _buildAllTasksTab(),
              _buildAllTasksTab(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: AppTheme.primaryColor,
          onPressed: () => _showTaskBottomSheet(context),
          child: const Icon(Icons.add, color: AppTheme.lightWhite),
        ),
      ),
    );
  }

  Widget _buildAllTasksTab() {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        if (state is TaskLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is TasksLoaded) {
          return _buildTaskList(state.tasks);
        } else if (state is TaskError) {
          return RefreshIndicator(
            onRefresh: () async {
              _loadTasks();
            },
            child: const Center(
              child: Text(
                "No tasks found",
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }

  Widget _buildAllTasksList(
    List<Task> ongoingTasks,
    List<Task> completedTasks,
  ) {
    return RefreshIndicator(
      onRefresh: () async {
        _loadTasks();
      },
      child: ongoingTasks.isEmpty && completedTasks.isEmpty
          ? const Center(child: Text('No tasks found'))
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (ongoingTasks.isNotEmpty) ...[
                  const Text(
                    "Ongoing Tasks",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...ongoingTasks.map(
                    (task) => CardTask(
                      task: task,
                      onTap: (task) =>
                          _showTaskBottomSheet(context, task: task),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
                if (completedTasks.isNotEmpty) ...[
                  const Text(
                    "Completed Tasks",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...completedTasks.map(
                    (task) => CardTask(
                      task: task,
                      onTap: (task) =>
                          _showTaskBottomSheet(context, task: task),
                    ),
                  ),
                ],
              ],
            ),
    );
  }

  Widget _buildTaskList(List<Task> tasks) {
    return RefreshIndicator(
      onRefresh: () async {
        _loadTasks();
      },
      child: tasks.isEmpty
          ? const Center(
              child: Text('No tasks found'),
            )
          : ListView.builder(
              itemCount: tasks.length,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                final task = tasks[index];
                return CardTask(
                  task: task,
                  onTap: (task) => _showTaskBottomSheet(context, task: task),
                );
              },
            ),
    );
  }

  void _showTaskBottomSheet(BuildContext parentContext, {Task? task}) {
    final titleController = TextEditingController(text: task?.title);
    final descriptionController =
        TextEditingController(text: task?.description);
    final subtaskController = TextEditingController();
    final deadlineNotifier = ValueNotifier<DateTime?>(task?.deadline);
    List<String> subtasks = [];

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return BlocProvider.value(
          value: BlocProvider.of<TaskBloc>(parentContext),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                  left: 16,
                  right: 16,
                  top: 16,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        task == null ? 'Create Task' : 'Update Task',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                      CustomTextField(
                        hintText: "Fill task",
                        title: "Title",
                        controller: titleController,
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        hintText: "Fill description",
                        title: "Description",
                        controller: descriptionController,
                        maxLines: 4,
                      ),
                      const SizedBox(height: 16),
                      ValueListenableBuilder<DateTime?>(
                        valueListenable: deadlineNotifier,
                        builder: (context, deadline, child) {
                          return Row(
                            children: [
                              Expanded(
                                child: Text(
                                  deadline == null
                                      ? 'No deadline set'
                                      : 'Deadline: ${DateFormat('dd MMM yyyy HH:mm').format(deadline)}',
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  final now = DateTime.now();
                                  final initialDate =
                                      deadline?.isAfter(now) ?? false
                                          ? deadline!
                                          : now;

                                  final date = await showDatePicker(
                                    context: context,
                                    initialDate: initialDate,
                                    firstDate: now,
                                    lastDate:
                                        now.add(const Duration(days: 365)),
                                  );

                                  if (date != null) {
                                    final time = await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.fromDateTime(
                                        deadline ?? now,
                                      ),
                                    );
                                    if (time != null) {
                                      deadlineNotifier.value = DateTime(
                                        date.year,
                                        date.month,
                                        date.day,
                                        time.hour,
                                        time.minute,
                                      );
                                    }
                                  }
                                },
                                child: Text(
                                  deadline == null
                                      ? 'Set Deadline'
                                      : 'Change Deadline',
                                ),
                              ),
                              if (deadline != null)
                                TextButton(
                                  onPressed: () {
                                    deadlineNotifier.value = null;
                                  },
                                  child: const Text('Clear'),
                                ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      if (task != null) ...[
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                hintText: "Add subtask",
                                title: "Subtask",
                                controller: subtaskController,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                if (subtaskController.text.isNotEmpty) {
                                  setState(() {
                                    subtasks.add(subtaskController.text);
                                    subtaskController.clear();
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        if (subtasks.isNotEmpty) ...[
                          const Text(
                            'New Subtasks:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          ...subtasks.asMap().entries.map((entry) {
                            return ListTile(
                              dense: true,
                              title: Text(entry.value),
                              trailing: IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    subtasks.removeAt(entry.key);
                                  });
                                },
                              ),
                            );
                          }),
                          const SizedBox(height: 16),
                        ],
                        if (task.subTasks.isNotEmpty) ...[
                          const Text(
                            'Existing Subtasks:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          ...task.subTasks.map((subtask) {
                            return ListTile(
                              dense: true,
                              title: Text(
                                subtask.title,
                                style: TextStyle(
                                  decoration: subtask.isCompleted
                                      ? TextDecoration.lineThrough
                                      : null,
                                ),
                              ),
                            );
                          }),
                        ],
                      ],
                      const SizedBox(height: 16),
                      MainButton(
                        label: task == null ? 'Create' : 'Update',
                        onPressed: () {
                          if (titleController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Title is required'),
                              ),
                            );
                            return;
                          }

                          if (task == null) {
                            parentContext.read<TaskBloc>().add(
                                  CreateTaskEvent(
                                    title: titleController.text,
                                    description:
                                        descriptionController.text.isEmpty
                                            ? null
                                            : descriptionController.text,
                                    deadline: deadlineNotifier.value,
                                  ),
                                );
                          } else {
                            parentContext.read<TaskBloc>().add(
                                  UpdateTaskEvent(
                                    id: task.id,
                                    title: titleController.text,
                                    description:
                                        descriptionController.text.isEmpty
                                            ? null
                                            : descriptionController.text,
                                    deadline: deadlineNotifier.value,
                                  ),
                                );

                            if (subtasks.isNotEmpty) {
                              parentContext.read<TaskBloc>().add(
                                    CreateSubTaskEvent(
                                      taskId: task.id,
                                      titles: subtasks,
                                    ),
                                  );
                            }
                          }
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
