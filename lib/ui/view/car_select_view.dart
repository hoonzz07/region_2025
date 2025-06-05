import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:region_2025/ui/widget/header.dart';

class CarSelectView extends StatefulWidget {
  CarSelectView({super.key});

  final ImagePicker picker = ImagePicker();

  @override
  State<StatefulWidget> createState() => _CarSelectView();
}

class _CarSelectView extends State<CarSelectView> {
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
                  Image.asset('assets/images/front-car.webp'),
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
                        showModalBottomSheet(
                          context: context,
                          builder: (builder) {
                            return Container(
                              color: Colors.white,
                              height: 1200,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  spacing: 12,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('차량 등록하기'),
                                        Icon(Icons.remove),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: 400,
                                          height: 60,
                                          child: TextField(
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            decoration: InputDecoration(
                                              prefixIcon: Align(
                                                widthFactor: 1,
                                                heightFactor: 1,
                                                child: Icon(Icons.lock),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              hintText: '차량 이름',
                                              filled: true,
                                              fillColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 400,
                                          height: 60,
                                          child: TextField(
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            decoration: InputDecoration(
                                              prefixIcon: Align(
                                                widthFactor: 1,
                                                heightFactor: 1,
                                                child: Icon(Icons.lock),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              hintText: '차량 번호',
                                              filled: true,
                                              fillColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 400,
                                          height: 240,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                            ),
                                            onPressed: () {
                                              showModalBottomSheet(
                                                context: context,
                                                builder: (builder) {
                                                  return Container(
                                                    color: Colors.white,
                                                    width: 600,
                                                    height: 250,
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                top: 20,
                                                              ),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            widget.picker
                                                                .pickImage(
                                                                  source:
                                                                      ImageSource
                                                                          .gallery,
                                                                )
                                                                .then((file) {
                                                                  setState(() {
                                                                    image =
                                                                        file;
                                                                  });
                                                                });
                                                          },
                                                          child: Text(
                                                            '갤러리에서 사진추가',
                                                          ),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            widget.picker
                                                                .pickImage(
                                                                  source:
                                                                      ImageSource
                                                                          .camera,
                                                                )
                                                                .then((file) {
                                                                  setState(() {
                                                                    image =
                                                                        file;
                                                                  });
                                                                });
                                                          },
                                                          child: Text(
                                                            '카메라에서 사진추가',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Builder(
                                              builder: (context) {
                                                if (image != null) {
                                                  return Image.file(
                                                    File(image!.path),
                                                  );
                                                }

                                                return Icon(
                                                  color: Colors.black,
                                                  size: 53,
                                                  Icons.image,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Text(
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 19,
                                          ),
                                          '이미지를 선택해주세요',
                                        ),
                                        Text(
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 19,
                                          ),
                                          '갤러리 앱 또는 카메라를 이용하실 수 있습니다.',
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: Text('차량 등록 후 이용하기'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ).whenComplete(() => image);
                        setState(() {
                          image = null;
                        });
                      },
                      child: Text(
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        '차량 등록 후 이용하기',
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
