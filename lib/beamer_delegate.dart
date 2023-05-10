import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const portal = '/portal';
  static const sessionGroup = '/portal/session-group';
  static const sessionGroupCreate = '/portal/session-group/create';
  static const sessionGroupUpdate =
      '/portal/session-group/:session_group_id/update';
  static const sessionSubGroup =
      '/portal/session-group/:session_group_id/session-sub-group';
  static const sessionSubGroupCreate =
      '/portal/session-group/:session_group_id/session-sub-group/create';
  static const sessionSubGroupUpdate =
      '/portal/session-group/:session_group_id/session-sub-group/:session_sub_group_id/update';
  static const session =
      '/portal/session-group/:session_group_id/session-sub-group/:session_sub_group_id/session';
  static const sessionCreate =
      '/portal/session-group/:session_group_id/session-sub-group/:session_sub_group_id/session/create';
  static const sessionUpdate =
      '/portal/session-group/:session_group_id/session-sub-group/:session_sub_group_id/session/:session_id/update';
}

extension SnakeCase on String {
  String get snakecase {
    final exp = RegExp(r'[A-Z]');
    final output = replaceAllMapped(
      exp,
      (Match match) => '_${this[match.start].toLowerCase()}',
    );
    return output;
  }
}

final beamerDelegate = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/': (context, state, data) {
        return const AppPage(name: '/');
      },
      AppRoute.portal: (context, state, data) {
        return AppPage(
          name: AppRoute.portal,
          queryParams: state.queryParameters,
          params: state.pathParameters,
        );
      },
      AppRoute.sessionGroup: (context, state, data) {
        return AppPage(
          name: AppRoute.sessionGroup,
          queryParams: state.queryParameters,
          params: state.pathParameters,
        );
      },
      AppRoute.sessionGroupCreate: (context, state, data) {
        return AppPage(
          name: AppRoute.sessionGroupCreate,
          queryParams: state.queryParameters,
          params: state.pathParameters,
        );
      },
      AppRoute.sessionGroupUpdate: (context, state, data) {
        return AppPage(
          name: AppRoute.sessionGroupUpdate,
          queryParams: state.queryParameters,
          params: state.pathParameters,
        );
      },
      AppRoute.sessionSubGroup: (context, state, data) {
        return AppPage(
          name: AppRoute.sessionSubGroup,
          queryParams: state.queryParameters,
          params: state.pathParameters,
        );
      },
      AppRoute.sessionSubGroupCreate: (context, state, data) {
        return AppPage(
          name: AppRoute.sessionSubGroupCreate,
          queryParams: state.queryParameters,
          params: state.pathParameters,
        );
      },
      AppRoute.sessionSubGroupUpdate: (context, state, data) {
        return AppPage(
          name: AppRoute.sessionSubGroupUpdate,
          queryParams: state.queryParameters,
          params: state.pathParameters,
        );
      },
      AppRoute.session: (context, state, data) {
        return AppPage(
          name: AppRoute.session,
          queryParams: state.queryParameters,
          params: state.pathParameters,
        );
      },
      AppRoute.sessionCreate: (context, state, data) {
        return AppPage(
          name: AppRoute.sessionCreate,
          queryParams: state.queryParameters,
          params: state.pathParameters,
        );
      },
      AppRoute.sessionUpdate: (context, state, data) {
        return AppPage(
          name: AppRoute.sessionUpdate,
          queryParams: state.queryParameters,
          params: state.pathParameters,
        );
      },
    },
  ),
);

class AppPage extends StatelessWidget {
  final String name;
  final Map<String, dynamic>? params;
  final Map<String, dynamic>? queryParams;
  const AppPage({
    Key? key,
    required this.name,
    this.params,
    this.queryParams,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
              Text(params.toString()),
              Text(queryParams.toString()),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/portal/session-group/1213/update',
                  );
                },
                child: const Text('Push'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.beamBack();
                },
                child: const Text('Pop'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
