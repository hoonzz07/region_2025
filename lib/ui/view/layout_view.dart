import 'package:flutter/material.dart';
import 'package:region_2025/ui/splash.dart';
import 'package:region_2025/ui/widget/header.dart';
import 'car_select_view.dart';

final usernameRegExp = RegExp(r'^[\w]{4,}$');

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<StatefulWidget> createState() => _LayoutView();
}

class _LayoutView extends State<LayoutView> {
  final _formKey = GlobalKey<FormState>();
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
              Padding(padding: EdgeInsets.only(top: 30)),
              HeaderTitle(),
              Image.asset('assets/images/red car.png'),
              Text(
                style: TextStyle(fontSize: 18, color: Colors.white),
                '로그인 정보를 입력하세요.',
              ),
              Form(
                  key: _formKey,
                child:Column(
                  spacing: 12,
                  children: [
                    SizedBox(
                      width: 400,
                      height: 60,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null) {
                            return "필수 입력란 입니다.";
                          }
                          if (!usernameRegExp.hasMatch(value)) {
                            return "사용자 이름이 올바르지 않습니다.";
                          }
                          return null;
                        },
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
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "필수 입력란 입니다.";
                          }
                            if(value.length < 4) {
                              return "글자수가 너무적어요";
                            }
                          return null;
                        },
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
                  ],
                )

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
              Center(
                child: Container(
                  width: 400,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CarSelectView(),
                          ),
                        );
                      }

                    },
                    child: Text(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      'Sign in',
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 70),
                  width: 300,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext con) {
                          return AlertDialog(
                            title: const Text('기능 준비중입니다'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      'Sign Up',
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext con) {
                          return AlertDialog(
                            title: const Text('기능 준비중입니다'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      'Password Reset',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
