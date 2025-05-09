import 'package:store_app_ui_flutter/data/entity/product_entity.dart';
import 'package:store_app_ui_flutter/services/database_service.dart';

class ProductDao {

  static Future<List<ProductEntity>> getProductos() async {
    var conn = await DatabaseService.connect(); // Conectar correctamente

    var result = await conn.execute("SELECT * FROM products"); // Consulta

    List<ProductEntity> productos = result.rows.map((row) => ProductEntity.fromMap(row.assoc())).toList();

    await conn.close(); // Cerrar conexión después de ejecutar

    return productos;
  }
}