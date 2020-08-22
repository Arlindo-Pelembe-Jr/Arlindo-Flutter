class Estudo{
  static const tblEstudo  = 'estudos';
  static const colId      = 'id';
  static const colTitulo  = 'titulo';
  static const colTexto   = 'texto';


  Estudo({this.id,this.titulo,this.texto});
  
  Estudo.fromMap(Map<String,dynamic> map){
    id     = map[colId];
    titulo = map[colTitulo];
    texto  = map[colTexto];
  }


  int id;
  String titulo;
  String texto;

  Map<String,dynamic> toMap(){
    var map = <String,dynamic>{colTitulo: titulo, colTexto: texto};
    if(id != null) map[colId] = id;
    return map;
  }
}