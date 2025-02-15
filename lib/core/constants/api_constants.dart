class ApiConstants {
  static const String baseUrl = 'http://localhost:3000';
  // static const String baseUrl = 'http://10.0.2.2:3000';
  static const int receiveTimeout = 15000;
  static const int connectionTimeout = 15000;

  // Endpoints
  static const String tasks = '/tasks';
  static const String ongoingTasks = '/tasks/ongoing';
  static const String completedTasks = '/tasks/completed';
  static const String subtasks = '/tasks/subtasks';
}
