import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Jokenpo",
            style: GoogleFonts.alata(),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          width: double.infinity,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.red, width: 3)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text("Escolha do App",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.alata(fontSize: 18)),
              ),
              GestureDetector(
                onTap: () {
                  print("Imagem clicada");
                },
                child: Image.asset(
                  "images/padrao.png",
                  height: 90,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text("Escolha uma opção abaixo",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.alata(fontSize: 18)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/pedra.png",
                    height: 90,
                  ),
                  Image.asset(
                    "images/papel.png",
                    height: 90,
                  ),
                  Image.asset(
                    "images/tesoura.png",
                    height: 90,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
