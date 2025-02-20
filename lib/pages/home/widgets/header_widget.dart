import 'package:flutter/material.dart';
import 'package:flutter_dashboard/const.dart';
import 'package:flutter_dashboard/responsive.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (!Responsive.isDesktop(context))
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () => {}, //scaffoldKey.currentState!.openEndDrawer(),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
              ),
            ),
          if (!Responsive.isMobile(context))
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "DashBoard",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 1.5,
                        vertical: defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text("Add New"),
                  ),

                  // TextField(
                  //   decoration: InputDecoration(
                  //     filled: true,
                  //     fillColor: context.theme.cardColor,
                  //     enabledBorder: const OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.transparent),
                  //     ),
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(12.0),
                  //     ),
                  //     focusedBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(12.0),
                  //       borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  //     ),
                  //     contentPadding: const EdgeInsets.symmetric(
                  //       vertical: 5,
                  //     ),
                  //     hintText: 'Search',
                  //     prefixIcon: const Icon(
                  //       Icons.search,
                  //       color: Colors.grey,
                  //       size: 21,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          if (Responsive.isMobile(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 25,
                  ),
                  onPressed: () {},
                ),
                InkWell(
                  onTap: () => {}, //scaffoldKey.currentState!.openEndDrawer(),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      "assets/images/avatar.png",
                      width: 32,
                    ),
                  ),
                )
              ],
            ),
        ],
      ),
    );
  }
}
