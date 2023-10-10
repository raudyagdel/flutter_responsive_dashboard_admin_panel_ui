import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/menu.dart';
import 'package:flutter_dashboard/Responsive.dart';
import 'package:flutter_dashboard/widgets/profile/profile.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SizedBox height(BuildContext context) => SizedBox(
        height: Responsive.isDesktop(context) ? 30 : 20,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      drawer: !Responsive.isDesktop(context)
          ? SizedBox(
              width: 250,
              child: Menu(scaffoldKey: scaffoldKey),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Profile(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Menu(scaffoldKey: scaffoldKey),
                ),
              ),
            const Expanded(
              flex: 12,
              child: AutoRouter(),
            ),
            // if (!Responsive.isMobile(context))
            //   const Expanded(
            //     flex: 4,
            //     child: Profile(),
            //   ),
          ],
        ),
      ),
    );
  }
}
