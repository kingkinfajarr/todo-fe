import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_fe/features/tasks/presentation/pages/task_page.dart';
import 'package:todo_fe/injection.dart';

import 'features/tasks/presentation/blocs/task/task_bloc.dart';
import 'features/tasks/presentation/blocs/task/task_event.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => getIt<TaskBloc>()..add(GetOngoingTasksEvent()),
        child: const TaskPage(),
      ),
    );
  }
}
