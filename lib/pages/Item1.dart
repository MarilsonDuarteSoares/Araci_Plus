import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'dart:async';
import 'package:url_launcher/link.dart';


class Item1 extends StatefulWidget {
  const Item1({super.key});

  @override
  State<Item1> createState() => _Item1State();




}

class _Item1State extends State<Item1> {


  Future<void> _launchLink(String url) async {

    if (await canLaunchUrlString (url)){
      await launchUrlString(url);
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Sobre o APP'), centerTitle: true,),

        body: SingleChildScrollView(
          child: new ListBody(
              children: <Widget>[
          Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
              "assets/images/AraciLabLogo.png", height: 105, width:60,),
        ),
                new ListTile(
                  leading: new Icon(Icons.info),
                  title: const Text('Versão do Banco de Dados'),
                 subtitle: new Text('Em desenvolvimento - falar com o Marcos' ), //_.projectDbversion),  Preciso conversar com o Marcos !!
                ),

                new Container(
                  height: 10.0,
                ),

                new ListTile(
                  leading: new Icon(Icons.info),
                  title: const Text('Rodando em'),
                  subtitle: new Text('Preciso falar com o Marcos!'), //_.platformVersion),  Preciso conversar com o Marcos !!
                ),

                new Divider(
                  height: 20.0,
                ),
                new ListTile(
                  leading: new Icon(Icons.info),
                  title: const Text('Número da Versão'),
                  subtitle: new Text('Preciso falar com o Marcos!'), //_.projectVersion), Preciso conversar com o Marcos !!
                ),

                new Divider(
                  height: 20.0,
                ),
                new ListTile(
                  leading: new Icon(Icons.info),
                  title: const Text('Código da Versão'),
                  subtitle: new Text('Preciso falar com o Marcos!'),  //_.projectCode),  Preciso conversar com o Marcos !!
                ),

                Divider(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'Suporte',
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),


                GestureDetector(
                  child: ListTile(
                    leading: Icon(Icons.mail, color: Colors.green[300]),
                    title: Text("Envie seu feedback"),
                  ),

                 //onTap: () => _launchLink('mailto:marilsonduarte@id.uff.br'), //_.sendMail,   Preciso conversar com o Marcos !!


                ),


                Divider(
                  height: 20.0,
                ),
                GestureDetector(
                  child: ListTile(
                    leading: Icon(Icons.help_center, color: Colors.green[300]),
                    title: Text("Manual de uso do APP"),
                  ),

                  onTap: () => _launchLink('http://globo.com'),    // _.openHelpUrl,   Preciso conversar com o Marcos !!

                ),




      ]
          )



        ),

    );
  }
}
