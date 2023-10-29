import 'package:flutter_harry_potter/src/ui/pages/home_page.dart';
import 'package:flutter_harry_potter/src/ui/pages/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const HomePage());
    r.child('/splash', child: (context) => const SplashPage());
  }

  @override
  void binds(Injector i) {
    // TODO: implement binds
    super.binds(i);
  }
}
