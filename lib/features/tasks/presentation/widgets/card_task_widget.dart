import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_fe/features/tasks/domain/entities/task.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../domain/entities/subtask.dart';
import '../blocs/task/task_bloc.dart';
import '../blocs/task/task_event.dart';

class CardTask extends StatelessWidget {
  final Task task;
  final Function(Task) onTap;
  const CardTask({
    super.key,
    required this.task,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final int subTaskCompleted =
        task.subTasks.where((subTask) => subTask.isCompleted).length;

    return GestureDetector(
      onTap: () => onTap(task),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: task.isCompleted ? Colors.grey.shade200 : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        margin: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title,
                      style: TextStyle(
                        decoration: task.isCompleted
                            ? TextDecoration.lineThrough
                            : null,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: task.isCompleted
                            ? Colors.grey.shade600
                            : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "$subTaskCompleted/${task.subTasks.length}",
                      style: TextStyle(
                        color: task.isCompleted
                            ? Colors.grey.shade500
                            : Colors.black54,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.delete_outline,
                        color: task.isCompleted
                            ? Colors.grey.shade500
                            : Colors.red,
                      ),
                      onPressed: task.isCompleted
                          ? null
                          : () {
                              final blocContext = context;
                              showDialog(
                                context: context,
                                builder: (dialogContext) => AlertDialog(
                                  title: const Text('Delete Task'),
                                  content: const Text(
                                    'Are you sure you want to delete this task?',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(dialogContext),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        blocContext
                                            .read<TaskBloc>()
                                            .add(DeleteTaskEvent(id: task.id));
                                        Navigator.pop(dialogContext);
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.red,
                                      ),
                                      child: const Text('Delete'),
                                    ),
                                  ],
                                ),
                              );
                            },
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(const CircleBorder()),
                      ),
                      icon: Icon(
                        task.isCompleted
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: task.isCompleted ? Colors.green : null,
                      ),
                      onPressed: () {
                        context
                            .read<TaskBloc>()
                            .add(CompleteTaskEvent(id: task.id));
                      },
                    ),
                  ],
                ),
              ],
            ),
            if (task.subTasks.isNotEmpty) ...[
              const SizedBox(height: 8),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              const SizedBox(height: 8),
              ...task.subTasks.map((subtask) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: Icon(
                            subtask.isCompleted
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            size: 20,
                            color: task.isCompleted
                                ? Colors.grey.shade500
                                : (subtask.isCompleted ? Colors.green : null),
                          ),
                          onPressed: task.isCompleted
                              ? null
                              : () {
                                  context.read<TaskBloc>().add(
                                      CompleteSubTaskEvent(id: subtask.id));
                                },
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: GestureDetector(
                            onTap: task.isCompleted
                                ? null
                                : () =>
                                    _showEditSubTaskDialog(context, subtask),
                            child: Text(
                              subtask.title,
                              style: TextStyle(
                                decoration: subtask.isCompleted
                                    ? TextDecoration.lineThrough
                                    : null,
                                color: task.isCompleted
                                    ? Colors.grey.shade500
                                    : (subtask.isCompleted
                                        ? Colors.grey.shade600
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: Icon(
                            Icons.delete_outline,
                            size: 20,
                            color: task.isCompleted
                                ? Colors.grey.shade500
                                : Colors.red,
                          ),
                          onPressed: task.isCompleted
                              ? null
                              : () {
                                  final blocContext = context;
                                  showDialog(
                                    context: context,
                                    builder: (dialogContext) => AlertDialog(
                                      title: const Text('Delete Subtask'),
                                      content: const Text(
                                        'Are you sure you want to delete this subtask?',
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(dialogContext),
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            blocContext.read<TaskBloc>().add(
                                                  DeleteSubTaskEvent(
                                                    id: subtask.id,
                                                  ),
                                                );
                                            Navigator.pop(dialogContext);
                                          },
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.red,
                                          ),
                                          child: const Text('Delete'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                        ),
                      ],
                    ),
                  )),
            ],
          ],
        ),
      ),
    );
  }

  void _showEditSubTaskDialog(BuildContext context, SubTask subtask) {
    final titleController = TextEditingController(text: subtask.title);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Edit Subtask'),
        content: CustomTextField(
          hintText: "Edit subtask",
          title: "Title",
          controller: titleController,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              if (titleController.text.isNotEmpty) {
                context.read<TaskBloc>().add(
                      UpdateSubTaskEvent(
                        id: subtask.id,
                        title: titleController.text,
                      ),
                    );
                Navigator.pop(dialogContext);
              }
            },
            child: const Text('Update'),
          ),
        ],
      ),
    );
  }
}
