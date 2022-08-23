import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mob_app/screens/home/home_screen.dart';

class Bottomnav extends StatelessWidget {
  const Bottomnav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: screenhome.selectedIndexNotifier,
      builder: (BuildContext context, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.blueGrey,
          currentIndex: updatedIndex,
          onTap: (newIndex) {
            screenhome.selectedIndexNotifier.value = newIndex;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Categories'),
          ],
        );
      },
    );
  }
}
