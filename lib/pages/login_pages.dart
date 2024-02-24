import 'package:flutter/material.dart';
//ruta para la conexion con el archivo
import 'package:counter_texth/pages/rememberPass.dart';

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
          SizedBox(
            height:20,
            width:double.infinity,
          ),
          Datos(),
          SizedBox(height: 5,),
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
  bool showPass =true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(10),
        color:Colors.white,
      ),
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
          const SizedBox(height: 10,),
          //
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'micorrero@micorreo.com'
            ),   
          ),
          const SizedBox(
            height:20,
            width:double.infinity,
          ),
          const Text(
            'Contraseña',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          //Espaciado
          const SizedBox(height: 10,),
          TextFormField(
            //Pone la contraseña
            obscureText: showPass,
            //Decoracion del widget
            decoration:  InputDecoration(
              //borde del imput
              border: const OutlineInputBorder(),
              //Texto de ayuda 1
              hintText: 'Contraseñaaaa',
              suffixIcon: IconButton(
                //ojito de la contttraseña
                 icon: const Icon(Icons.remove_red_eye_outlined),
                 onPressed: () => {
                  setState(() {
                    showPass == true? showPass = true :showPass = false;
                  })
                 },
                 )
            ),   
          ),
          const SizedBox(
            height:20,
            width:double.infinity,
          ),
          const Remember(),
          const SizedBox(height: 30,),
          const Botones(),
          const SizedBox(height: 15,),
          const Aviso(),

        ],
        
      ),
    );
  }
}


class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: checked,
          onChanged: (value) => {
            setState(() =>
                // Verificación del checked
                checked == false ? checked = true : checked = false),
          },
        ),
        const Text(
          'Recordar Cuenta',
          style: TextStyle(fontSize: 12),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            // nueva pantalla 
            Navigator.push(
              context,
              MaterialPageRoute(
                //manda a llamar la pantalla 
                builder: (context) => rememberPassword(),
              ),
            );
          },
          child: const Text(
            'Olvido su Contraseña ?',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        SizedBox(
          //ocupa todo el espacio donde se encuentra
          width: double.infinity,
          height: 50,
          child:  ElevatedButton(
            onPressed: () => {},
                style: ButtonStyle(
                  //color del boton y estilo 
                  //usa propieda y un color 
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff142047))
                ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white
                ,)
                ),
            ),
            
          ),
          const SizedBox(
            height:10,
            width:double.infinity,
          ),
          const Text(
            'O entra con ',
            style:TextStyle(color:Colors.grey,)
          ),
          
          const SizedBox(
            height:15,
            width:double.infinity,
          ),

          SizedBox(
            width:double.infinity,
            height:50,
            child: OutlinedButton(
              onPressed: () => {} ,
              child: const Text(
                'Google',
                style: TextStyle(
                  color:Color(0xff142047),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
            ),
          ),

          const SizedBox(
            height:15,
            width:double.infinity,
          ),

          SizedBox(
            width:double.infinity,
            height:50,
            child: OutlinedButton(
              onPressed: () => {} ,
              child: const Text(
                'Facebook',
                style: TextStyle(
                  color:Color(0xff142047),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
            ),
          ),

        //SizedBox(),
        //Container()
      ],
    );
  }
}

class Aviso extends StatelessWidget {
  const Aviso({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos verticalmente
        children: [
          TextButton(
            onPressed: () => {},
            child: const Text(
              'Aviso de Privacidad',
              style: TextStyle(fontSize: 15,),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
