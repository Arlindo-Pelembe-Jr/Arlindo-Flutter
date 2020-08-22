
import 'package:flutter/material.dart';

import 'pages/pagina2.dart';


void main () {
  runApp(
    MaterialApp(
     title: 'Biblia + Estudo',
     initialRoute: '/',
     routes: {
       '/'                   :  (context) => Principal(),
       '/capitulos'          :  (context) => Capitulos(),
       '/estudoBiblico'      :  (context) => Estudos(),
      //  '/post'               :  (context) => Post(),
      '/post/TextEdit'       :  (context) => EstudoTexto(),
      //  '/post/ImageDetail'   :  (context) => ImageDetail(),
     },
)
);
}

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar( 
        title: Text('Biblia + Estudo'),
        
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Praise Lord'),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              ),
              ListTile(
              title: Text('Estudo Biblico'),
              onTap: () {
                 Navigator.pushNamed(context, '/estudoBiblico');                
              },
            ),
            ListTile(
              title: Text('Biblia'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Favoritos'),
              
            ),

          ],
        ),
      ),
      body: _livros(),
    );
  }

  Widget _livros(){
    return InkWell(
       child: ListView(
              children: <Widget>[
          ListTile(
            title: Text('GENESIS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
            onTap: (){
              Navigator.pushNamed(context, '/capitulos');              
            },
          ),
          Divider(),
          ListTile(
            title: Text('EXODO',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('LEVITICO',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('NUMEROS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('DEUTERONOMIO',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('JOSUE',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('JUIZES',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('RUTTE',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('I SAMUEL',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('II SAMUEL',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('I REIS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('II REIS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('I CRONICAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('II CRONICAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('ESDRAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('NEEMIAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('ESTER',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('JOB',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('SALMOS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('PROVERBIOS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('ECLESIASTES',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('CANTARES',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('ISAIAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('JEREMIAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('LAMENTACOES',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('EZEQUIEL',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('DANIEL',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('OSEIAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('JOEL',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('AMOS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('OBADIAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('JONAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('MIQUEIAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('NAUM',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('HABACUQUE',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('SOFONIAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('AGEU',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('ZACARIAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('MALAQUIAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('MATEUS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('MARCOS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('LUCAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('JOAO',
            style: TextStyle(
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('ATOS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('ROMANOS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('I CORINTIOS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('II CORINTIOS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('GALATAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('EFESIOS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('FILIPENSES',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('COLOSSENSES',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('I TESSALONICENSES',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('II TESSALONICENSES',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('TIMOTEO',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('TITO',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('FILEMON',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('HEBREUS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('TIAGO'
            ,
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('I PEDRO',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('II PEDRO'
            ,
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('I JOAO',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('II JOAO'
            ,
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('III JOAO'
            ,
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('JUDAS',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Divider(),
          ListTile(
            title: Text('APOCALIPSE',
            style: TextStyle(
              
              fontSize: 19.0,
              fontStyle: FontStyle.italic,
            ),),
            onTap: (){

            },
          ),

              ],
              
              ),

      // onTap: () {
      //   Scaffold.of(context).showSnackBar(SnackBar(
      //     content: Text('Tapped'),
      //   ));
      // },
    );

  }


}

class Capitulos extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('Capitulos')),
        body: GridView.count(
      crossAxisCount: 4,
      children: List.generate(100, (index) {
        return Center(
          child: Text('$index',
          style: Theme.of(context).textTheme.headline5,
          ),
          
        );
      }),
    ),
       
    );

  }
}