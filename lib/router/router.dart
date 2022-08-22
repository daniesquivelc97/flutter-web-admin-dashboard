import 'package:admin_dashboard/router/admin_handlers.dart';
import 'package:admin_dashboard/router/dashboard_handlers.dart';
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
  static String iconsRoute = '/dashboard/icons';
  static String blankRoute = '/dashboard/blank';
  static String categoriesRoute = '/dashboard/categories';

  // Users
  static String usersRoute = '/dashboard/users';
  static String userRoute = '/dashboard/users/:uid';

  static void configureRoutes() {
    // Auth Routes
    router.define(rootRoute,
        handler: AdminHanders.login, transitionType: TransitionType.none);
    router.define(loginRoute,
        handler: AdminHanders.login, transitionType: TransitionType.none);
    router.define(registerRoute,
        handler: AdminHanders.register, transitionType: TransitionType.fadeIn);

    // Dashboard Route
    router.define(
      dashboardRoute,
      handler: DashboardHanders.dashboard,
      transitionType: TransitionType.none,
    );
    router.define(
      iconsRoute,
      handler: DashboardHanders.icons,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      blankRoute,
      handler: DashboardHanders.blank,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      categoriesRoute,
      handler: DashboardHanders.categories,
      transitionType: TransitionType.fadeIn,
    );

    // Users
    router.define(
      usersRoute,
      handler: DashboardHanders.user,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      userRoute,
      handler: DashboardHanders.user,
      transitionType: TransitionType.fadeIn,
    );

    // 404
    router.notFoundHandler = NoPageFoundedHandlers.noPageFound;
  }
}
