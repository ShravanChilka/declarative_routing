import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer';
import 'package:beamer/beamer.dart';
import 'bloc/counter_bloc.dart';

import 'app_route.dart';

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
    log('build called');
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<TestBloc, TestState>(
                builder: (context, state) {
                  return Text(
                    state.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.greenAccent),
                  );
                },
              ),
              Text(params.toString()),
              Text(queryParams.toString()),
              ElevatedButton(
                onPressed: () async {
                  await Navigator.of(context)
                      .push(
                        MaterialPageRoute(
                          builder: (context) => const AppPage(
                            name: '/portal',
                            params: {'id': 123},
                          ),
                        ),
                      )
                      .then(
                        (value) => log(value.toString()),
                      );
                },
                child: const Text('Push'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop('return value');
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
