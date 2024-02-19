import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido(),

        ],
      ),
    );
  }
}
class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[
            Colors.blue.shade300,
            Colors.blue,
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft
           )
      ),
    );
  }
}
class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            'Bienvenido a tu cuenta',
            style:TextStyle(
              color: Colors.white,
              fontSize: 10,
              letterSpacing: 1.5,
            ),
          ),
          Datos(),
        ],
      ),
    );
  }
}
class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Correo',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 5,),
          //
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'micorrero@micorreo.com'
            ),   
          ),
          const SizedBox(height: 5,),
          const Text(
            'Contraseña',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          //Espaciado
          const SizedBox(height: 5,),
          TextFormField(
            //Pone la contraseña
            obscureText: true,
            //Decoracion del widget
            decoration:  InputDecoration(
              //borde del imput
              border: const OutlineInputBorder(),
              //Texto de ayuda 
              hintText: 'Contraseña',
              suffixIcon: IconButton(
                //ojito de la contttraseña
                 icon: const Icon(Icons.remove_red_eye_outlined),
                 onPressed: () => {},
                 )
            ),   
          ),
        ],
      ),
    );
  }
}