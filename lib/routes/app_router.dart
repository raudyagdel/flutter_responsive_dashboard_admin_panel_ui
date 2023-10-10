import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_dashboard/pages/file/file_page.dart';
import 'package:flutter_dashboard/pages/home/dashboard_page.dart';
import 'package:flutter_dashboard/home_page.dart';

part 'app_router.gr.dart';

// @MaterialAutoRouter(
//   replaceInRouteName: 'Page,Route',
//   routes: <AutoRoute>[

//     AutoRoute(
//       path: '/home',
//       page: HomePage,
//       initial: false,
//       children: [
//         // AutoRoute(
//         //   path: 'dashboard',
//         //   page: DashboardPage,
//         //   initial: true,
//         // ),
//         AutoRoute(
//           path: 'files',
//           page: FilePage(scaffoldKey: scaffoldKey),
//           initial: false,
//       ],
//     ),
//   ],
// )
// class AppRouter extends _$AppRouter {
//   AppRouter()
//       : super(
//           configurationGuard: ConfigurationGuard(),
//           printerConfigurationGuard: PrinterConfigurationGuard(),
//           authGuard: AuthGuard(),
//         );
// }

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
          initial: true,
          children: [
            RedirectRoute(path: '', redirectTo: 'dashboard'),
            AutoRoute(path: 'dashboard', page: DashBoardRoute.page),
            // AutoRoute(path: 'posts', page: PostsRoute.page),
            // AutoRoute(path: 'settings', page: SettingsRoute.page),
          ],
        ),
        // AutoRoute(path: '/login', page: LoginRoute.page)
      ];
}
