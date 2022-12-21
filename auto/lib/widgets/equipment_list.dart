import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../models/auto_model.dart';
import 'equipment_information_item.dart';

class EquipmentVeichleCard extends StatelessWidget {
  final Auto auto;
  const EquipmentVeichleCard({super.key, required this.auto});
  @override
  Widget build(BuildContext context) {
    return   auto.equipmentList.isEmpty
        ? const SizedBox.shrink()
        : ExpandableNotifier(
        child: Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: const Padding(
                    padding: EdgeInsets.only(top:8.0, left: 5),
                    child: Text(
                      "Equipaggiamenti veicolo",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  )),
              collapsed: const SizedBox(),
              expanded: Container(
                constraints: const BoxConstraints(minHeight: 100, maxHeight: 270),
                child:  ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: auto.equipmentList.length,
                  itemBuilder: (context, index) {
                    return EquipmentVeichle(
                        description: auto.equipmentList[index]);
                  },
                ),
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
