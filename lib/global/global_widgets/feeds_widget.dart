import 'package:flutter/material.dart';

class FeedsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Row(
                    children: [Text(''), SizedBox(width: 10), Text('data')],
                  ),
                  SizedBox(height: 10),
                  Text('data')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
