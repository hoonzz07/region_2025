import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/StatusWidget.dart';

class AirView extends StatefulWidget {
  const AirView({super.key});

  @override
  State<AirView> createState() => _AirViewState();
}

class _AirViewState extends State<AirView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(42),
            child: Column(
              children: [
                Text(
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  '차량 상태                                                            ',
                ),
                SizedBox(child: StatusWi()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
