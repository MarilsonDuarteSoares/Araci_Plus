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
      //backgroundColor: Colors.lime ,
        body: CustomScrollView (
          slivers:[
                SliverAppBar(
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
                    )
                ),


            SliverToBoxAdapter(
              
             
              child: Padding(padding: const EdgeInsets.all(15.0),
                    
                    child: ClipRRect(borderRadius: BorderRadius.circular(20),

                      child: Container( height: 500, color: Colors.green,
                      ),
                    ),

            ),

            ),



            SliverToBoxAdapter(


              child: Padding(padding: const EdgeInsets.all(20.0),

                child: ClipRRect(borderRadius: BorderRadius.circular(20),

                  child: Container( height: 500, color: Colors.green,
                  ),
                ),

              ),

            ),


            SliverToBoxAdapter(


              child: Padding(padding: const EdgeInsets.all(20.0),

                child: ClipRRect(borderRadius: BorderRadius.circular(20),

                  child: Container( height: 500, color: Colors.green,
                  ),
                ),

              ),

            ),



            SliverToBoxAdapter(


              child: Padding(padding: const EdgeInsets.all(20.0),

                child: ClipRRect(borderRadius: BorderRadius.circular(20),

                  child: Container( height: 500, color: Colors.lightGreen.withOpacity(0.23),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox (height:15),
                          //Container( height: 220, width:300,
                          Image.asset("assets/images/team/STI-Mobile.png", height: 180, width:170,),
                          SizedBox (height:20),
                          Text("STI Mobile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25),),
                          SizedBox (height:16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Gestão de Projetos : ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                              Text( '  Cosme Faria Corrêa.'),
                              ],
                           ),

                          SizedBox (height:35),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Desenvolvimento : \n\n\n\n', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),

                              Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 Padding(padding: EdgeInsets.only(right: 44,top: 2, bottom: 3),
                                  child: Text( '1) Ronald Maymone Sampaio;'),),

                                  Padding(padding: EdgeInsets.only(right: 42,top: 2, bottom: 3),
                                    child: Text( '2) Paulo Rodrigo L. Figueiredo;'),),

                                  Padding(padding: EdgeInsets.only(right: 72,top: 2, bottom: 3),
                                    child: Text( '3) Marilson Duarte Soares;'),),

                                  Padding(padding: EdgeInsets.only(left: 2, right: 2,top: 2, bottom: 3),
                                    child: Text( '4) Marcos Fernando Ramos Machado.'),),

                                ],

                              )
                              ],
                          ),


                          SizedBox (height:25),



                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Contribuição : ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),

                              Text( ' Lucas de Castro Lopes.',),

                                ],

                              )



                        ],

                      ),



                    )




                ),

              ),


            ),

            ),







          ],

        )
    );
  }
}
