import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      backgroundColor: Color.fromARGB(255, 213, 203, 112),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: 30,
                    maxWidth: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
