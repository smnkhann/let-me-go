import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../backend/isar_services.dart';

class CustomSwitchButton extends StatefulWidget {
  const CustomSwitchButton({super.key, required this.title});
  final String title;

  @override
  State<CustomSwitchButton> createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  @override
  Widget build(BuildContext context) {
    final isarController = Get.put(IsarController());

    GetStorage box = GetStorage();
    var status = box.read(widget.title);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        status != null && status == true
            ? const Text(
                'Show',
                style: TextStyle(color: Colors.black),
              )
            : const Text(
                'Hide',
                style: TextStyle(color: Colors.grey),
              ),
        Switch(
          value: status != null && status == true ? true : false,
          onChanged: (val) {
            if (val == true) {
              box.write(widget.title, true);
            } else {
              box.write(widget.title, false);
            }
            setState(() {});
            //this will make sure that the data gets update when the user navigate back
            isarController.getBookParts();
          },
        )
      ],
    );
  }
}
