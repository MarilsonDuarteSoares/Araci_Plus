import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'package:araci_plus/pages/Segunda_Pagina.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 8)).whenComplete(() {
      Navigator.push(context, MaterialPageRoute(builder:(context)=> segundaPagina(),),);
      //setState(() {
        //opacityLevel = 1.0;
     // });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text('Araci.lab', style: TextStyle(
            fontSize: 25, fontFamily: 'Raleway', fontWeight: FontWeight.bold,),)
      ),

      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFFC335FF),
                    Color(0xFF59FF4D)
                  ],
                )
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                "assets/images/AraciLabLogo.png",
                alignment: Alignment.center,
              ),
              padding: EdgeInsets.all(100),
            ),
          ),
          Positioned(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 92.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(
                      "assets/images/LogoUFF.svg", width: 150, height: 80),
                ),
              )
          ),
          Positioned(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, bottom: 18.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: SvgPicture.asset(
                      "assets/images/PPGCINE_Logo_Vertical.svg", width: 40,
                      height: 40),
                ),
              )
          ),
          Positioned(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                      "assets/images/logo_agir_sem_fundo.png", width: 80,
                      height: 80)
              )
          ),
          Positioned(
              child: Padding(
                padding: const EdgeInsets.only(right: 4.0, bottom: 24.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset(
                      "assets/images/CineVideoLogoClean.svg", width: 20,
                      height: 20),
                ),
              )
          ),
          ],
      ),
    );
  }
}
