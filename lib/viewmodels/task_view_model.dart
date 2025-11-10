import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskViewModel extends ChangeNotifier {
  late List<Task> liste;

  TaskViewModel() {
    liste = [];
  }

  /// Ajoute une nouvelle tâche à la liste
  void addTask(Task task) {
    liste.add(task);
    notifyListeners();
  }

  /// Génère une liste de tâches factices
  void generateTasks() {
    liste = Task.generateTask(50);
    notifyListeners();
  }
}
