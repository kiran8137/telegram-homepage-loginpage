import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telegram_main/chatpage.dart';

import 'loginpage.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 30, 102, 161),
        title: Text('Telegram'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              signout(context);
            },
            icon: Icon(Icons.search),
          ),
          // showDialog(
          //   context: context,
          //   builder: (BuildContext context) => AlertDialog(
          //     title: const Text('AlertDialog Title'),
          //     content: const Text('AlertDialog description'),
          //     actions: <Widget>[
          //       TextButton(
          //         onPressed: () => Navigator.pop(context, 'Cancel'),
          //         child: const Text('Cancel'),
          //       ),
          //       TextButton(
          //         onPressed: () => Navigator.pop(context, 'OK'),
          //         child: const Text('OK'),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
      

       body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index){
          //for(int i=index;i<names.length;){
            if(index%2==1){
             return ListTile(
            
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return chatpage();
              }),
              );
            },
            title:
             Text(names[index]),
            
            leading:CircleAvatar(
               child: Image.asset('assets/user.png'),
            )  
          );
          }else{
            return ListTile(
            
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return chatpage();
              }),
              );
            },
            title:
             Text(names[index]),
            
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                color: Colors.black,
                child:  Image.asset ('assets/user.png',
              width: 50,
              height: 50,
             
              ),
              )
            ),
          );

          }
         // }
         
              
              
              
               
        },
        
          ),
          
        
        
         
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _logoutdialog(context);
          },
        child: Icon(Icons.logout),
        backgroundColor: Color.fromARGB(255, 30, 102, 161),
      ),
      //  floatingActionButton: IconButton(

      //   onPressed: (){},
      //   icon:Icon(Icons.logout),

      //    ),
    );
  }

  void _logoutdialog(BuildContext context){
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Are you sure want to logout'),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text('No')
            ),
             TextButton(onPressed: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                return loginpage();
              }
              ),
              );
            }, child: Text('Yes')
            ),
          ],
        );
        
      },
      );
    
  }
  


   
  signout(BuildContext ctx) async{
    final _sharedPrefs = await SharedPreferences.getInstance();
     await _sharedPrefs.clear();
      
    Navigator.of(ctx).pushReplacement(// pushreplacmnet
        MaterialPageRoute(builder: (ctx1) => loginpage()));
     //Navigator.pushNamedAndRemoveUntil(context, "login", (route) => false);
  }
}

List<String> names=[
  'sanooj',
  'akil',
  'pranav',
  'saravanan',
  'hari',
  'suresh',
  'kiran',
  'ajay',
  'sumesh',
  'ajay',
  'sanooj',
  'akil',
  'pranav',
  'saravanan',
  'hari',
  'suresh',
  'kiran',
  'ajay',
  'sumesh',
  'ajay',
  'sanooj',
  'akil',
  'pranav',
  'saravanan',
  'hari',
  'suresh',
  'kiran',
  'ajay',
  'sumesh',
  'ajay',

];

