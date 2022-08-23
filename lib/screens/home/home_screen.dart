//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:mob_app/screens/home/transaction_screen.dart';
import 'package:mob_app/screens/home/widgets.dart';
import 'package:mob_app/screens/screen_category.dart';

class screenhome extends StatelessWidget {
  const screenhome({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(1);

  final _pages = const [screentransaction(), Screencategory()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money Management App'),
        centerTitle: true,
      ),
      bottomNavigationBar: const Bottomnav(),
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (BuildContext context, int updatedIndex, _) {
          return _pages[updatedIndex];
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(selectedIndexNotifier.value);
          if (selectedIndexNotifier.value == 0) {
            print('Add amount');
          } else {
            print('Add category');
          }

          // print('Add something');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
