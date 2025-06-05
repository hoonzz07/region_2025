import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:region_2025/ui/view/tab_view.dart';
import 'package:region_2025/ui/widget/header.dart';

import 'home_view.dart';

class CarSlide extends StatefulWidget {
  CarSlide({super.key});

  final ImagePicker picker = ImagePicker();

  @override
  State<StatefulWidget> createState() => _CarSelectView();
}

class _CarSelectView extends State<CarSlide> {
  bool _isChecked = false;
  XFile? image;
  XFile? camera;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/images/cloud1.png'),
          ),
          color: Colors.black,
        ),
        child: Column(
          children: [
            Expanded(child: Center(child: HeaderTitle())),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 15)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          size: 38,
                          color: Colors.white,
                          Icons.chevron_left,
                        ),
                      ),
                      SizedBox(
                        width: 350,
                        height: 250,
                        child: Image.asset('assets/images/front-car.webp'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          size: 38,
                          color: Colors.white,
                          Icons.chevron_right,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    'C - Class',
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 32)),
                      Switch(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value;
                          });
                        },
                      ),
                      Text(
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        'Remember',
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 400,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TabView()),
                        );
                      },
                      child: Text(
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        "이 차량 선택하기",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        "차량 등록하기",
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
