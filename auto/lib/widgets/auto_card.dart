import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/auto_model.dart';

class AutoCard extends StatefulWidget {
  final Auto auto;
  const AutoCard({
    Key? key,
    required this.auto,
  }) : super(key: key);

  @override
  State<AutoCard> createState() => _AutoCardState();
}

class _AutoCardState extends State<AutoCard> {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image.asset(widget.auto.image ?? "lib/assets/images/placeholder.jpg", fit: BoxFit.contain,)),
              Positioned(
                top: 2,
                right: 2,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.auto.isFavorite = !widget.auto.isFavorite;
                    });
                  },
                  child: Icon(
                    widget.auto.isFavorite 
                   ? Icons.favorite
                   : Icons.favorite_border, 
                   color: Colors.white,),
                )),
            ],
          ),
          Container(
            color: const Color.fromARGB(255, 219, 218, 218),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "lib/assets/images/road.svg",
                          width: 22,
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text("${widget.auto.km ?? "0.000"} km" ),
                        )
                      ],
                    ),
                  ),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.calendar_today, size: 22,),
                        Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text(widget.auto.yearProduction ?? "00/0000"),
                      )
                    ],
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right:20.0),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "lib/assets/images/drop.svg",
                          width: 22,
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text(widget.auto.supply ?? "supply"),
                        )
                      ],
                  ),
                   )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:14.0, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Text("${widget.auto.constructor} ${widget.auto.model}", style:  const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),
                Padding(
                  padding: const EdgeInsets.only(top:3.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Text(widget.auto.description ?? "descrption is empty", 
                    maxLines: 1,
                    style:  const TextStyle(fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis,)),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:8.0, vertical: 3),
            child: Divider(color: Colors.blue, thickness: 2),
          ),
               Padding(
            padding: const EdgeInsets.only(top:5.0, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Prezzo", style: TextStyle(fontSize: 16),),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Text("${widget.auto.price ?? "non disponibile"}", style:  const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)
                  ),
                Padding(
                  padding: const EdgeInsets.only(top:3.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Text(widget.auto.miniDescription ?? "descrption is empty", 
                    maxLines: 1,
                    style:  const TextStyle(fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis,)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
