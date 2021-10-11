import 'package:flutter/material.dart';
import 'package:rettiwt/components/switch_toggle_theme.dart';
import 'package:rettiwt/components/text_theme_toggle.dart';
import 'package:rettiwt/dummydata/dummy.dart';
import 'package:rettiwt/global/global_widgets/feeds_widget.dart';

class Homepage extends StatefulWidget {
  @override
  createState() => _HomepageState();
}

class _HomepageState extends State {
  final _dummyData = DummyData();

  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/Twitter_Logo_Blue.png',
          fit: BoxFit.cover,
          scale: 7.0,
        ),
        centerTitle: true,
        // backgroundColor: Color(0xFFCCCCCC),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.2),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.menu,
            color: Color(0xFF37B1CC),
            size: 30,
          ),
        ),
        actions: [
          TextThemeToggle(),
          SwitchThemeToggle(),
        ],
      ),

      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: _dummyData.dummy.length,
        itemBuilder: (context, index) {
          return FeedsWidget(
            feedcontent: _dummyData.dummy[index].feedcontent,
            firstname: _dummyData.dummy[index].firstname,
            imageurl: _dummyData.dummy[index].imageurl,
            username: _dummyData.dummy[index].username,
          );
        },
      ),
    );
  }
}
