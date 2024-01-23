import 'package:flutter/material.dart';




class Item2 extends StatefulWidget {
  const Item2({super.key});

  @override
  State<Item2> createState() => _Item2State();
}

class _Item2State extends State<Item2> {
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

                    floating: false,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Equipe Araci.lab", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
                        ],
                      ),
                      // background:Image.asset("assets/images/regia_araci.png", fit: BoxFit.cover,),
                      // colocar background
                    )
                )
              ];
            },
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("ITEM 2!",style: TextStyle(fontSize: 35), ),
                    SizedBox( height: 25, ),
                    Text("Araci.lab é um braço da Araci Incubadora. ",style: TextStyle(fontSize: 14), ),
                    SizedBox(height: 15, ),
                  ]),
            )
        )
    );
  }
}
