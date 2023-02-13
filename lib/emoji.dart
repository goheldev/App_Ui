import 'package:flutter/material.dart';

class EmojiFace extends StatelessWidget {
  final String icon;

  const EmojiFace({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(12),
        ),
    padding: EdgeInsets.all(12),
    child: Text(icon,style: TextStyle(fontSize: 30),),
    );
  }
}
