import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String _currentDisplay = '';

  void _showText() {
    setState(() {
      _currentDisplay = 'Show text';
    });
  }

  void _showCubitImage() {
    setState(() {
      _currentDisplay = 'Show cubit image';
    });
  }

  void _showRedCircle() {
    setState(() {
      _currentDisplay = 'Show red circle';
    });
  }

  void _reset() {
    setState(() {
      _currentDisplay = '';
    });
  }

  Widget _buildDisplay() {
    switch (_currentDisplay) {
      case 'Show text':
        return Text('This is a text');
      case 'Show cubit image':
        return Image.asset("lib/assets/cubit.png");
      case 'Show red circle':
        return Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: _buildDisplay(),
              ),
            ),
            ElevatedButton(
              onPressed: _showText,
              child: Text('Show text'),
            ),
            ElevatedButton(
              onPressed: _showCubitImage,
              child: Text('Show cubit image'),
            ),
            ElevatedButton(
              onPressed: _showRedCircle,
              child: Text('Show red circle'),
            ),
            ElevatedButton(
              onPressed: _reset,
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
