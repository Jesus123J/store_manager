
import 'package:store_app_ui_flutter/controllers/AuthController.dart';
import 'package:store_app_ui_flutter/views/login/widgets/dashboard_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_screen.dart';

class LoginScreen extends StatelessWidget{



  @override
  Widget build(BuildContext context) {

    final  AuthController authController = Get.put(AuthController());
    return MaterialApp(
        title: "sss",
        darkTheme: ThemeData.light(),
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,

         home: Obx(() {

           if(authController.showContainer.value){
             return HomeScreen();
           }

           return DashboardLogin();
         })
     );
  }
}