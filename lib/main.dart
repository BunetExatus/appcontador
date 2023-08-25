import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      
      title: 'Contador de pessoas',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Contador(),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int count = 0;
  String entra ="";
  void decrement(){

   setState(() {
    count--;
    if(count <= 0){
      entra ="vazio";
       
   }
       if(count <= 18){
      entra ="Temos somente 2 lugares Vazio";
       
   }
   }); 
    
  }
  void incremente(){
   
     setState(() {
      count++;
      if(count>=20){
        
         entra="Pedimos desculpa, restaurante está cheio!";
       
       

      }
               
   }); 

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 244, 142, 7),
      
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("imagens/img.png"),
          fit: BoxFit.cover
          )

          
        ),

        child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [ 
          Text("Pode Entrar!", style: TextStyle(fontSize:30, color: Color.fromARGB(255, 255, 255, 255), backgroundColor: Color.fromARGB(255, 251, 0, 0), fontWeight: FontWeight.w900) ,),
          Text(count.toString(), style: TextStyle(fontSize:100, color: const Color.fromARGB(255, 255, 255, 255))),
          Text(entra.toString(), style: TextStyle(fontSize:40, color: Color.fromARGB(255, 252, 252, 252), fontFamily: AutofillHints.countryName, fontWeight: FontWeight.w900),),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: decrement, child: Text("Saiu!"), style: TextButton.styleFrom(
                backgroundColor: Colors.white, fixedSize:Size(100, 100),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)) ,
                
            ),),
            SizedBox(width: 64),      
            
            TextButton(onPressed: incremente, child: Text("Entrou!"), style: TextButton.styleFrom(
                backgroundColor: Colors.white, fixedSize:Size(100, 100),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                
               
              
            ),),
            ],),
        ],
      ),
      ),
      
    );
  }
}
   