class ToDo {
  String? id;
  String? todoText;
  bool? isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Excercise', isDone: true),
      ToDo(id: '02', todoText: 'Buy Groceries'),
      ToDo(id: '03', todoText: 'Check Emails', isDone: true),
      ToDo(id: '02', todoText: 'Team Meeting'),
      ToDo(id: '02', todoText: 'Study About Flutter'),
      ToDo(id: '02', todoText: 'Download Movie'),
      ToDo(id: '02', todoText: 'Buy Groceries'),
    ];
  }
}
