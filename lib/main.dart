import 'package:flutter/material.dart';

import 'image_list.dart';

void main() => runApp(PokemonScroller());

class PokemonScroller extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Pokemon Scroller @sumofmybooks'),
          backgroundColor: Colors.white24,
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: PScroller(),
          ),
        ),
      ),
    );
  }
}

class PScroller extends StatefulWidget {
  const PScroller({Key? key}) : super(key: key);

  @override
  _PScrollerState createState() => _PScrollerState();
}

class _PScrollerState extends State<PScroller> {

  PokemonImages imageList = PokemonImages();

  @override
  Widget build(BuildContext context) {
    int i = 100;
    return Container(
      child:
      ListWheelScrollView(
            itemExtent: 100,
            children: imageList.getPokemonList(),
            offAxisFraction: 0.0
          )
    );
  }
}
// imageList.getImage(100),