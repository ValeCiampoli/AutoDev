import 'package:auto/widgets/consuption_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/auto_model.dart';
import '../widgets/equipment_list.dart';
import '../widgets/information_list.dart';

class AutoDetailScreen extends StatefulWidget {
  final Auto auto;

  const AutoDetailScreen({super.key, required this.auto});
  static const routeName = 'auto-detail-screen.dart';

  @override
  State<AutoDetailScreen> createState() => _AutoDetailScreenState();
}

class _AutoDetailScreenState extends State<AutoDetailScreen> {
  bool isExpanded = false;
  List<Widget> item = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:   Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(onPressed: () {},
        child: SvgPicture.asset("lib/assets/images/chat.svg", color: Colors.white,),
          ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Image.asset(
                  widget.auto.image ?? "lib/assets/images/placeholder.jpg",
                  fit: BoxFit.contain,
                )),
            Padding(
              padding: const EdgeInsets.only(
                  top: 14.0, bottom: 5, left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width - 40,
                      child: Text(
                        "${widget.auto.constructor} ${widget.auto.model}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 40,
                      child:
                          Text(widget.auto.description ?? "descrption is empty",
                              maxLines: 1,
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                overflow: TextOverflow.ellipsis,
                              )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Divider(color: Colors.blue, thickness: 2),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Prezzo",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 40,
                            child: Text(
                              "${widget.auto.price ?? "non disponibile"}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 40,
                            child: Text(
                                widget.auto.miniDescription ??
                                    "descrption is empty",
                                maxLines: 1,
                                style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  overflow: TextOverflow.ellipsis,
                                )),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: Divider(color: Colors.blue, thickness: 2),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            color:Colors.blue),
                          child: Padding(
                            padding: const EdgeInsets.only(left:10.0, right: 17),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                 Text("Contatta Concessionario", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
                                 Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 16,)
                              ],
                            ),
                          ),
                        ),
                        InfoVeichleCard(
                          auto: widget.auto,
                        ),
                        EquipmentVeichleCard(
                          auto: widget.auto,
                        ),
                        ConsumptionList(auto: widget.auto,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}

