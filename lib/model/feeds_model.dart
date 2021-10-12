import 'package:flutter/cupertino.dart';

class FeedsModel {
  final String username;
  final String firstname;
  final dynamic feedcontent;
  final imageurl;
  final int id;

  FeedsModel(
      {@required this.username,
      @required this.firstname,
      @required this.imageurl,
      @required this.feedcontent,
      @required this.id});

  factory FeedsModel.fromjson(Map<String, dynamic> json) {
    return FeedsModel(
        username: json['username'],
        firstname: json['firstname'],
        imageurl: json["imageurl"],
        feedcontent: json["feedcontent"],
        id: json["id"]);
  }
}
