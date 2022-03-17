import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:for_test/lay_out/home_lay_out.dart';
import 'package:for_test/models/App_Cubit/App_Cubit.dart';
import 'package:for_test/shar/style/style.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive,overlays: []);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context)=>App_Cubit(),)
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: Style.light_theme,

        home: home_lay_out(),
      ),
    );
  }
}


