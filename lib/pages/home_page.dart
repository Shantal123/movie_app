import 'package:flutter/material.dart';
import 'package:semana11/pages/alert_page.dart';
import 'package:semana11/pages/drawer_y_stack.dart';
import 'package:semana11/pages/general_input_page.dart';
import 'package:semana11/pages/input_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:semana11/pages/avatar_page.dart';

import 'alert_page2.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key?key});
 @override
 Widget build(BuildContext context) {
   return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(
                      4.0, 
                      4.0,
                      ),
                      blurRadius: 12.0,
                  )
                ],
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://images.pexels.com/photos/2177482/pexels-photo-2177482.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    )
                )
              ),
            ),
            const SizedBox(
              height:10,
            ),
            Text(
              "Flutter components",
              style: GoogleFonts.oregano(
                fontSize:22.0,
                fontWeight:FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 160, 
              child: Divider(
                thickness: 0.5,
              ),
            ),
            ItemComponentWidget(title:"Avatar", toPage:const AvatarPage()),
            ItemComponentWidget(title:"Alert", toPage:const AlertPage()),
            ItemComponentWidget(title:"Alert2", toPage:const AlertPage2()),
            ItemComponentWidget(title:"Inputs", toPage:const InputPage()),
            ItemComponentWidget(title:"Drawer y Stack", toPage:const DrawerAndStackPage()),
        ]
        ),
      )
      ),
      backgroundColor:Colors.white70,
   );
 } 
}

class ItemComponentWidget extends StatelessWidget{
  String title;
  Widget toPage;
  ItemComponentWidget({super.key, 
    required this.title,
    required this.toPage,
  });
  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(4.0, 4.0),
            blurRadius: 12.0,
          )
        ]
      ),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> toPage));
        },
        leading: const Icon(
          Icons.check_circle_outline,
          color: Color(0XFF636B7C),
        ),
        title: Text(
          title,
        ),
        subtitle: Text("Ir a detalle de $title"),
      ),
    );
  }
}
