import 'package:flutter/cupertino.dart';

class FeedsModel {
  final String username;
  final String firstname;
  final String feedcontent;
  final String imageurl;

  FeedsModel(
      {@required this.username,
      @required this.firstname,
      @required this.imageurl,
      @required this.feedcontent});

  factory FeedsModel.fromjson(Map<String, dynamic> json) {
    return FeedsModel(
        username: json['username'],
        firstname:json[ 'firstname'],
        imageurl: json["imageurl"],
        feedcontent: json["feedcontent"]);
  }
}
