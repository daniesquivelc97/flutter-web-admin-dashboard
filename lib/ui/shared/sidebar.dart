import 'package:admin_dashboard/providers/sidemenu_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/services/navigation_service.dart';
import 'package:admin_dashboard/ui/shared/widgets/logo.dart';
import 'package:admin_dashboard/ui/shared/widgets/menu_item_bar.dart';
import 'package:admin_dashboard/ui/shared/widgets/text_separator.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  void navigateTo(String routeName) {
    NavigationService.navigateTo(routeName);
    SidemenuProvider.closeMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const Logo(),
          const SizedBox(height: 50),
          const TextSeparator(text: 'main'),
          MenuItemBar(
            text: 'Dashboard',
            icon: Icons.compass_calibration_outlined,
            onPressed: () => navigateTo(Flurorouter.dashboardRoute),
          ),
          MenuItemBar(
            text: 'Orders',
            icon: Icons.shopping_cart_outlined,
            onPressed: () {},
          ),
          MenuItemBar(
            text: 'Analytic',
            icon: Icons.show_chart_outlined,
            onPressed: () {},
          ),
          MenuItemBar(
            text: 'Categories',
            icon: Icons.layers_outlined,
            onPressed: () {},
          ),
          MenuItemBar(
            text: 'Products',
            icon: Icons.dashboard_outlined,
            onPressed: () {},
          ),
          MenuItemBar(
            text: 'Discount',
            icon: Icons.attach_money_outlined,
            onPressed: () {},
          ),
          MenuItemBar(
            text: 'Customers',
            icon: Icons.people_alt_outlined,
            onPressed: () {},
          ),
          const SizedBox(height: 30),
          const TextSeparator(text: 'UI Elements'),
          MenuItemBar(
            text: 'Icons',
            icon: Icons.list_alt_outlined,
            onPressed: () => navigateTo(Flurorouter.iconsRoute),
          ),
          MenuItemBar(
            text: 'Marketing',
            icon: Icons.mark_email_read_outlined,
            onPressed: () {},
          ),
          MenuItemBar(
            text: 'Campaign',
            icon: Icons.note_add_outlined,
            onPressed: () {},
          ),
          MenuItemBar(
            text: 'Black',
            icon: Icons.post_add_outlined,
            onPressed: () {},
          ),
          const SizedBox(height: 50),
          const TextSeparator(text: 'Exit'),
          MenuItemBar(
            text: 'Logout',
            icon: Icons.exit_to_app_outlined,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff092044),
            Color(0xff092042),
          ],
        ),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 10),
        ],
      );
}
