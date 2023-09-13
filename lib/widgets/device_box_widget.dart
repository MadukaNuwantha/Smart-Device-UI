// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeviceBoxWidget extends StatelessWidget {
  final String deviceName;
  final String iconPath;
  final bool powerStatus;
  void Function(bool)? onChanged;
  DeviceBoxWidget({
    super.key,
    required this.deviceName,
    required this.iconPath,
    required this.powerStatus,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: powerStatus ? Colors.grey.shade900 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //   Icon image
            Image.asset(
              iconPath,
              height: 65,
              color: powerStatus ? Colors.white : Colors.black,
            ),
            //   Device name + switch
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      deviceName,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: powerStatus ? Colors.white : Colors.black,
                          ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: CupertinoSwitch(
                    value: powerStatus,
                    onChanged: onChanged,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
