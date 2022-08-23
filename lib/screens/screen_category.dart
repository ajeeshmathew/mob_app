import 'package:flutter/material.dart';

class Screencategory extends StatelessWidget {
  const Screencategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text('12 Jan'),
          title: Text('100000'),
          subtitle: Text('travel'),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemCount: 0,
    );
  }
}
