import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomepageSlider2 extends StatelessWidget {
  final image;
  const WelcomepageSlider2({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(image:DecorationImage(image: AssetImage(image),fit: BoxFit.cover) ),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        SizedBox(height: 150,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
            
              children: [
                Text("Take a plunge in the ",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.black87), ),
                 Row(
                   children: [
                     Text("The Mountains of Nepal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black), ),
                     IconButton(onPressed: (() {
                       
                     }), icon: Icon(Icons.arrow_forward_ios,color: Colors.black
                     ,))
                   ],
                 ),
              ],
            ),
         
          ], 
        )
      ],),

    );
  }
}