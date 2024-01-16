import 'package:flutter/material.dart';
import 'package:araci_plus/pages/Item2.dart';
import 'package:araci_plus/pages/Item3.dart';
import 'package:araci_plus/pages/Item4.dart';
import 'package:araci_plus/pages/Item5.dart';


enum MenuItem { item1, item2, item3, item4, item5 }


class Item1 extends StatefulWidget {
  const Item1({super.key});

  @override
  State<Item1> createState() => _Item1State();
}

class _Item1State extends State<Item1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                    //automaticallyImplyLeading: false,
                    pinned: true,
                    expandedHeight: 185.0,

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

                            PopupMenuItem (value: MenuItem.item1, child: Text('Sobre'),

                            ),

                            PopupMenuItem(value: MenuItem.item2, child: Text('Equipe'),

                            ),

                            PopupMenuItem(value: MenuItem.item3, child: Text('Configurações'),

                            ),

                            PopupMenuItem(value: MenuItem.item4, child: Text('Entrar'),

                            ),

                            PopupMenuItem(value: MenuItem.item5, child: Text('Rever Introdução'),

                            ),


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
                            height: 30,
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







            body: WillPopScope(
                onWillPop: () async {
                  return false;
                },
                child: Scaffold(

                    body: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text("ITEM 1!",style: TextStyle(fontSize: 35), ),

                            SizedBox( height: 25, ),

                            Text("Araci.lab é um braço da Araci Incubadora. ",style: TextStyle(fontSize: 14), ),


                            SizedBox(height: 15, ),
                          ]),
                    )))));
  }
}
