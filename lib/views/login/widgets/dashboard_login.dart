import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_ui_flutter/controllers/AuthController.dart';

class DashboardLogin extends StatelessWidget {
  const DashboardLogin({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());

    return Center(
      child: Container(
        width: 400,
        height: 400,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white54,
        ),
        child: Material(

          color: Colors.transparent,
          child: Column(
            children: [
              Text("Hola Bienvenido"),
              TextField(),

              // 🔥 Agregar `Obx` correctamente en la estructura de widgets
              Obx(() {
                return authController.showContainer.value
                    ? Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child: Text("Este es un Contenedor Visible"),
                )
                    : SizedBox.shrink();
              }),

              ElevatedButton(
                onPressed: () {
                  // ✅ Actualizar la variable reactiva sin usar `Obx` dentro del botón
                  authController.showContainer.value = !authController.showContainer.value;
                },
                child: Text("INICIAR SESIÓN"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}