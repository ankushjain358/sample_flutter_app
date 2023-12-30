import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: key,
      backgroundColor: Theme.of(context).colorScheme.primary,
      leading: const Padding(
        padding: EdgeInsets.all(10.0),
        child: CircleAvatar(
          radius: 50.0, // Adjust the radius as needed
          backgroundImage: NetworkImage('https://placekitten.com/150/150'),
        ),
      ),
      title: Container(
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: const TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              hintText: 'Search',
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white),
        ),
      ),
      actions: [
        IconButton(
          color: Colors.white,
          icon: const Icon(Icons.message),
          onPressed: () {
            // Add logic for the message button
            print('Message button pressed');
          },
        ),
      ],
    );
  }
}
