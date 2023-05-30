import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/cubit/app_cubit.dart';
class WelcomepageSlider1 extends StatelessWidget {
 final image;
  const WelcomepageSlider1({super.key, this.image, });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(image:DecorationImage(image: AssetImage(image),fit: BoxFit.cover) ),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100,),
          Row(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Column(
             
              children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              width: 270,
              child:  const Text("Tips \n Discover",style: TextStyle(fontWeight:FontWeight.bold,fontSize:40 ,color: Colors.white),)),
            const SizedBox(height: 30,),
            Container(
               margin: const EdgeInsets.only(left: 20),
              width: 270,
              child: const Text("Mountains gives you an incredible pleasure of courage and conqure",style: TextStyle(fontSize:18 ,color: Colors.black,fontWeight: FontWeight.w300),)),
              const SizedBox(height: 100,),

             
              
          ],)],),
          ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 50),
                  primary: const Color.fromRGBO(187, 143, 206,100)
                ),
                onPressed: (() {
                  
             BlocProvider.of<AppCubits>(context).getData();
              }), child: const Icon(Icons.arrow_circle_right_outlined ))
      ],),

    );
  }
}