import 'package:admin_dashboard/api/cafe_api.dart';
import 'package:admin_dashboard/models/category.dart';
import 'package:admin_dashboard/models/http/categories_response.dart';
import 'package:flutter/material.dart';

class CategoriesProvider extends ChangeNotifier {
  List<Categoria> categorias = [];

  getCategories() async {
    final resp = await CafeApi.httpGet('/categorias');
    final categoriesResponse = CategoriesResponse.fromMap(resp);
    categorias = [...categoriesResponse.categorias];
    notifyListeners();
  }

  Future newCategory(String name) async {
    final data = {
      'nombre': name,
    };

    try {
      final json = await CafeApi.post('/categorias', data);
      final newCategory = Categoria.fromMap(json);
      categorias.add(newCategory);
      notifyListeners();
    } catch (e) {
      throw ('Error al crear la categoría');
    }
  }

  Future updateCategory(String name, String id) async {
    final data = {
      'nombre': name,
    };

    try {
      await CafeApi.put('/categorias/$id', data);
      categorias = categorias.map(
        (category) {
          if (category.id != id) {
            return category;
          }
          category.nombre = name;
          return category;
        },
      ).toList();

      notifyListeners();
    } catch (e) {
      throw ('Error al actualizar la categoría');
    }
  }

  Future deleteCategory(String id) async {
    try {
      await CafeApi.delete('/categorias/$id', {});
      categorias.removeWhere(
        (categoria) => categoria.id == id,
      );
      notifyListeners();
    } catch (e) {
      throw ('Error al eliminar la categoría');
    }
  }
}
