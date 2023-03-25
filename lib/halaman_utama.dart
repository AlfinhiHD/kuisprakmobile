import 'package:flutter/material.dart';

import 'halaman_detail.dart';
import 'pokemon_data.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pokedex'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: listPokemon.length,
          itemBuilder: (context, index) {
            final PokemonData place = listPokemon[index];
            return Card(
             child: Column(
               children: [
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(
                         builder: (context) => HalamanDetail(place: place),
                        ),
                     );
                   },
                   child: Column(
                     children: [
                       Image(
                         image: NetworkImage(place.image),
                         width: 90.0,
                       ),
                       SizedBox(
                           height: 20.0
                       ),
                       Column(
                         children: [
                           Text(
                               place.name,
                               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                           ),
                           SizedBox(
                               height: 10.0
                           ),
                         ],
                       )
                     ],
                   )
                 )
               ],
             ),
            );
          },
        ),
      ),
    );
  }
}
