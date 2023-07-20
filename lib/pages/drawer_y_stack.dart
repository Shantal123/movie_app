import 'package:flutter/material.dart';
import 'package:semana11/pages/avatar_page.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerAndStackPage extends StatefulWidget {
  const DrawerAndStackPage({super.key});

  @override
  State<DrawerAndStackPage> createState() => _DrawerAndStackPageState();
}

class _DrawerAndStackPageState extends State<DrawerAndStackPage> {
  final GlobalKey<ScaffoldState> _scafoldkey = GlobalKey<ScaffoldState>();

  bool isInvisible = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffbf5ff),
        key: _scafoldkey,
        drawer: Drawer(
          elevation: 20,
          child: Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.pinkAccent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.pexels.com/photos/1486974/pexels-photo-1486974.jpeg"
                    )
                  )
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpge"
                        ),
                      ),
                      const Text(
                        "Jackeline Lázaro Ramírez",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18
                        ),
                      ),
                      Text(
                        "Colaborador",
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AvatarPage())
                  );
                },
                leading: const Icon(
                  Icons.person
                ),
                title: const Text(
                  "Avatar Page"
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AvatarPage())
                  );
                },
                leading: const Icon(
                  Icons.warning
                ),
                title: const Text(
                  "Alert 1"
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AvatarPage())
                  );
                },
                leading: const Icon(
                  Icons.warning
                ),
                title: const Text(
                  "Alert 2"
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AvatarPage())
                  );
                },
                leading: const Icon(
                  Icons.edit
                ),
                title: const Text(
                  "Inputs"
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              child: IconButton(
                onPressed: ()=> _scafoldkey.currentState?.openDrawer(),
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xff944db7),
                  size: 30,
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: -150,
                  right: -150,
                  child: MyCircleWidget(
                    colores: const [
                      Color(0xffD74287),
                      Color(0xffE99189),
                    ],
                    radius: 400
                  ),
                ),
                Positioned(
                  top: 80,
                  right: 30,
                  child: MyCircleWidget(
                    colores: const [
                      Color(0xff9370ec),
                      Color(0xff0c7544),
                    ],
                    radius: 50
                  ),
                ),
                Positioned(
                  top: -150,
                  right: -100,
                  child: MyCircleWidget(
                    colores: const [
                      Color(0xff9370ec),
                      Color(0xff0c7544),
                    ],
                    radius: 300
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 180,
                      child: const Text(
                        "Create Your Count",
                        style: TextStyle(
                          color: Color(0xff362274),
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const TextField(
                      style: TextStyle(
                        color: Color(0xff945fc5),
                      ),
                      cursorColor: Color(0xff7766ad),
                      decoration: InputDecoration(
                        hintText: "Email addres",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xff7c6cb0)
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color(0xff72629b),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff9730ec),
                            width: 1.4,
                          )
                        )
                      ),
                    ),
                    TextField(
                      style: const TextStyle(
                        color: Color(0xff945fc5),
                      ),
                      cursorColor: const Color(0xff7766ad),
                      obscureText: isInvisible,
                      decoration: InputDecoration(
                        hintText: "password",
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Color(0xff7c6cb0),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color(0xff72629b),
                        ),
                        suffixIcon: IconButton(
                          icon: isInvisible
                          ? const Icon(
                            Icons.visibility_off,
                            color: Color(0xff72629b),
                          ):
                          const Icon(
                            Icons.visibility,
                            color: Color(0xff72629b),
                          ),
                          onPressed: (){
                            isInvisible = ! isInvisible;
                            setState(() {
                              
                            });
                          },
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff9730ec),
                            width: 1.4,
                          )
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: const Offset(4, 4),
                            blurRadius: 10,
                          ),
                        ]
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  // const MyCircleWidget({super.key});

  double radius;
  List<Color> colores;
  MyCircleWidget({
    super.key, 
    required this.radius,
    required this.colores,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colores,
        ),
        boxShadow: [
          BoxShadow(
            color: colores[0].withOpacity(0.7),
            blurRadius: 12,
            offset: const Offset(4, 4)
          )
        ]
      ),
    );
  }
}