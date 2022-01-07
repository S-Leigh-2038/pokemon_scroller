
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PokemonImages {

  List<Widget> pokemons = [];
  PokemonImages() {
    for (int i = 1; i < 150; i++) {
      pokemons.add(
        ListTile (
          leading: Image(
          image: AssetImage('images/$i.png'),
            height: 100,
            width: 100,
            fit: BoxFit.fill,
          ),
        ),
      );
    }
  }

  List<Widget> getPokemonList() {
    print('pokemon list is ${pokemons.length}');
    return pokemons;
  }
}