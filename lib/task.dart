class Task {
  Task({required this.TaskText, this.checkBox = false});
  final String TaskText;
  late bool checkBox;
  void ToggleDone() {
    checkBox = !checkBox;
  }
}
