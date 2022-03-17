import 'package:flutter/material.dart';
import 'package:for_test/medules/home.dart';

class home_lay_out extends StatelessWidget {
  const home_lay_out({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: home(),
        resizeToAvoidBottomInset:false,



    );
  }
}
