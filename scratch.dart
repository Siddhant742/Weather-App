
import 'dart:io';

void main() {
  performTasks();
}

Future<void> performTasks()  async {
  task1();
  String task2result = await task2();
  task3(task2result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

String task2()  {
  String result = ' ';
  Duration threeSeconds = Duration(seconds: 3);
  Future.delayed(threeSeconds,() async {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String t2result) {

  String result = 'task 3 data';
  print('Task 3 complete with $t2result');

}