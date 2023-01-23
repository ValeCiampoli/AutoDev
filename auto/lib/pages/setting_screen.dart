
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
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector( 
            onTap: () {},
          child: const Padding( padding: EdgeInsets.all(25.0),
            child: Text("Informazioni personali", style: TextStyle(fontSize: 20)),
          ),), 
           const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Colors.blue, thickness: 2),
                  ),
          GestureDetector( 
            onTap: () {},
          child: const Padding( padding: EdgeInsets.all(25.0),
            child: Text("Cambia lingua", style: TextStyle(fontSize: 20)),
          ),), 
           const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Colors.blue, thickness: 2),
                  ),
                  GestureDetector( 
          onTap: () {},
        child: Padding( padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               const Text("Notifiche", style: TextStyle(fontSize: 20)),
               Switch.adaptive(value: isActive, onChanged: (value) => setState(() => isActive = value),
               activeColor: Colors.blue, 
                activeTrackColor:const Color.fromARGB(255, 179, 177, 177), 
                inactiveThumbColor: Color.fromARGB(255, 52, 52, 52), 
                inactiveTrackColor: const Color.fromARGB(255, 179, 177, 177),
               )
            ],
          ),
        ),), 
           const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Colors.blue, thickness: 2),
                  ),
        GestureDetector( 
          onTap: () {},
        child: const Padding( padding: EdgeInsets.all(25.0),
          child: Text("Assistenza", style: TextStyle(fontSize: 20)),
        ),), 
           const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Colors.blue, thickness: 2),
                  ),
      ])
    );
  }
}