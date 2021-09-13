import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  @override
  createState() => _HomepageState();
}

class _HomepageState extends State {

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title:Image.asset('assets/Twitter_Logo_Blue.png', fit: BoxFit.cover,scale: 0.1,),
          backgroundColor: Color(0xFFCCCCCC),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.menu,
              color: Color(0xFF37B1CC),
              size: 30,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                color: Color(0xFF37B1CC),
                size: 30,
              ),
            )
          ],
        ),
        body: Container(child: Column(
          children: [Image(image: AssetImage('assets/man.JPG'))],
        )));
  }
}
