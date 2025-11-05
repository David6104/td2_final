class Todo {
  final int _id;
  final String _title;
  final bool _completed;

  // Constructeur
  Todo(this._id, this._title, this._completed);

  // Getters
  int get id => _id;
  String get title => _title;
  bool get completed => _completed;

  // Méthode statique fromJson
  static Todo fromJson(dynamic json) {
    int id = json['id'] ?? 0;
    String title = json['title'] ?? "";
    bool completed = json['completed'] ?? false;
    return Todo(id, title, completed);
  }
}
