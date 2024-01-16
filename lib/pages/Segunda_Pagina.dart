import 'package:flutter/material.dart';
import 'package:araci_plus/pages/Item1.dart';
import 'package:araci_plus/pages/Item2.dart';
import 'package:araci_plus/pages/Item3.dart';
import 'package:araci_plus/pages/Item4.dart';
import 'package:araci_plus/pages/Item5.dart';





enum MenuItem { item1, item2, item3, item4, item5 }



class segundaPagina extends StatefulWidget {
  const segundaPagina({super.key});

  @override
  State<segundaPagina> createState() => _segundaPaginaState();
}

class _segundaPaginaState extends State<segundaPagina> {
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
                  //forceElevated: innerBoxIsScrolled,
                  actions: [
                    PopupMenuButton <MenuItem>(
                        onSelected: (value){
                          if (value == MenuItem.item1){
                            // clicou item 1  Vai para a página ITEM 1 !!!
                            Navigator.of (context).push(MaterialPageRoute(builder:(context) => const Item1(),));
                          } else if (value == MenuItem.item2){
                            // clicou item 2 Vai para a página ITEM 2 !!!
                            Navigator.of (context).push(MaterialPageRoute(builder:(context) => const Item2(),));
                          } else if (value == MenuItem.item3){
                            // clicou item 3 Vai para a página ITEM 3 !!!
                            Navigator.of (context).push(MaterialPageRoute(builder:(context) => const Item3(),));
                          } else if (value == MenuItem.item4){
                            // clicou item 4 Vai para a página ITEM 4 !!!
                            Navigator.of (context).push(MaterialPageRoute(builder:(context) => const Item4(),));
                          } else if (value == MenuItem.item5){
                            // clicou item 5 Vai para a página ITEM 5 !!!
                            Navigator.of (context).push(MaterialPageRoute(builder:(context) => const Item5(),));
                          }
                        },
                        itemBuilder:(context)=> [
                          PopupMenuItem (value: MenuItem.item1, child: Text('Sobre'),),
                          PopupMenuItem(value: MenuItem.item2, child: Text('Equipe'),), PopupMenuItem(value: MenuItem.item3, child: Text('Configurações'),),
                          PopupMenuItem(value: MenuItem.item4, child: Text('Entrar'),),
                          PopupMenuItem(value: MenuItem.item5, child: Text('Rever Introdução'),),
                        ])
                  ],
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
