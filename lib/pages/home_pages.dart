import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cont=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title:const Text("Contador"),
        
      ) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Brenda Jaramillo Alegria ", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text("Numero de clicks"),
            Text("$cont"),
            //mostrar varibles dentro del texto
          ],
        )
    ),
    floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
    floatingActionButton: _crearBotones(),
  );
  }
  Widget _crearBotones(){
    return Padding(
      padding:const EdgeInsets.symmetric(
      horizontal: 10
    ),
    child: Row(
      mainAxisAlignment:MainAxisAlignment.end,//pone los botones al final
      children: [
        //Incrementa
        FloatingActionButton(
          child:const Icon(Icons.add),
          //funcion de _sumar
          onPressed: () =>_sumar(),
          ),
          //hace espacios ente widgets
        const SizedBox(width: 11,),
        //Funcion restar 
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: ()=>_restar(),
        ),
        const SizedBox(width: 11,), //Esta linea hace espacios entre los widgets

        //Funcion restablecer a 0
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          onPressed: ()=>_restablecer(),
        ),
      ],
      ),
    );
  }
  //funciones de los botones
  void _sumar(){
    setState(() {
      cont++;
    }
    );
  }
  void _restar(){
    if(cont>0){
      setState(() {
      cont--;
    }
    );
    }
  }
  void _restablecer(){
    setState(() {
      cont=0;
    }
    );
  }
}