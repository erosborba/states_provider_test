import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:provider/provider.dart';
import 'package:states_provider_test/models/ui.dart';

import '../drawer_menu.dart';

const kAppTitle = 'State Management';
const kStateType = 'Provider';

class Home extends StatelessWidget {
  final String text = lorem(paragraphs: 3, words: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppTitle),
        backgroundColor: Colors.teal,
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Consumer<UI>(
          builder: (context, ui, child) {
            return RichText(
              text: TextSpan(
                text: text,
                style: TextStyle(fontSize: ui.fontSize, color: Colors.black),
              ),
            );
          },
        ),
      ),
    );
  }
}