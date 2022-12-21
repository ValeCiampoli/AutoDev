import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoVeichle extends StatelessWidget {
  final String? info;
  final IconData? icon;
  final String iconSvg;
  final String? value;
  const InfoVeichle({super.key, required this.info, required this.icon, this.value, required this.iconSvg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              iconSvg.contains(".svg")
              ? SvgPicture.asset(iconSvg, width: 27,)
              : Icon(icon, size: 27,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  info ?? "",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ],
          ),
          Text(value ?? "empty")
        ],
      ),
    );
  }
}
