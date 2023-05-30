import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/cubit/app_cubit.dart';
import 'package:travel/cubit/app_cubit_state.dart';
import 'package:travel/services/data_service.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>  with TickerProviderStateMixin {

  //maps can be used 
  List exploreMore = ["Trekking","M.t Climbing","Rafting","Boating","Hiking",];
  List exPloreMoreImg=["images/trekking.png","images/MtClimbing.png","images/rafting.png","images/boating.png","images/hiking.png"];
  List discoverImg=["images/img.jpeg","images/img2.jpg","images/img3.jpg"];
  DataServices data = DataServices();



  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3,  vsync: this);
    return  Scaffold(
      body:
     BlocBuilder<AppCubits,CubitStates>(builder:(context,state){

     if (state is LoadedState) {
      print(state.places);
       var info = state.places;
       return  Container
   (
    height: double.maxFinite,
    width: double.maxFinite,
    child: Column(
    
    children: [

     Container(
      child: 
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Padding(
        padding: const EdgeInsets.only(top:60,left: 10),
        child: IconButton(onPressed: (() {
         data.getInfo();
             }),icon: const Icon(Icons.menu),),
      ),Padding(
        padding: const EdgeInsets.only(top: 50,right: 10),
        child: Container(height: 45,width: 45,decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.red,)),


      )]),),
      const SizedBox(height: 30,),
     const  Row(
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 20,),
         Text("Discover",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ],
    ),
const SizedBox(height: 20,),
    Container(
      child: TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        controller: tabController,
        tabs: const [Tab(text: "Places",),Tab(text: "Inspiration",),Tab(text: "Emotions",)]),),
    Container(
      color: Colors.purple,
      height: 390,
      child: TabBarView(
        controller: tabController,
        children:[
          
          Container(width:270,color: Colors.white,child: 
          ListView.builder(
            scrollDirection: Axis.horizontal,
            
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
              child: GestureDetector
              (
                onTap: (){
                  BlocProvider.of<AppCubits>(context).detailPage(info[index]);
                },
                child: Container(
                  
                decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage(info[index].img),fit: BoxFit.cover)),height: 300,width: 200,),
              ),
            );
          },
          itemCount: info.length,
          
          ),)
          
          ,const Text("ola"),const Text("Bye")]),),
          const SizedBox(height: 50,),
          const Row(
            
            children: [  
              SizedBox(width: 15),
       
              Text("Explore more",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)],),
              SizedBox(height: 10,),

              Container(
                height: 112,
               
                child: ListView.builder(
                  itemCount: 5,
                 scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index){
                  return Container(
                    height: 72,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                        child: Container(height: 70,width: 70,decoration: BoxDecoration(color: Color.fromRGBO(208, 211, 212  ,100),borderRadius: BorderRadius.circular(15)),child: Image(image: AssetImage(exPloreMoreImg[index]),fit: BoxFit.cover,),),

                      ),
                      SizedBox(height: 10,),
                      Text(exploreMore[index])
                    ],),
                  );
                }),
              ),
          

    ],));
     }else{
      return Container(child: Center(child: CircularProgressIndicator()),);
     }
      
     })
    );
  }
}
//rujisha devkota is rujin devkotas 