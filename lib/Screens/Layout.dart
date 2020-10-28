
import 'package:Haritkranti/Themes/style.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
        child: Column(
          children: [
            Text('Haritkranti', style: Theme.of(context).textTheme.headline2,),
             Text('Haritkranti 2', style:pageHeading ),
          ],
        ),
      ),
    );
  }
}
