import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:approachable_geek_challenge/src/ui/edit_profile/edit_profile.dart';

class GeeksRouter {
  RouteInformationParser<Object> get routeInformationParser =>
      router.routeInformationParser;

  RouterDelegate<Object> get routerDelegate => router.routerDelegate;

  RouteInformationProvider get routeInformationProvider =>
      router.routeInformationProvider;

  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: EditProfileView.routeName,
        path: "/${EditProfileView.routeName}",
        builder: (context, state) {
          return const EditProfileView();
        },
        routes: [
          GoRoute(
            name: EditNameView.routeName,
            path: EditNameView.routeName,
            builder: (context, state) => const EditNameView(),
          ),
          GoRoute(
            name: EditPhoneView.routeName,
            path: EditPhoneView.routeName,
            builder: (context, state) => const EditPhoneView(),
          ),
          GoRoute(
            name: EditEmailView.routeName,
            path: EditEmailView.routeName,
            builder: (context, state) => const EditEmailView(),
          ),
          GoRoute(
            name: EditBioView.routeName,
            path: EditBioView.routeName,
            builder: (context, state) => const EditBioView(),
          ),
          GoRoute(
            name: EditPhotoView.routeName,
            path: EditPhotoView.routeName,
            builder: (context, state) => const EditPhotoView(),
          ),
        ],
      ),
    ],
    initialLocation: "/${EditProfileView.routeName}",
  );
}
