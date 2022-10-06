class Task {
  final String name;
  bool isDone;
 // bool removeTask;

  Task({
    required this.name,
    this.isDone = false,
    //this.removeTask = false,
  });

  void doneChange() {
    isDone = !isDone;
  }

  // void isRemove() {
  //   removeTask = !removeTask;
  // }
}
