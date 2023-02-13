import 'package:flutter/material.dart';
import 'second.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/sea.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Expanded(
                child: Container(),
                flex: 2,
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Planning your",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "next journey with us!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 36),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return Secondpage();
                            },
                          ));
                        },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.black,
                        ),
                        child: Text(
                            "Explore Now!",
                            style: TextStyle(fontSize: 27, color: Colors.white),
                          ),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}