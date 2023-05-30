

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/cubit/app_cubit.dart';
import 'package:travel/cubit/app_cubit_state.dart';
import 'package:travel/widgets/no_of_people.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
 int no_of_people = 1;
 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits,CubitStates>(builder: (context,state){
      DetailState detail = state as DetailState;
      return Scaffold(
     body: Stack(children: [
        
       Positioned(
         top: 0, 
         left: 0,
         right: 0,
          child: Container(
            height: 350,
            decoration:  BoxDecoration(image: DecorationImage(image: AssetImage(detail.places.img),fit: BoxFit.cover)),)),
   Positioned(
        top: 50,
        left: 10,
        child: Row(children: [IconButton(onPressed:(){
            BlocProvider.of<AppCubits>(context).goHome();
        }, icon: const Icon(Icons.menu))],)),

         Positioned(
          top: 320,
          child: Container( 
            height: MediaQuery.of(context).size.height-350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const SizedBox(height: 15,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Padding(
                    padding: EdgeInsets.only(top:8.0,),
            
                    child: Text(detail.places.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(detail.places.price.toString()+"\$",style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color.fromRGBO(165, 105, 189  ,100))),
                  )],),
                 Row(children: [
                  
                    const Icon(Icons.place,color: Color.fromRGBO(108, 52, 131  ,100),),Text(detail.places.location,style: const TextStyle(fontStyle: FontStyle.italic,color: Color.fromRGBO(41, 128, 185  ,100)),)],),
            
                   Row(children: [
                    
                    Container(
                      height: 50,
                      width: 91,
                      child:
                       ListView.builder(
                        scrollDirection: Axis.horizontal,
                      itemCount: detail.places.stars,
                      itemBuilder: (context,index){return const Icon(Icons.star,color: Color.fromRGBO(241, 196, 15,100),);}),
            
                    ),
                    const SizedBox(width: 5,),
                   // ignore: prefer_interpolation_to_compose_strings
                   Text("("+detail.places.stars.toString()+")",style: TextStyle(color: Colors.grey),)
            
                    
                    ],),
            
                    const SizedBox(height: 50,),
                    const Text("People",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 3,),
                      const Text("Number of peole you want in your group",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      const SizedBox(height: 25,),
                      Wrap(children: List.generate(5,(index){return
                      
                       GestureDetector
                      (
                        onTap: () {
                        setState(() {
                          no_of_people = index+1;
                        });
                        },
                        child: NumberOfPeople(bgcolor: no_of_people == index+1 ? Colors.black:Colors.white,num:(index+1).toString(),txtColor: no_of_people == index+1 ? Colors.white:Colors.black,)
                      );}),),
                      const SizedBox(height: 20,),
                      const Text("Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                      const SizedBox(height: 10,),
                  Text(detail.places.description,style: const TextStyle(color: Colors.grey),),
                      const SizedBox(height: 30,),

                     Positioned(
                      bottom: 0,
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite,size: 35,),),
                          ElevatedButton(
                             style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(142, 68, 173,100),
                              fixedSize: const Size(130, 45)),

                            onPressed: (){}, child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Book a trip"),
                              Icon(Icons.arrow_forward_ios,size: 15,)
                            ],
                          ))
                        
                        ],))
            
              ],),
            ),
            
            ),
            
            
            
            ),

     
       
     ],),
    );
    },);
}
}