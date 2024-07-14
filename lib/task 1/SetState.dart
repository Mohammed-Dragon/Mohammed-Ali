import 'package:flutter/material.dart';

class FastFilterBar extends StatefulWidget {
  @override
  _FastFilterBarState createState() => _FastFilterBarState();
}

class _FastFilterBarState extends State<FastFilterBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _selectedIndex == index ? Colors.red : Colors.grey,
                ),
                child: Text('Number ${index + 1}',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          );
        },
      ),
    );
  }
}
