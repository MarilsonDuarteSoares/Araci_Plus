import 'package:flutter/material.dart';
import 'package:araci_plus/pages/Item1.dart';
import 'package:araci_plus/pages/Item2.dart';
import 'package:araci_plus/pages/Item3.dart';
import 'package:araci_plus/pages/Item4.dart';
import 'package:araci_plus/pages/Item5.dart';





enum MenuItem { item1, item2, item3, item4, item5 }



class terceiraPagina extends StatefulWidget {
  const terceiraPagina({super.key});

  @override
  State<terceiraPagina> createState() => _terceiraPaginaState();
}

class _terceiraPaginaState extends State<terceiraPagina> {
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
                      background:Image.asset("assets/images/Inicio.png", fit: BoxFit.cover,),
                      // colocar background
                    )
                )
              ];
            },
            body: Center(
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //CircularProgressIndicator(),
                    SizedBox(
                      height: 45,
                    ),
                    Text("O Araci.lab",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 28)),
                    SizedBox(
                      height: 25,
                    ),

                    Text("O aplicativo ARACI.lab é um repositório de atividades direcionadas à formação profissional do estudante de Cinema e Audiovisual, bem como uma ponte para o mercado de trabalho interessado na contratação de estagiários e profissionais da área. O aplicativo está organizado em seções: workshops, cursos, palestras, ações das Ligas Acadêmicas discentes, projetos, podcasts e o banco de talentos. Este último é voltado para o público externo que busca perfis de profissionais ou estagiários para trabalhar em produções audiovisuais. ",style: TextStyle(fontSize: 14), ),



                  ]),
            ),







        ));
  }
}
