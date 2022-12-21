import 'package:flutter/material.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
            GestureDetector(
              child: const ListTile(leading: Icon(Icons.assignment_ind_sharp, color: Colors.white,size: 30,), 
              title: Text("CLIENTI", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),),
               onTap: () {},),
               const Divider(color: Colors.white,height: 20),
            GestureDetector(
              child: const ListTile(leading: Icon(Icons.airport_shuttle_rounded, color: Colors.white,size: 30,), 
              title: Text("AUTO NUOVE", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),),
              onTap: () {}),
              const Divider(color: Colors.white,height: 20),
            GestureDetector(
              child: const ListTile(leading: Icon(Icons.airport_shuttle_outlined, color: Colors.white,size: 30,), 
              title: Text("AUTO USATE", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),),
              onTap: () {}),
              const Divider(color: Colors.white,height: 20),
            GestureDetector(
              child: const ListTile(leading: Icon(Icons.account_balance_wallet_rounded, color: Colors.white,size: 30,), 
              title: Text("AUTO VENDUTE", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),),
              onTap: () {}),
              const Divider(color: Colors.white,height: 20),
               GestureDetector(
              child: const ListTile(leading: Icon(Icons.settings, color: Colors.white,size: 30,), 
              title: Text("IMPOSTAZIONI", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),),
              onTap: () {}),
              const Divider(color: Colors.white,height: 20),  
            GestureDetector(
              child: const ListTile(leading: Icon(Icons.login_outlined, color: Colors.white,size: 30,), 
              title: Text("LOGIN / LOGUT", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),),
              onTap: () {}),
              const Divider(color: Colors.white,height: 20),  
 ]),
    );   
  }
}