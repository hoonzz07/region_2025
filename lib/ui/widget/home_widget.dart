import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key, required this.text, required this.icon});

  final IconData icon;
  final String text;

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {      
  // www
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(size: 48, widget.icon),
          ),
        ),
        Text(
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          widget.text,
        ),
      ],
    );
  }
}
