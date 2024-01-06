import 'package:flutter/material.dart';

class BookmarksScreenWidget extends StatefulWidget {
  const BookmarksScreenWidget({super.key});

  @override
  State<BookmarksScreenWidget> createState() => _BookmarksScreenWidgetState();
}

class _BookmarksScreenWidgetState extends State<BookmarksScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Text("Bookmarks", style: Theme.of(context).textTheme.titleLarge);
  }
}