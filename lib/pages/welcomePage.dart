import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel/widgets/welcomepageSlider2.dart';
import 'package:travel/widgets/welcomepageSlider3.dart';

import '../widgets/welcomepageSider.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  
  List pages =const  [ WelcomepageSlider1(image: "images/welcomepage1.jpg",),WelcomepageSlider2(image: "images/welcomepage2.jpeg",),WelcomepageSilder3(image: "images/welcomepage3.jpeg",)];
  int indexing = 0; 

  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: 
          [
          
            Stack(
              children: 
                        [
                            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: pages.length ,
              itemBuilder: ((context,index) {
               Future.delayed(Duration.zero, () async {
setState(() {
  indexing = index;
});
});
                   return pages[index];
                 

                        })),
    
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Column(
                        children: [
                          SizedBox(height: 90,),
                          Column(children:
                           List.generate(3, (index) {
                            return
                             Container(
                            margin: EdgeInsets.all(2),
                            height: index == indexing?30:10,
                            width: 8,
                            decoration: BoxDecoration(color:index== indexing? const Color.fromRGBO(165, 105, 189,100):Color.fromRGBO(210, 180, 222,100),borderRadius: BorderRadius.circular(8)));}
                     
                        ),),
                        ],
                      ),
                      SizedBox(width: 5,)
                      ],),     
                        
                      ],
            ),
        ],
      ),
    ); 
  }
}