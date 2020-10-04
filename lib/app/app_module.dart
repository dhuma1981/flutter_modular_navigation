import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_navigation/app/app_widget.dart';
import 'package:flutter_modular_navigation/app/modules/auth/data/auth_module.dart';
import 'package:flutter_modular_navigation/app/modules/home/data/home_module.dart';
import 'package:flutter_modular_navigation/app/modules/splash/data/splash_module.dart';
import 'package:flutter_modular_navigation/app/utils/routes.dart';

import 'modules/intro/data/intro_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashModule()),
        ModularRouter(Routes.intro, module: IntroModule()),
        ModularRouter(Routes.auth, module: AuthModule()),
        ModularRouter(Routes.home, module: HomeModule()),
      ];
}
