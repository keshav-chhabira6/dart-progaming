import 'dart:io';

void main() {
  List<String> toDoList = [];
  while (true) {
    print('\nSimple To-Do List App');
    print('1. Add a new task');
    print('2. View all tasks');
    print('3. Remove a task');
    print('4. Exit');
    stdout.write('Enter your choice: ');

    String? choice = stdin.readLineSync();

    if (choice == '1') {
      addTask(toDoList);
    } else if (choice == '2') {
      viewTasks(toDoList);
    } else if (choice == '3') {
      removeTask(toDoList);
    } else if (choice == '4') {
      print('Exiting...');
      break;
    } else {
      print('Invalid choice! Please enter a number between 1 and 4.');
    }
  }
}

void addTask(List<String> toDoList) {
  stdout.write('Enter a new task: ');
  String? task = stdin.readLineSync();
  if (task != null && task.isNotEmpty) {
    toDoList.add(task);
    print('Task added successfully!');
  } else {
    print('Task cannot be empty!');
  }
}

void viewTasks(List<String> toDoList) {
  if (toDoList.isEmpty) {
    print('No tasks found.');
  } else {
    print('\nYour To-Do List:');
    for (int i = 0; i < toDoList.length; i++) {
      print('${i + 1}. ${toDoList[i]}');
    }
  }
}

void removeTask(List<String> toDoList) {
  if (toDoList.isEmpty) {
    print('No tasks to remove.');
    return;
  }

  viewTasks(toDoList);
  stdout.write('Enter the number of the task to remove: ');
  String? input = stdin.readLineSync();
  int? index = int.tryParse(input ?? '');

  if (index == null || index <= 0 || index > toDoList.length) {
    print('Invalid index!');
  } else {
    toDoList.removeAt(index - 1);
    print('Task removed successfully!');
  }
}
