import 'package:flutter/material.dart';
import 'dart:async';
import 'package:araci_plus/pages/Terceira_Pagina.dart';



class segundaPagina extends StatefulWidget {
  const segundaPagina({super.key});

  @override
  State<segundaPagina> createState() => _segundaPaginaState();
}

class _segundaPaginaState extends State<segundaPagina> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4)).whenComplete(() {
      Navigator.push(context, MaterialPageRoute(builder:(context)=> terceiraPagina(),),);

      //setState(() {
      //opacityLevel = 1.0;
      // });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  expandedHeight: 200.0,

                  floating: false,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/regia_araci.png",
                        fit: BoxFit.contain,
                        height: 32,
                      ),
                      Text("ARACI.lab", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
                    ],
                  ),
                   background:Image.asset("assets/images/regia_araci.png", fit: BoxFit.cover,),
                  // colocar background
                )
                )
              ];
            },
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Text(
                      "Carregando publicações",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
            )));
  }
}
