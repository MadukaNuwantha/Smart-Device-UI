import 'package:flutter/material.dart';
import 'package:smartdeviceui/screens/home_screen.dart';
import 'package:smartdeviceui/theme_data.dart';

void main() {
  runApp(
    const SmartDeviceHub(),
  );
}

class SmartDeviceHub extends StatelessWidget {
  const SmartDeviceHub({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Devices',
      theme: lightMode,
      home: const HomeScreen(),
    );
  }
}
