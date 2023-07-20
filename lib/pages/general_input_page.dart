import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class GeneralInputPage extends StatelessWidget {
  const GeneralInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("General-InputPage SIIIII"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const  EdgeInsets.all(8),
            child: Column(
              children: [
                TextField(
                  maxLines: 1,
                  maxLength: 20,
                  textAlign: TextAlign.start,
                  cursorColor: Colors.purple,
                  style: const TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                    label: const Text("Correo Electronico"),
                    hintText: "shantal0192@gmail.com",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black.withOpacity(0.35),
                      fontSize: 16,
                    ),
                    icon: const Icon(Icons.email),
                    prefixIcon: const Icon(Icons.alternate_email),
                    suffix: const Icon(
                      Icons.email_outlined,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  onChanged: (String value){
                    print(value);
                  },
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Buscar producto",
                    prefixIcon: Icon(Icons.search),
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.redAccent,
                        width: 4,
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purpleAccent,
                        width: 4,
                      )
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 4,
                      )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 12,
                        offset: const Offset(4, 4),
                      ),
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Buscar producto....",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      suffixIcon: Container(
                        margin: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.pink,
                              offset: Offset(4, 4),
                              blurRadius: 7,
                            )
                          ],
                        ),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      )
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}