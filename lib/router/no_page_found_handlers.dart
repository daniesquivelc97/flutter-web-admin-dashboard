import 'package:admin_dashboard/providers/sidemenu_provider.dart';
import 'package:admin_dashboard/ui/views/no_page_found_view.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

class NoPageFoundedHandlers {
  static Handler noPageFound = Handler(
    handlerFunc: (context, parameters) {
      Provider.of<SidemenuProvider>(context!, listen: false)
          .setCurrentPageUrl('/404');
      return const NoPageFoundView();
    },
  );
}
