import 'package:flutter/material.dart';
import 'package:smartdeviceui/widgets/device_box_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double horizontalPadding = 40.0;
  double verticalPadding = 25.0;
  // List of smart devices
  List smartDeviceList = [
    //   [Device Name, Device Icon Path, Power Status]
    ['Smart Light', 'assets/light-bulb.png', false],
    ['Smart Ac', 'assets/air-conditioner.png', false],
    ['Smart TV', 'assets/smart-tv.png', false],
    ['Smart Fan', 'assets/fan.png', false],
  ];

  // Power switch change method
  void powerSwitchChanged(bool value, int index) {
    setState(() {
      smartDeviceList[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom appbar
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: verticalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/menu.png',
                    height: 45,
                    color: Colors.grey.shade800,
                  ),
                  Icon(
                    Icons.person,
                    size: 45,
                    color: Colors.grey.shade800,
                  ),
                ],
              ),
            ),
            // Welcome message
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Home,',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Text(
                    'TigrisBeast',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Divider(
                thickness: 1,
                color: Colors.grey.shade400,
              ),
            ),
            const SizedBox(height: 25.0),
            //   Smart devices grid
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                'Smart Devices',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Expanded(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: smartDeviceList.length,
                padding: const EdgeInsets.all(25.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) {
                  return DeviceBoxWidget(
                    deviceName: smartDeviceList[index][0],
                    iconPath: smartDeviceList[index][1],
                    powerStatus: smartDeviceList[index][2],
                    onChanged: (value) => powerSwitchChanged(value, index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
