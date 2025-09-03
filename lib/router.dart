
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/bottom_nav/contact_page.dart';
import 'package:myapp/bottom_nav/events_page.dart';
import 'package:myapp/bottom_nav/home_widget.dart';
import 'package:myapp/bottom_nav/media_page.dart';
import 'package:myapp/home/ghp_page.dart';
import 'package:myapp/home/home_page.dart';
import 'package:myapp/home/ministry_page.dart';
import 'package:myapp/home/whc_page.dart';
import 'package:myapp/home/whi_page.dart';
import 'package:myapp/home/world_mission_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomePage(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeWidget(),
              routes: <RouteBase>[
                GoRoute(
                  path: 'whc',
                  builder: (BuildContext context, GoRouterState state) {
                    return const WhcPage();
                  },
                ),
                GoRoute(
                  path: 'whi',
                  builder: (BuildContext context, GoRouterState state) {
                    return const WhiPage();
                  },
                ),
                GoRoute(
                  path: 'world_mission',
                  builder: (BuildContext context, GoRouterState state) {
                    return const WorldMissionPage();
                  },
                ),
                GoRoute(
                  path: 'ghp',
                  builder: (BuildContext context, GoRouterState state) {
                    return const GhpPage();
                  },
                ),
                GoRoute(
                  path: 'ministry',
                  builder: (BuildContext context, GoRouterState state) {
                    return const MinistryPage();
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/events',
              builder: (context, state) => const EventsPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/media',
              builder: (context, state) => const MediaPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/contact',
              builder: (context, state) => const ContactPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
