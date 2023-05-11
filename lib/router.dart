import 'package:declarative_routing/app_page.dart';
import 'package:declarative_routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Container(),
    ),
    GoRoute(
      path: AppRoute.portal.route,
      builder: (context, state) => AppPage(
        name: AppRoute.portal.name,
        route: AppRoute.portal.route,
        params: state.pathParameters,
        queryParams: state.queryParameters,
      ),
    ),
    GoRoute(
      path: AppRoute.sessionGroups.route,
      builder: (context, state) => AppPage(
        name: AppRoute.sessionGroups.name,
        route: AppRoute.sessionGroups.route,
        params: state.pathParameters,
        queryParams: state.queryParameters,
      ),
    ),
    GoRoute(
      path: AppRoute.sessionGroupCreate.route,
      builder: (context, state) => AppPage(
        name: AppRoute.sessionGroupCreate.name,
        route: AppRoute.sessionGroupCreate.route,
        params: state.pathParameters,
        queryParams: state.queryParameters,
      ),
    ),
    GoRoute(
      path: AppRoute.sessionGroupUpdate.route,
      builder: (context, state) => AppPage(
        name: AppRoute.sessionGroupUpdate.name,
        route: AppRoute.sessionGroupUpdate.route,
        params: state.pathParameters,
        queryParams: state.queryParameters,
      ),
    ),
    GoRoute(
      path: AppRoute.sessionSubGroups.route,
      builder: (context, state) => AppPage(
        name: AppRoute.sessionSubGroups.name,
        route: AppRoute.sessionSubGroups.route,
        params: state.pathParameters,
        queryParams: state.queryParameters,
      ),
    ),
    GoRoute(
      path: AppRoute.sessionSubGroupCreate.route,
      builder: (context, state) => AppPage(
        name: AppRoute.sessionSubGroupCreate.name,
        route: AppRoute.sessionSubGroupCreate.route,
        params: state.pathParameters,
        queryParams: state.queryParameters,
      ),
    ),
    GoRoute(
      path: AppRoute.sessionSubGroupUpdate.route,
      builder: (context, state) => AppPage(
        name: AppRoute.sessionSubGroupUpdate.name,
        route: AppRoute.sessionSubGroupUpdate.route,
        params: state.pathParameters,
        queryParams: state.queryParameters,
      ),
    ),
    GoRoute(
      path: AppRoute.sessions.route,
      builder: (context, state) => AppPage(
        name: AppRoute.sessions.name,
        route: AppRoute.sessions.route,
        params: state.pathParameters,
        queryParams: state.queryParameters,
      ),
    ),
    GoRoute(
      path: AppRoute.sessionCreate.route,
      builder: (context, state) => AppPage(
        name: AppRoute.sessionCreate.name,
        route: AppRoute.sessionCreate.route,
        params: state.pathParameters,
        queryParams: state.queryParameters,
      ),
    ),
    GoRoute(
      path: AppRoute.sessionUpdate.route,
      builder: (context, state) => AppPage(
        name: AppRoute.sessionUpdate.name,
        route: AppRoute.sessionUpdate.route,
        params: state.pathParameters,
        queryParams: state.queryParameters,
      ),
    ),
  ],
);
