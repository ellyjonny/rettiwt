import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedsWidget extends StatelessWidget {
  final String username;
  final String firstname;
  final dynamic feedcontent;
  final imageurl;

  FeedsWidget(
      {@required this.username,
      @required this.firstname,
      @required this.imageurl,
      @required this.feedcontent});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProfileImage(imageurl: imageurl),
      title: NameSection(firstname: firstname, username: username),
      subtitle: FeedContentWidget(feedcontent: feedcontent),
      onLongPress: () {},
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key key,
    @required this.imageurl,
  }) : super(key: key);

  final imageurl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 25.0,
      backgroundImage: AssetImage('$imageurl'),
    );
  }
}

class FeedContentWidget extends StatelessWidget {
  const FeedContentWidget({
    Key key,
    @required this.feedcontent,
  }) : super(key: key);

  final String feedcontent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(alignment: Alignment.topLeft,
          child: Text('$feedcontent', overflow: TextOverflow.fade,textAlign: TextAlign.start,)),
        SizedBox(
          height: MediaQuery.of(context).size.height / 64,
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.comment,
              size: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 6,
            ),
            Icon(
              FontAwesomeIcons.heart,
              size: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 6,
            ),
            Icon(
              FontAwesomeIcons.random,
              size: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 6,
            ),
            Icon(
              FontAwesomeIcons.share,
              size: 15,
            ),
          ],
        )
      ],
    );
  }
}

class NameSection extends StatelessWidget {
  const NameSection({
    Key key,
    @required this.firstname,
    @required this.username,
  }) : super(key: key);

  final String firstname;
  final String username;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$firstname  ',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.blueGrey),
        children: <TextSpan>[
          TextSpan(
            text: '@$username',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
