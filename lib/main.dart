import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false, // Evita que la pantalla se ajuste cuando aparece el teclado
        body: Container(
          color: const Color(0xFF1E1C2A), // Color del fondo de toda la página #1E1C2A
          padding: const EdgeInsets.symmetric(horizontal: 10), // Agregar padding horizontal de 5
          child: SingleChildScrollView( // Hace que el contenido sea desplazable
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 0),
                Padding(
                  padding: EdgeInsets.only(left: 70.0),
                  child: Container(
                    width: 50,
                    height: 80,
                    transform: Matrix4.skewX(-0.3),
                    color: Color(0xFF00B661), // Set the desired color for the parallelogram
                  ),
                ),
                const SizedBox(height: 10),
                const CircleAvatar (
                  backgroundColor: Color(0xff1A312F),
                  radius: 30,
                  child: Icon(
                    Icons.house_outlined,
                    size: 45,
                    color: Color(0xFF00B661),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Let\'s log you in',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white), // Color del texto en blanco
                ),
                Text('Welcome back you ve been missed!', style: TextStyle(fontSize: 18, color: Colors.white)), // Color del texto en blanco
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.googlePlusG,
                          color: Colors.white,
                        ),
                        label: Text('Google'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFEC4235), // Color #1878F3 para Facebook
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),
                        label: Text('Facebook'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF1878F3), // Color #EC4235 para Google
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                TextField(
                  style: TextStyle(color: Colors.white), // Color del texto en blanco
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.white), // Color del hint text en blanco
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Color del borde cuando el campo está enfocado
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff25283B)), // Color del borde cuando el campo no está enfocado
                    ),
                    filled: true,
                    fillColor: Color(0xff25283B),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  style: TextStyle(color: Colors.white),
                  // Color del texto en blanco
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: Colors.white), // Color del hint text en blanco
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Color del borde cuando el campo está enfocado
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff25283B)), // Color del borde cuando el campo no está enfocado
                    ),
                    filled: true,
                    fillColor: Color(0xff25283B),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  obscureText: true, // Oculta el texto del campo de contraseña
                  style: TextStyle(color: Colors.white), // Color del texto en blanco
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white), // Color del hint text en blanco
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Color del borde cuando el campo está enfocado
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff25283B)), // Color del borde cuando el campo no está enfocado
                    ),
                    filled: true,
                    fillColor: Color(0xff25283B),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign Up'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green, // Cambiar el color del botón a verde
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15), // Ajustar el espacio entre el botón y los textos inferiores
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Don\'t Have an Account?', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 10), // Espacio entre los textos
                    Text('Sign In', style: TextStyle(color: Colors.blue)), // Color del texto en blanco
                  ],
                ),
                SizedBox(height: 200), // Ajustar el espacio entre los textos inferiores y el final del contenedor
              ],
            ),
          ),
        ),
      ),
    );
  }
}