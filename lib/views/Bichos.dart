import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class Bichos extends StatefulWidget {
  const Bichos({Key? key}) : super(key: key);

  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  // static AudioCache player = AudioCache();
  AudioCache player = AudioCache(prefix: 'assets/audios/');

  _executar(String audio) async {
    await player.play(audio + ".mp3");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player.loadAll([
      "cao.mp3","gato.mp3","leao.mp3","macaco.mp3","ovelha.mp3","vaca.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {

    //Pegar largura e altura
    // double largura = MediaQuery.of(context).size.width;
    // double altura = MediaQuery.of(context).size.height;

    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
        children: [
          GestureDetector(
            onTap: (){
                _executar("cao");
            },
            child: Image.asset("assets/imagens/cao.png")
          ),
          GestureDetector(
              onTap: (){
                _executar("gato");
              },
              child: Image.asset("assets/imagens/gato.png")
          ),
          GestureDetector(
              onTap: (){
                _executar("leao");
              },
              child: Image.asset("assets/imagens/leao.png")
          ),
          GestureDetector(
              onTap: (){
                _executar("macaco");
              },
              child: Image.asset("assets/imagens/macaco.png")
          ),
          GestureDetector(
              onTap: (){
                _executar("ovelha");
              },
              child: Image.asset("assets/imagens/ovelha.png")
          ),
          GestureDetector(
              onTap: (){
                _executar("vaca");
              },
              child: Image.asset("assets/imagens/vaca.png")
          ),
        ],
    );
  }
}
