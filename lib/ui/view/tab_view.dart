import 'package:flutter/material.dart';
import 'package:region_2025/ui/view/control_view.dart';
import 'package:region_2025/ui/view/home_view.dart';
import 'package:region_2025/ui/view/share_view.dart';
import 'package:region_2025/ui/view/status_view.dart';

class TabView extends StatefulWidget{
  const TabView({super.key});

  final bodyWidgets = const <Widget>[
    HomeView(),
    Control(),
    Status(),
    Share()
  ];

  @override
  State<StatefulWidget> createState() => TabViewState();
}

class TabViewState extends State<TabView>{
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose(); // PageController 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: _pageController,
          children: widget.bodyWidgets,
          onPageChanged: (selectedIndex) {
            _updateSelectIndex(selectedIndex);
          },
        ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        onTap: (selectedIndex) {
          _updateSelectIndex(selectedIndex, () {
            _pageController.animateToPage(
              selectedIndex,
              duration: const Duration(milliseconds: 250), // const 추가
              curve: Curves.easeInOut,
            );
          });
        },
        currentIndex: _selectedIndex,
        items: const [ // const 추가
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.control_camera_outlined),
            label: "control",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car_outlined),
            label: "Status",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: "Share",
          ),
        ],
      ),
    );
  }
  void _updateSelectIndex(final int selectIndex, [final VoidCallback? callback]) {
    setState(() {
      _selectedIndex = selectIndex;
      callback?.call();
    });
  }
}
