import 'package:flutter/cupertino.dart';

class CarView extends StatefulWidget {
  const CarView({super.key});

  @override
  State<CarView> createState() => _CarViewState();
}

class _CarViewState extends State<CarView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('car_view'),
    );
  }
}
