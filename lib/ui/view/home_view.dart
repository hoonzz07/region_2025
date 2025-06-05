import 'package:flutter/material.dart';
import 'package:region_2025/ui/widget/home_widget.dart';

import '../widget/list_view_widget.dart';

  class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [.8, 1],
                colors: [Colors.black54, Colors.white10],
              ),
            ),
            child: SizedBox(
              height: 530,
              child: Image.asset('assets/images/cloud2.png'),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 470,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Text(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                  ),
                                  'A8',
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    size: 32,
                                    color: Colors.black,
                                    Icons.chevron_right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.doorbell_outlined),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.settings),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    size: 32,
                                    color: Colors.black,
                                    Icons.sunny,
                                  ),
                                ),
                                Text(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  '28.1°C',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.local_gas_station),
                                ),
                                Text(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  '484km',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.location_city),
                                ),
                                Text(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  '경상북도 구미시',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 50)),
                      SizedBox(
                        width: 400,
                        child: Image.asset('assets/images/a8.png'),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeWidget(icon: Icons.power_settings_new, text: '시동'),
                  HomeWidget(icon: Icons.lock_outline, text: '도어'),
                  HomeWidget(icon: Icons.window_outlined, text: '창문'),
                  HomeWidget(icon: Icons.warning_amber, text: '비상등'),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  'Brown 님 안녕하세요?                                       ',
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: 420,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListViewWidget(icons:Icons.car_crash, texts:'Vehicle control'),
                    ListViewWidget(icons:Icons.cloud, texts:'Climate'),
                    ListViewWidget(icons:Icons.location_disabled, texts:' Location'),
                    ListViewWidget(icons:Icons.key, texts:'Valet Mode'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
