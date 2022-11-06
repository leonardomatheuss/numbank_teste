import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:numbank_tutorial/pages/home/widgets/item_menu.dart';

class Menuapp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const Menuapp({super.key, required this.top, required this.showMenu});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(duration: Duration(milliseconds: 200),
      opacity: showMenu ? 1 : 0,
        child: Container(
          //color: Colors.red,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Column(children: <Widget> [
            Image.network('https://webmobtuts.com/wp-content/uploads/2019/02/QR_code_for_mobile_English_Wikipedia.svg_.png',
            height: 110, color: Colors.white, 
            ),
            Text.rich(TextSpan(
              text:'Banco',children: [
                      TextSpan(
                          text: '1998 - Nu Pagamentos S.A',
                          style: TextStyle(fontWeight: FontWeight.bold)),
        
              
          ]
          ),
          style: TextStyle(fontSize: 12),
               ),SizedBox(height: 5,),
               Text.rich(TextSpan(
              text:'Agência',children: [
                      TextSpan(
                          text: '00001',
                          style: TextStyle(fontWeight: FontWeight.bold)),
        
              
          ]
          ),
          style: TextStyle(fontSize: 12),
               ), SizedBox(height: 5,),
               Text.rich(TextSpan(
              text:'Conta',children: [
                      TextSpan(
                          text: '31071998-24',
                          style: TextStyle(fontWeight: FontWeight.bold)),
        
              
          ]
          ), 
          style: TextStyle(fontSize: 12),
               ), 
                  SizedBox(height: 10,),

               SingleChildScrollView(
                child:Column(
                   children: <Widget> [
                ItemMenu( icon: Icons.info_outline, text: 'Me ajuda'),
                ItemMenu( icon: Icons.person_outline, text: 'Pefil'),
                ItemMenu( icon: Icons.info_outline, text: 'Configurar conta'),
                ItemMenu( icon: Icons.info_outline, text: 'Configurar Cartão'),
                

               
               ],
                

               )
               )
          ],
          ),
        ),
      ),
    );
  }
}
