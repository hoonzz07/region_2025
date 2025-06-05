import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusWi extends StatefulWidget {
  const StatusWi({super.key});

  @override
  State<StatusWi> createState() => _StatusWiState();
}

class _StatusWiState extends State<StatusWi> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:Row(
       children: [
         Row(
           children: [
             SizedBox(
               child: Row(
                 children: [
                   Icon(Icons.abc_rounded),
                   Text('도어')
                 ],
               ),
             )
           ],
         ),
       ],
      )
    );
  }
}
