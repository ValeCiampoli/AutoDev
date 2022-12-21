import 'package:auto/widgets/veichle_information_item.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../models/auto_model.dart';

class InfoVeichleCard extends StatelessWidget {
  final Auto auto;
  const InfoVeichleCard({super.key, required this.auto});
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        initialExpanded: true,
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
                          "Informazioni veicolo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      )),
                  collapsed: const SizedBox(),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InfoVeichle(
                        info: "Immatricolazione",
                        icon: Icons.calendar_today,
                        value: auto.yearProduction,
                        iconSvg: '',
                      ),
                      InfoVeichle(
                        info: "Chilometri",
                        value: auto.yearProduction,
                        iconSvg: 'lib/assets/images/road.svg',
                        icon: null,
                      ),
                      InfoVeichle(
                        info: "Alimentazione",
                        value: auto.supply,
                        iconSvg: 'lib/assets/images/drop.svg',
                        icon: null,
                      ),
                      InfoVeichle(
                        info: "Cambio",
                        value: auto.gearBox,
                        iconSvg: 'lib/assets/images/gearbox.svg',
                        icon: null,
                      ),
                      InfoVeichle(
                        info: "Cilindrata",
                        value: auto.cc,
                        iconSvg: 'lib/assets/images/engine.svg',
                        icon: null,
                      ),
                      InfoVeichle(
                        info: "Potenza",
                        value: auto.gearBox,
                        iconSvg: '',
                        icon: Icons.flash_on_sharp,
                      ),
                      InfoVeichle(
                        info: "Posti",
                        value: auto.seats.toString(),
                        iconSvg: 'lib/assets/images/seats.svg',
                        icon: null,
                      ),
                      InfoVeichle(
                        info: "Colore",
                        value: auto.color,
                        iconSvg: '',
                        icon: Icons.colorize_sharp,
                      ),
                    ],
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

