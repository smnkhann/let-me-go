import 'package:flutter/material.dart';
import '../widgets/custom_switch.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: ListView(
          children: [
            for (int i = 1; i <= 25; i++)
              CustomSwitchButton(
                title: 'Part $i',
              ),
          ],
        ),
      ),
    );
  }
}
