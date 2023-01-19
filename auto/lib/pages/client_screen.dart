import 'package:flutter/material.dart';

class ClientScreen extends StatefulWidget {
  const ClientScreen({super.key});

  @override
  State<ClientScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ClientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: GestureDetector(child: Container(width: 100, height: 100, color: Colors.amber,),
      onTap: () {Navigator.of(context).pop();
                 },),),
    );
  }
}