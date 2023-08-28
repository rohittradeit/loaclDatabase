import 'package:flutter/material.dart';
import 'package:get/get.dart';

InkWell buildSizeOption(String label, bool isSelected, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: Get.height * 0.05,
      width: Get.width * 0.25,
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white.withOpacity(.2),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: isSelected ? Colors.orange : Colors.black),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.orange : Colors.white.withOpacity(.8),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

Widget buildIconContainer(IconData icon, String text) {
  return Container(
    height: Get.height * 0.07,
    width: Get.width * 0.15,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: Colors.orange,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white.withOpacity(.6),
            ),
          ),
        ],
      ),
    ),
  );
}