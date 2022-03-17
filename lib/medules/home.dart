import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:for_test/medules/meduls_models.dart';
import 'package:for_test/models/App_Cubit/App_Cubit.dart';
import 'package:for_test/models/App_Cubit/App_State.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return BlocConsumer<App_Cubit,App_State>(listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        App_Cubit cubit=App_Cubit.git(context);
      return cubit.home_screens(context)[0];
    },);
  }
}
