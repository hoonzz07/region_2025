import 'package:flutter/material.dart';
import 'air_view.dart';
import 'car_view.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<StatefulWidget> createState() => StatusState();
}

class StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SizedBox(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(32),
                child: SizedBox(
                  width: 550,
                  height: 40,
                  child: Row(
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
                        child: Text(
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                          'Status',
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(size: 22, Icons.doorbell),
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
                ),
              ),
              Container(
                height: 1,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
              TabBar(
                  indicatorSize:  TabBarIndicatorSize.tab,
                  tabs: [Tab(child: Text('차량')), Tab(child: Text('공조'))]),
              Expanded(child: TabBarView(children: [CarView(), AirView()])),
            ],
          ),
        ),
      ),
    );
  }
}
