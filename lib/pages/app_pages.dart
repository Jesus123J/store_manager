

import 'package:store_app_ui_flutter/routers/routes.dart';
import 'package:store_app_ui_flutter/views/login/login_screen.dart';
import 'package:get/get.dart';

class AppPages {

   static final  List<GetPage> pages  = [
       GetPage(
           name: Routes.login ,
           page: ()  =>  LoginScreen()
       )
   ];


}