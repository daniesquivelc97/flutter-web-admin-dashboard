import 'package:admin_dashboard/router/admin_handlers.dart';
import 'package:admin_dashboard/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  // Auth Router
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  // Dashboard
  static String dashboardRoute = '/dashboard';

  static void configureRoutes() {
    // Auth Routes
    router.define(rootRoute, handler: AdminHanders.login);
    router.define(loginRoute, handler: AdminHanders.login);
    // router.define(registerRoute, handler: handler);

    // 404
    router.notFoundHandler = NoPageFoundedHandlers.noPageFound;
  }
}
