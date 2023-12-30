import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{

  List todoList = [];

  //reference the box
  final _myBox = Hive.box('myBox');

  //if first time open of the app
  void createInitialData(){
    todoList = [
      ["Answer assignment", false],
       ["Eat lunch", false],
    ];
  }

  //load the data from the database
  void loadData(){
    todoList = _myBox.get("TODOLIST");    
  }


  //Updatae the database
  void updateDatabase(){
    _myBox.put(("TODOLIST"), todoList);
  }
}