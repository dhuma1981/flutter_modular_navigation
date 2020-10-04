import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_navigation/app/modules/auth/ui/otp_verification_page.dart';
import 'package:flutter_modular_navigation/app/modules/auth/ui/signin_page.dart';
import 'package:flutter_modular_navigation/app/modules/auth/ui/signup_page.dart';
import 'package:flutter_modular_navigation/app/utils/routes.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => SignInPage()),
        ModularRouter(Routes.signUp, child: (_, args) => SignUpPage()),
        ModularRouter(Routes.otpVerification,
            child: (_, args) => OtpVerificationPage()),
      ];
}
