import 'package:flutter/material.dart';
import 'halaman_utama.dart';
import 'pokemon_data.dart';

// const snackBar1 = SnackBar(
//   content: Text('Berhasil Menambahkan Ke Favorite'),
// );
//
// const snackBar2 = SnackBar(
//   content: Text('Berhasil Menghapus Ke Favorite'),
// );

class HalamanDetail extends StatefulWidget {
  final PokemonData place;
  const HalamanDetail({Key? key, required this.place}) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(widget.place.name),
              backgroundColor: Colors.red,
              centerTitle: true,
              actions: [
                IconButton(
                  icon: new Icon(
                    widget.place.isFavorite == true? Icons.favorite : Icons.favorite_border,
                  ),
                onPressed: () {
                    setState(() {
                      widget.place.isFavorite == true ? widget.place.isFavorite = false : widget.place.isFavorite = true;
                    });
                },
                ),
              ],
            ),
            body: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image(
                image: NetworkImage(widget.place.image),
                  width: 200.0,
                ),
                SizedBox(
                height: 20.0
                ),
                Text(
                    widget.place.name,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 20.0
                ),
                Text(
                  "Type",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 20.0
                ),
                Text(
                  "[" + widget.place.type[0] + "]",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                    height: 20.0
                ),
                Text(
                  "Weakness",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 20.0
                ),
                Text(
                  "[" + widget.place.weakness[0] + "]",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                    height: 20.0
                ),
                Text(
                  "Previous Evolution",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 20.0
                ),
                Text(
                  "Previous",
                  // "[" + widget.place.prevEvolution[0] + "]",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                    height: 20.0
                ),
                Text(
                  "Next Evolution",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 20.0
                ),
                Text(
                  "Next",
                  // "[" + widget.place.nextEvolution[0] + "]",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                    height: 20.0
                ),
                ],
    ),
            )
    ));
  }
}
