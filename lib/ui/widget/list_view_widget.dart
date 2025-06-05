import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  final IconData icons;
  final String texts;

  const ListViewWidget({
    super.key, required this.icons, required this.texts
  });

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              height: 60,
              child: Row(
                spacing: 10,
                children: [
                  Icon(color: Colors.white, widget.icons),
                  Text(style: TextStyle(color: Colors.white), widget.texts),
                ],
              ),
            ),
          ],
        ),
            Icon(color: Colors.white, Icons.chevron_right),
      ],
    );
  }
}
