import 'package:auto/models/auto_model.dart';
import 'package:auto/pages/auto_detail_screen.dart';
import 'package:auto/widgets/auto_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = 'home-screen.dart';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Auto> autoList = [
    Auto(
        aid: "000",
        image: "lib/assets/images/a45.jpg",
        constructor: "Mercedes",
        model: "A45s",
        description:
            "Descrizione auto tipo anno, porte, motorizzazione e alimnetazions",
        isFavorite: false,
        equipmentList: [],
        consumptionList: []),
    Auto(
        aid: "001",
        constructor: "Audi",
        model: "A3",
        description: "35 TFSI",
        isFavorite: true,
        supply: "BENZINA",
        equipmentList: [
          "Airbag laterali",
          "Tettuccio panramico",
          "Airbag laterali",
          "Tettuccio panramico",
        ],
        consumptionList: []),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: autoList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AutoDetailScreen(
                                  auto: autoList[index],
                                )),
                      );
                    },
                    child: AutoCard(auto: autoList[index])),
              );
            },
          ),
        )
      ],
    );
  }
}
