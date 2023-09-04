class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList(){
    return [
      ToDo(id: '1', todoText: 'one', isDone: true),
      ToDo(id: '2', todoText: 'second', isDone: true),
      ToDo(id: '3', todoText: 'three', ),
      ToDo(id: '4', todoText: 'four'),
      ToDo(id: '5', todoText: 'five', isDone: true),
      ToDo(id: '1', todoText: 'one', isDone: true),
      ToDo(id: '2', todoText: 'second', isDone: true),
      // ToDo(id: '3', todoText: 'three', ),
      // ToDo(id: '4', todoText: 'four'),
      // ToDo(id: '5', todoText: 'five', isDone: true),
      // ToDo(id: '1', todoText: 'one', isDone: true),
      // ToDo(id: '2', todoText: 'second', isDone: true),
      // ToDo(id: '3', todoText: 'three', ),
      // ToDo(id: '4', todoText: 'four'),
      // ToDo(id: '5', todoText: 'five', isDone: true),
      // ToDo(id: '1', todoText: 'one', isDone: true),
      // ToDo(id: '2', todoText: 'second', isDone: true),
      // ToDo(id: '3', todoText: 'three', ),
      // ToDo(id: '4', todoText: 'four'),
      // ToDo(id: '5', todoText: 'five', isDone: true),
      // ToDo(id: '1', todoText: 'one', isDone: true),
      // ToDo(id: '2', todoText: 'second', isDone: true),
      // ToDo(id: '3', todoText: 'three', ),
      // ToDo(id: '4', todoText: 'four'),
      // ToDo(id: '5', todoText: 'five', isDone: true),
      ];
  }
}
