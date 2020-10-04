import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_navigation/app/modules/home/ui/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];
}
