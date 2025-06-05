
import 'package:flutter/material.dart';

class Control extends StatelessWidget{
  const Control({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
        height: double.infinity,
        child: Center(child: Text('Share')),
      ),
    );
  }
  
}