import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  // ignore: non_constant_identifier_names
  ShowMyAlert(BuildContext context){
    showDialog(
      context: context, 
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text("Arturo Titulo del AlertDialog"),
          backgroundColor: Colors.white,
          elevation: 50.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                "https://cms-assets.tutsplus.com/cdn-cgi/image/width=360/uploads/users/523/posts/32694/final_image/tutorial-preview-large.png",
                height: 90.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Text(
                "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.",
                style: GoogleFonts.poppins(
                  color: Colors.black.withOpacity(0.8),
                ),
              )
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          actions: [
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text("Aceptar"),
            ),
            const Text("boton"),
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text("Cerrar"),
            )
          ],
        );
      }
    );
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.orange,
          ),
          onPressed: (){
            ShowMyAlert(context);
          },
          child: const Text("Boton de alerta"),
        ),
      ),
    );
  }
}