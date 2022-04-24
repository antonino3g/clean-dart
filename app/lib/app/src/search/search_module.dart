import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'domain/usecases/search_usecase.dart';
import 'external/datasource/search_datasource.dart';
import 'infra/repositories/search_repository.dart';
import 'presenter/controller/search_controller.dart';
import 'presenter/pages/search_page.dart';

class SearchModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
        Bind((i) => SearchDataSource(i())),
        Bind((i) => SearchRepository(i())),
        Bind((i) => SearchUsecase(i())),
        Bind((i) => SearchController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SearchPage()),
      ];
}
