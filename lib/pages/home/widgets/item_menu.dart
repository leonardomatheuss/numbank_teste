
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenu({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7, color: Colors.white54),
          top: BorderSide(width: 0.7, color: Colors.white54),
        ),
      ), child: ElevatedButton ( 
        
        child:
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: <Widget> [
          Row( children: <Widget> [
            Icon(icon),
            SizedBox(width: 15,),
            Text(text, style:TextStyle(fontSize: 12), )
        ],

        ),
        Icon(Icons.chevron_right, size: 16,)
        
        ,]
        ),
        
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          
    primary: Colors.transparent,
    elevation: 0,  
         ),
      ),
        
        
    );
  }
}
