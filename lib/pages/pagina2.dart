import 'package:flutter/material.dart';
import 'package:coder/models/data_estudo_biblico.dart';
import 'package:coder/utils/database_helper.dart';



class Estudos extends StatefulWidget {
  @override
  _EstudosState createState() => _EstudosState();
}

class _EstudosState extends State<Estudos> {

// Estudo _estudo = Estudo();
List<Estudo> _estudos = [];
DatabaseHelper _dbHelper;

@override 
void initState(){
  super.initState();
  setState(() {
    _dbHelper = DatabaseHelper.instance; 
  });
  _refreshEstudo();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudos Biblico'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.library_add), 
            onPressed: (){
             Navigator.pushNamed(context, '/post/TextEdit');

            },
            ),
        ],
      ),
      body:_list(),
    );
  }

  _list() => ListView.builder(
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index){
        return Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.library_books,
              color:Colors.blueGrey,
              size: 40.5,
              ),
             title: Text(_estudos[index].titulo.toUpperCase(),
             style: TextStyle(
               color: Colors.black87,
               fontWeight: FontWeight.bold,
             ),
             ),
            ),
            Divider(
              height: 5.0,
            ),
            ListTile(
              leading: Icon(Icons.library_books,
              color:Colors.blueGrey,
              size: 40.5,
              ),
             title: Text('Arlindo',
             style: TextStyle(
               color: Colors.black87,
               fontWeight: FontWeight.bold,
             ),
             ),
            ),
          ],
        );
      },
      itemCount: _estudos.length,
    );
    _refreshEstudo() async{
  List<Estudo> x = await _dbHelper.fetchEstudo();
  setState(() {
    _estudos = x;
  });
}
}

class EstudoTexto extends StatefulWidget {
  @override
  _EstudoTextoState createState() => _EstudoTextoState();
}

class _EstudoTextoState extends State<EstudoTexto> {
  Estudo _estudo = Estudo();
DatabaseHelper _dbHelper;
List<Estudo> _estudos = [];

@override 
void initState(){
  super.initState();
  setState(() {
    _dbHelper = DatabaseHelper.instance; 
  });
}
final _texKey = GlobalKey<FormFieldState>();
final _texKey2 = GlobalKey<FormFieldState>();

  final _controller = TextEditingController();
    final _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.cyan,
    title: Text('Adicionar Estudo'),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.book),
        onPressed: (){
          Navigator.pushNamed(context, '/');
        },
        ),
        PopupMenuButton(               
          itemBuilder: (BuildContext context){
            return [
              PopupMenuItem(
                child: Text('Home'),
                ),
              PopupMenuItem(child: Text('Estudo Biblico')),
              PopupMenuItem(child: Text('Definicoes')),
              
            ];
          },
        
        ),
    ],
  ),
  body: ListView(
      padding: EdgeInsets.all(9.0),
      children: <Widget>[ 
        TextField(
          key: _texKey,
          controller: _controller,
          maxLines: 3,
          decoration: InputDecoration(
            labelText: 'Titulo',
            hintText: 'A Parabola do Semeador'
            ),
          onSubmitted: (val) => setState( ( ) => this._estudo.titulo=val ),
          
        ),
        TextField(
          key: _texKey2,
          onSubmitted: (val) => setState( ( ) => this._estudo.texto=val ),
      controller: this._controller2,
      maxLines: 10,
      textCapitalization: TextCapitalization.none,
      decoration: InputDecoration(
        counterText: '${this._controller.text.split(' ').length} words',
        labelText: 'Desenvovimento',
        hintText: 'escreva algo...',
        // border: OutlineInputBorder(),
      ),
      // onChanged: (text) => setState(() {}),
      
    ),
    Container(
      margin: EdgeInsets.all(10.5),
      child:RaisedButton(
      
      child: Text('OK'),
      onPressed: () {
        Navigator.pushNamed(context, '/estudoBiblico');
       return _onOk();
        },
    ),
    ),
    
      ],
    ),
  );


  }

  _refreshEstudo() async{
  List<Estudo> x = await _dbHelper.fetchEstudo();
  setState(() {
    _estudos = x;
  });
}

  _onOk()async{
    var form = _texKey2.currentState;
    var form2= _texKey.currentState;
    if(form.validate() || form2.validate()){
      form.save();
      form2.save();
   if(_estudo.id==null) await _dbHelper.insertEstudo(_estudo);
   else
   await _dbHelper.updateEstudo(_estudo);
   _refreshEstudo();
   _resetTex();
    }
  }

  _resetTex(){
    setState(() {
      _texKey.currentState.reset();
      _texKey2.currentState.reset();
      _controller.clear();
      _controller2.clear();
      _estudo.id=null;
    });
  }
}

