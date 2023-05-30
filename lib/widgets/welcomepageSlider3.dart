import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomepageSilder3 extends StatelessWidget {
  const WelcomepageSilder3({super.key, this.image});
final image ; 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(image:DecorationImage(image: AssetImage(image),fit: BoxFit.cover) ),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        
       SizedBox(height: 100,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
            
              children: [
              
                 Row(
                   children: const [
                    SizedBox(width: 10,),
                      Text("Our Heritages ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color.fromRGBO(255,255,255,20)), ),
                     Text("Our Treasury ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color.fromRGBO(255,255, 255,20)), ),


                    
                   ],

                 ),
                 Container(
                 
                  width: 300,
                  child: Text("The small mountain kingdom of Nepal is blessed with such astonishing and unique sites that within ..",style: TextStyle(color: Colors.white54),)),
                 SizedBox(height: 40,),
                  ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 50),
                  primary: const Color.fromRGBO(169, 50, 38  ,30)
                ),
                onPressed: (() {
                
              }), child: const Icon(Icons.arrow_circle_right_outlined ))
                 
              
              ],
            ),
         
          ], 
        )
      ],),
 
    );
  }
}