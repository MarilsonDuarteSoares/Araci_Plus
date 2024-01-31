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
                        children: const [
                           Text("Equipe Araci.lab", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
                        ],
                      ),
                    )
                ),


            // Esse é o Primeiro card - Referente a Professora Elianne Ivo Barroso.


            SliverToBoxAdapter(


              child: Padding(padding: const EdgeInsets.all(20.0),

                child: ClipRRect(borderRadius: BorderRadius.circular(20),

                  child: Container( height: 500, color: Colors.lightGreen.withOpacity(0.23),
                      child: Center(
                        child: Column(
                          children: const [
                            SizedBox (height:28),
                            CircleAvatar(foregroundImage: AssetImage('assets/images/team/ElianneProfilePic.jpg'),radius: 100, ),
                            SizedBox (height:10),
                            Text("Elianne Ivo Barroso", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),),

                            SizedBox (height:20),

                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(padding: EdgeInsets.only(right: 25,top: 10, bottom: 3),
                                  child: Text( '   Professora Associada',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),),),

                                Padding(padding: EdgeInsets.only(right: 15,top: 3, bottom: 3),
                                  child: Text( '   Departamento de Cinema e Vídeo.',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),),

                              ],

                            ),

                            SizedBox (height:20),

                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(padding: EdgeInsets.only(right: 15,top: 10, bottom: 3),
                                  child: Text( '   Coordenadora da Araci',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),),),

                                Padding(padding: EdgeInsets.only(top: 3, bottom: 3),
                                  child: Text( '   Incubadora de Projetos de Cinema e Audiovisual. PPGCINE/PPGCMC da UFRJ.',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),),),

                              ],

                            ),

                          ],

                        ),


                      )


                  ),

                ),

              ),

            ),

            // Esse é o Segundo card - Referente a Professora Tereza Cristina N. Machado .


            SliverToBoxAdapter(

              child: Padding(padding: const EdgeInsets.all(20.0),

                child: ClipRRect(borderRadius: BorderRadius.circular(20),

                  child: Container( height: 500, color: Colors.lightGreen.withOpacity(0.23),
                      child: Center(
                        child: Column(
                          children: const [
                            SizedBox (height:25),
                            CircleAvatar(foregroundImage: AssetImage('assets/images/team/TerezaProfilePic.jpg'),radius: 100, ),
                            SizedBox (height:10),
                            Text("Tereza Cristina N. Machado", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 19,)),

                            SizedBox (height:10),

                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(padding: EdgeInsets.only(right: 20,top: 10, bottom: 3),
                                  child: Text( 'Coordenadora Administrativa do',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 17),),),

                                Padding(padding: EdgeInsets.only(top: 3, bottom: 3),
                                  child: Text( 'Laboratorio Integrado de Artes (LIA-IACS).',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),),

                              ],

                            ),

                            SizedBox (height:3),

                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(padding: EdgeInsets.only(right: 15,top: 7, bottom: 3),
                                  child: Text( '   Doutora em Educação',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 17),),),

                              ],

                            ),

                            SizedBox (height:3),

                            // Doutora em Educação.

                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(padding: EdgeInsets.only(right: 15,top: 10, bottom: 3),
                                  child: Text( '   Superintendente do',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),),),

                                Padding(padding: EdgeInsets.only(top: 4, bottom: 3),
                                  child: Text( '  Centro de Artes UFF (2006-2014)',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),),),

                                Padding(padding: EdgeInsets.only(top: 29, bottom: 3),
                                  child: Text( '   Idealizadora do Aplicativo Araci.Lab',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),),),

                              ],

                            ),


                          ],

                        ),


                      )


                  ),

                ),

              ),



            ),


            // Esse é o terceiro card - Referente aos alunos que idealizaram o aplicativo.


            SliverToBoxAdapter(


              child: Padding(padding: const EdgeInsets.all(20.0),

                child: ClipRRect(borderRadius: BorderRadius.circular(20),

                  child: Container( height: 500, color: Colors.lightGreen.withOpacity(0.23),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox (height:28),
                            //Container( height: 220, width:300,
                            Image.asset("assets/images/regia_araci.png", height: 180, width:170,),
                            SizedBox (height:25),
                            Text("Alunos", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25),),

                            SizedBox (height:32),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Banco de talentos : ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),

                              ],
                            ),

                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(padding: EdgeInsets.only(right: 36,top: 10, bottom: 3),
                                  child: Text( '   Camila Garritano;'),),

                                Padding(padding: EdgeInsets.only(right: 10,top: 3, bottom: 3),
                                  child: Text( '   Maria Eduarda D\'Elia.'),),


                              ],

                            ),


                            SizedBox (height:25),



                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Idealização do Aplicativo :', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),

                              ],
                            ),

                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(padding: EdgeInsets.only(right: 60,top: 10, bottom: 3),
                                  child: Text( '   Darcy Tenório;'),),

                                Padding(padding: EdgeInsets.only(top: 3, bottom: 3),
                                  child: Text( '   Maria Laura Rodrigues.'),),


                              ],

                            )



                          ],

                        ),



                      )




                  ),

                ),


              ),

            ),


            // Esse é o quarto card - Referente ao Time do STI que desenvolveu o aplicativo .

            SliverToBoxAdapter(


              child: Padding(padding: const EdgeInsets.all(20.0),

                child: ClipRRect(borderRadius: BorderRadius.circular(20),

                  child: Container( height: 500, color: Colors.lightGreen.withOpacity(0.23),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox (height:10),
                          //Container( height: 220, width:300,
                          Image.asset("assets/images/team/STI-Mobile.png", height: 180, width:170,),
                          SizedBox (height:10),
                          Text("STI Mobile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25),),
                          SizedBox (height:12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                               Text('Gestão de Projetos :', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                               Text( 'Cosme Faria Corrêa.'),
                              ],
                           ),

                          SizedBox (height:30),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Desenvolvimento : ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),

                              SizedBox (height:2),

                              ],
                          ),

                          Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(padding: EdgeInsets.only(right: 1,top: 10, bottom: 3),
                                child: Text( 'Ronald Maymone Sampaio;'),),
                              SizedBox (height:2),

                              Padding(padding: EdgeInsets.only(right: 1,top: 3, bottom: 3),
                                child: Text( 'Paulo Rodrigo L. Figueiredo;'),),
                              SizedBox (height:2),

                              Padding(padding: EdgeInsets.only(right: 30,top: 3, bottom: 3),
                                child: Text( 'Marilson Duarte Soares;'),),
                              SizedBox (height:2),

                              Padding(padding: EdgeInsets.only(right: 1,top: 3, bottom: 3),
                                child: Text( 'Marcos Fernando Ramos Machado.'),),

                            ],

                          ),

                          SizedBox (height:28),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Contribuição :', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),

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
