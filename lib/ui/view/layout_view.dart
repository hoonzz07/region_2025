import 'package:flutter/material.dart';
import 'package:region_2025/ui/splash.dart';
import 'package:region_2025/ui/widget/header.dart';

import 'car_select_view.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<StatefulWidget> createState() => _LayoutView();
}

class _LayoutView extends State<LayoutView> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ColoredBox(
        color: Colors.black,
        child: Center(
          child: Column(
            spacing: 20,
            children: [
              Padding(padding: EdgeInsets.only(top:30)),
              HeaderTitle(),
              Image.asset('assets/images/red car.png'),
              Text(
                style: TextStyle(fontSize: 18, color: Colors.white),
                '로그인 정보를 입력하세요.',
              ),
              SizedBox(
                width: 400,
                height: 60,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1,
                      heightFactor: 1,
                      child: Icon(Icons.person),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Username',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                height: 60,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1,
                      heightFactor: 1,
                      child: Icon(Icons.lock),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Row(
                  spacing: 12,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30)),
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
              ),
              Center(child: Container(
                width: 400,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  CarSelectView()));
                    },
                    child: Text(
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        'Sign in')),
              )),
              Center(child: Container(
                margin: EdgeInsets.only(top: 70),
                width: 300,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)
                        )
                    ),
                    onPressed: () {},
                    child: Text(
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                        'Sign Up')),
              )),
              Center(child: SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)
                        )
                    ),
                    onPressed: () {},
                    child: Text(
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                        'Password Reset')),
              )),

            ],
          ),
        ),
      ),
    );
  }
}
