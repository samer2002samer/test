import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:for_test/models/App_Cubit/App_State.dart';

import '../../medules/anather_Scaffold.dart';

class App_Cubit extends Cubit<App_State>{
  App_Cubit() : super(App_InationalState());
  static App_Cubit git(context)=>BlocProvider.of(context);



  int currentindex=0;
  void currentindex_change(int index){
    currentindex=index;
    emit(currentindex_change_State());
  }


  List<Widget> home_screens(context){
    return [
      Row(
        children: [
          Expanded(
            child: Column(

              children: [
                Container(
                  height: 150,
                  color: Colors.black.withOpacity(0.9),
                  width: double.infinity,
                  child: Center(
                    child: Text('Live'
                      ,style: TextStyle(color: Colors.red,
                        fontSize: 30,
                      ),),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(

                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 250,
                          child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) => List_vvv(context)[index],
                              separatorBuilder:  (context, index) => Padding(
                                padding: const EdgeInsets.only(
                                    right: 5,
                                    left: 5),
                                child: Container(
                                  height: 1,
                                  width: double.infinity,
                                  color: Colors.red.shade900,
                                ),
                              ),
                              itemCount:List_vvv(context).length),
                        ),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),

          Expanded(flex: 2,
            child: Row(



              children: [
                Container(
                  width: 3,
                  color: Colors.white,
                ),
                Spacer(),
                Container(

                  child: Center(
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 200,)
              ],
            ),
          ),
        ],
      ),

      Row(
        children: [
          Expanded(
            child: Column(

              children: [
                Container(
                  height: 50,
                  color: Colors.red.shade700,
                  width: double.infinity,
                  child: Center(
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.arrow_back,
                        color: Colors.white,
                          size: 30,
                        ))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(

                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 250,
                          child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) => List_vvv_zero(context,index:currentindex)[index],
                              separatorBuilder:  (context, index) => Padding(
                                padding: const EdgeInsets.only(
                                    right: 5,
                                    left: 5),
                                child: Container(
                                  height: 1,
                                  width: double.infinity,
                                  color: Colors.red.shade900,
                                ),
                              ),
                              itemCount:List_vvv(context).length),
                        ),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),

          Expanded(flex: 2,
            child: Row(



              children: [
                Container(
                  width: 3,
                  color: Colors.white,
                ),
                Spacer(),
                Container(

                  child: Center(
                    child: Text(
                      '${body_screen[currentindex]}',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 200,)
              ],
            ),
          ),
        ],
      ),

    ];

  }


List<String> body_screen=[
  'Live TV',
  'Movies',
  'Seies',
  'Sport Guide',
  'Setting',
  'Pay'

];



   Widget home_lift_row({
    required String text_button_to_lest,
    var  onTap,
  }){

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        color: Colors.red,
        child: Center(
          child: Row(
            children: [
              SizedBox(width: 10,),
              Text(
                '$text_button_to_lest',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,


                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

   List<Widget> List_vvv(context){

    return [
      home_lift_row(text_button_to_lest: 'Live TV',
          onTap: (){
            Navigator.push(
              context,

              MaterialPageRoute(builder: (context) => anather_Scaffold()),
            );
            currentindex_change(0);
          }
      ),
      home_lift_row(text_button_to_lest: 'Movies'
      ,  onTap: (){
            Navigator.push(
              context,

              MaterialPageRoute(builder: (context) => anather_Scaffold()),
            );
            currentindex_change(1);
          }
      ),
      home_lift_row(text_button_to_lest: 'Seies'
      ,  onTap: (){
            Navigator.push(
              context,

              MaterialPageRoute(builder: (context) => anather_Scaffold()),
            );
            currentindex_change(2);
          }
      ),
      home_lift_row(text_button_to_lest: 'Sport Guide',
          onTap: (){
            Navigator.push(
              context,

              MaterialPageRoute(builder: (context) => anather_Scaffold()),
            );
            currentindex_change(3);
          }
      ),
      home_lift_row(text_button_to_lest: 'Setting',
          onTap: (){
            Navigator.push(
              context,

              MaterialPageRoute(builder: (context) => anather_Scaffold()),
            );
            currentindex_change(4);
          }
      ),
      home_lift_row(text_button_to_lest: 'Pay',
          onTap: (){
            Navigator.push(
              context,

              MaterialPageRoute(builder: (context) => anather_Scaffold()),
            );
            currentindex_change(5);
          }
      ),
    ];
  }

  List<Widget> List_vvv_zero(context,{int ?index}){


    return [
      home_lift_row(text_button_to_lest: 'Live TV$index',
        
      ),
      home_lift_row(text_button_to_lest: 'Movies $index'),
      home_lift_row(text_button_to_lest: 'Seies $index'),
      home_lift_row(text_button_to_lest: 'Sport Guide $index'),
      home_lift_row(text_button_to_lest: 'Setting $index'),
      home_lift_row(text_button_to_lest: 'Pay $index'),
    ];
  }





















}