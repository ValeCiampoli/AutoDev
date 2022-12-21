import 'package:flutter/material.dart';
import 'drawer_list.dart';
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(width: 330,
    child: Container(color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Container(color: const Color.fromARGB(255, 239, 36, 22), 
        width: MediaQuery.of(context).size.width, 
        height: 250,
        child: Center(child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
              Padding(
               padding: EdgeInsets.only(top: 20, bottom: 20,), child: 
               CircleAvatar(
                backgroundColor: Colors.transparent,radius: 55, 
                backgroundImage: AssetImage("lib/assets/images/profile_placeholder.jpg",)),),
              Text("Valerio Ciampoli",style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis,),)
          ],
        ), ),
        ),
          const Flexible(child:  DrawerList()),
        ],),
    ),);
  }
}