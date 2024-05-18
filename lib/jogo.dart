import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _resultado = "Escolha uma opção abaixo.";
  var _imagemApp = AssetImage("images/padrao.png");

  void _opcaoSelecionada(String opcao) {
    const _PEDRA = 0;
    const _PAPEL = 1;
    const _TESOURA = 2;
    const _GANHOU = "Você ganhou!";
    const _PERDEU = "Você perdeu! Tente novamente.";
    const _EMPATE = "Empate, tente novamente.";

    int _escolhaDoApp = Random().nextInt(3);

    switch (_escolhaDoApp) {
      case _PEDRA:
        setState(() {
          _imagemApp = AssetImage("images/pedra.png");
        });
        switch (opcao) {
          case "pedra":
            setState(() {
              _resultado = _EMPATE;
            });
            break;

          case "papel":
            setState(() {
              _resultado = _GANHOU;
            });
            break;

          case "tesoura":
            setState(() {
              _resultado = _PERDEU;
            });
            break;
        }
        break;

      case _PAPEL:
        setState(() {
          _imagemApp = AssetImage("images/papel.png");
        });
        switch (opcao) {
          case "pedra":
            setState(() {
              _resultado = _PERDEU;
            });
            break;

          case "papel":
            setState(() {
              _resultado = _EMPATE;
            });
            break;

          case "tesoura":
            setState(() {
              _resultado = _GANHOU;
            });
            break;
        }
        break;

      case _TESOURA:
        setState(() {
          _imagemApp = AssetImage("images/tesoura.png");
        });
        switch (opcao) {
          case "pedra":
            setState(() {
              _resultado = _GANHOU;
            });
            break;

          case "papel":
            setState(() {
              _resultado = _PERDEU;
            });
            break;

          case "tesoura":
            setState(() {
              _resultado = _EMPATE;
            });
            break;
        }
        break;
    }
  }

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
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text("Escolha do App",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.alata(fontSize: 18)),
              ),
              Image(
                image: _imagemApp,
                height: 120,
              ),
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text(_resultado,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.alata(fontSize: 18)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _opcaoSelecionada("pedra"),
                    child: Image.asset(
                      "images/pedra.png",
                      height: 90,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _opcaoSelecionada("papel"),
                    child: Image.asset(
                      "images/papel.png",
                      height: 90,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _opcaoSelecionada("tesoura"),
                    child: Image.asset(
                      "images/tesoura.png",
                      height: 90,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
