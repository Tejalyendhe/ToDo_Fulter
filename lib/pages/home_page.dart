import 'package:flutter/material.dart';
import 'package:todo/widgets/todoItem.dart';
import '../model/todo.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 222, 97),
      appBar: _appBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                    child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, bottom: 20),
                      child: Text(
                        'All ToDos',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ),
                    for (ToDo todo in todosList)
                      TodoItem(
                        todo: todo,
                      ),
                  ],
                ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                      left: 20,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Add new ToDo Item',
                            border: InputBorder.none)),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 20, right: 20),
                    child: ElevatedButton(
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

// for searchbox
Widget searchBox() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 35,
            maxWidth: 40,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey)),
    ),
  );
}

// for appbar
AppBar _appBar() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 249, 244, 202),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Icon(
          Icons.man_sharp,
          size: 40,
        ),
      ],
    ),
  );
}
