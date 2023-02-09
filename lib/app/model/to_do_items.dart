class ToDoItem {
  int? id;
  String? text;
  bool isDone;

  ToDoItem({required this.id, this.isDone = false, this.text});

  static List<ToDoItem> todoList() => [
        ToDoItem(id: 0, text: 'Correr', isDone: false),
        ToDoItem(id: 1, text: 'Beber', isDone: false),
        ToDoItem(id: 2, text: 'Estudar', isDone: true),
        ToDoItem(id: 3, text: 'Comer', isDone: true),
      ];
}
