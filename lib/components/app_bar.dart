import 'package:flutter/material.dart';

class AllAppBar {
  static secondaryAppBar(String title) {
    return AppBar(
      title: Text(title),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
