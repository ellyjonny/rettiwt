import 'package:flutter/material.dart';

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
      leading: ProfileImage(),
      title: NameSection(firstname: firstname, username: username),
      subtitle: FeedContentWidget(feedcontent: feedcontent),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key key,
    // @required this.imageurl,
  }) : super(key: key);

  // final imageurl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 25.0,
      // backgroundImage: imageurl,
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
    return Text('$feedcontent', overflow: TextOverflow.fade);
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
