import 'package:flutter/material.dart';

class EquipmentVeichle extends StatelessWidget {
  final String? description;
 
  const EquipmentVeichle({super.key, required this.description, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(30))),),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              description ?? "",
              style: const TextStyle(
                  fontWeight: FontWeight.normal, fontSize: 16),
            ),
          ),
          
        ],
      ),
    );
  }
}
