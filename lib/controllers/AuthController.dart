
import 'package:get/get.dart';

class AuthController extends GetxController {

  var showContainer = false.obs;

  void login(){
     showContainer.value = true;
  }


}