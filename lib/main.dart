import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Column(
        children:[ 
      const Expanded(
        flex: 1,
        child:Align(
          
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('00',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          
            ),
          
            
            ),
          )) 
      ),
       Expanded(

        flex: 1,
        child:Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('00',style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold
          
            ),
            ),
          ),
        ) 
      ),
      
          Expanded(
            flex: 4,
          child:  Container(
            color: Colors.amber,

            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(() { }, 'AC'),
                    button(() { }, '()'),
                    button(() { }, '%'),
                    button(() { }, '÷')
                    
                    ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(() { }, '7'),
                    button(() { }, '8'),
                    button(() { }, '9'),
                    button(() { }, 'x')
                    
                    ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(() { }, '4'),
                    button(() { }, '5'),
                    button(() { }, '6'),
                    button(() { }, '-')
                    
                    ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(() { }, '1'),
                    button(() { }, '2'),
                    button(() { }, '3'),
                    button(() { }, '+')
                    
                    ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(() { }, '0'),
                    button(() { }, '.'),
                    button(() { }, 'Del'),
                    button(() { }, '=')
                    
                    ],
                ),
              ],
            ),
          )
          )],
      ),
      ),
    );
  }
}




Widget button (VoidCallback onTap ,String text){
  return GestureDetector(
    onTap: onTap,
    child:  CircleAvatar(
      radius: 25,
  child: Center(
    child: Text(text,style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),),
  ),
            ),
  );
}