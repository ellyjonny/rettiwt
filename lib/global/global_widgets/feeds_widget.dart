import 'package:flutter/material.dart';

class FeedsWidget extends StatelessWidget {
  final String username;
  final String firstname;
  final String feedcontent;
  final imageurl;

  FeedsWidget(
      {@required this.username,
      @required this.firstname,
      @required this.imageurl,
      @required this.feedcontent});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width / 4,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height / 14,
                child: CircleAvatar(
                  backgroundImage: imageurl,
                  radius: 20,
                ),
              ),
            )
          ])),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.height * 0.25,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '$firstname',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Text('@$username', style: TextStyle(fontSize: 16))
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 64),
              Text(
                '$feedcontent',
                overflow: TextOverflow.fade,
              )
            ],
          ),
        ),
      )
    ]);
  }
}