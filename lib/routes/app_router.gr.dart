// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DashBoardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashBoardPage(),
      );
    },
    FileRoute.name: (routeData) {
      final args = routeData.argsAs<FileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FilePage(
          key: args.key,
          scaffoldKey: args.scaffoldKey,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [DashBoardPage]
class DashBoardRoute extends PageRouteInfo<void> {
  const DashBoardRoute({List<PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FilePage]
class FileRoute extends PageRouteInfo<FileRouteArgs> {
  FileRoute({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
    List<PageRouteInfo>? children,
  }) : super(
          FileRoute.name,
          args: FileRouteArgs(
            key: key,
            scaffoldKey: scaffoldKey,
          ),
          initialChildren: children,
        );

  static const String name = 'FileRoute';

  static const PageInfo<FileRouteArgs> page = PageInfo<FileRouteArgs>(name);
}

class FileRouteArgs {
  const FileRouteArgs({
    this.key,
    required this.scaffoldKey,
  });

  final Key? key;

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  String toString() {
    return 'FileRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}
