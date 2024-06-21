import 'package:flutter/material.dart';
import 'package:telegram_main/Homepage.dart';

class chatpage extends StatefulWidget{
  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
 @override
 Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 162, 239, 193),
    appBar: AppBar(
      
      backgroundColor:  Color.fromARGB(255, 30, 102, 161),
      
      title:Text("Sanooj"),

      
      
      leading: IconButton(
        
        onPressed:(){
          goback(context);
        },
        icon: Icon(Icons.arrow_back), 
        ),
        actions: [
          Icon(Icons.call),

          Icon(Icons.menu),
        ],
    ),

    // body: SafeArea(
    //   child: Stack(
    //     children: [
          
    //       Container(
    //         margin: EdgeInsets.only(top: 500,left: 20),
            
    //         height: 40,
    //         width: 100,
    //         color: Colors.white,
    //       ),
    //       Container(
    //         height: 40,
    //         width: 100,
    //         color: const Color.fromARGB(255, 200, 254, 201),
    //       )
    //     ],
    //     ),
    // ),

    body: Container(
      margin: EdgeInsets.only(top: 550),
      height: 70,
      
      
      padding: EdgeInsets.all(8.0),
      color: Colors.white,
      child: Row(

        children: [
          IconButton(
            icon: Icon(Icons.attach_file),
            onPressed: () {
               
            },
          ),
          Expanded(
            child: TextField(
               
              decoration: InputDecoration(
                hintText: "Type a message...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              
            },
          ),
        ],
),
    ),


  );
 }

 goback(BuildContext ctx){
  Navigator.of(context).pop( MaterialPageRoute(builder: (ctx1){
   return homepage();

  } 
  ),
  );
 }

}

