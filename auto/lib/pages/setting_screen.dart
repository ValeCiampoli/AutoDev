import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});
    static const routeName = 'setting-screen.dart';

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}
bool isActive= true;
class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector( 
              onTap: () {},
              child:  const Padding( padding: EdgeInsets.all(25.0),
              child: Text("Informazioni account", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
            ),), 
             const Divider(thickness: 2, color: Color.fromARGB(255, 172, 171, 171),),
            GestureDetector( 
              onTap: () {},
              child:  const Padding( padding:  EdgeInsets.all(25.0),
              child: Text("Cambia lingua", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
            ),), 
             const Divider(thickness: 2, color: Color.fromARGB(255, 172, 171, 171),),
            GestureDetector( 
            onTap: () {},
            child: Padding( padding: const EdgeInsets.only(left:25.0, right: 25, top: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 const Text("Notifiche", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                 Switch.adaptive(value: isActive, onChanged: (value) => setState(() => isActive = value),
                    activeColor: const Color.fromARGB(255, 76, 172, 251), 
                    activeTrackColor:const Color.fromARGB(255, 65, 81, 96),
                    inactiveThumbColor: const Color.fromARGB(255, 183, 181, 181), 
                    inactiveTrackColor: const Color.fromARGB(255, 107, 106, 106),
                  )
              ],),
          ),), 
             const Divider(thickness: 2, color: Color.fromARGB(255, 172, 171, 171),),
          GestureDetector( 
            onTap: () {},
            child: const Padding( padding: EdgeInsets.all(25.0),
            child: Text("Assistenza", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
          ),), 
             const Divider(thickness: 2, color: Color.fromARGB(255, 172, 171, 171),),
          GestureDetector( 
            onTap: () {},
            child:  const Padding( padding: EdgeInsets.all(25.0),
            child: Text("Privacy", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
          ),), 
             const Divider(thickness: 2, color: Color.fromARGB(255, 172, 171, 171),),
        ]),
      ),
    );
  }
}