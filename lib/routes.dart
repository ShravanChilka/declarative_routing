enum AppRoute {
  portal,
  sessionGroups,
  sessionGroupCreate,
  sessionGroupUpdate,
  sessionSubGroups,
  sessionSubGroupCreate,
  sessionSubGroupUpdate,
  sessions,
  sessionCreate,
  sessionUpdate,
  ;

  String get route {
    switch (this) {
      case AppRoute.portal:
        return '/portal';
      case AppRoute.sessionGroups:
        return '/portal/session-groups';
      case AppRoute.sessionGroupCreate:
        return '/portal/session-groups/create';
      case AppRoute.sessionGroupUpdate:
        return '/portal/session-groups/:session_group_id/update';
      case AppRoute.sessionSubGroups:
        return '/portal/session-groups/:session_group_id/session-sub-groups';
      case AppRoute.sessionSubGroupCreate:
        return '/portal/session-groups/:session_group_id/session-sub-groups/create';
      case AppRoute.sessionSubGroupUpdate:
        return '/portal/session-groups/:session_group_id/session-sub-groups/:session_sub_group_id/update';
      case AppRoute.sessions:
        return '/portal/session-groups/:session_group_id/session-sub-groups/:session_sub_group_id/sessions';
      case AppRoute.sessionCreate:
        return '/portal/session-groups/:session_group_id/session-sub-groups/:session_sub_group_id/sessions/create';
      case AppRoute.sessionUpdate:
        return '/portal/session-groups/:session_group_id/session-sub-groups/:session_sub_group_id/sessions/:session_id/update';
    }
  }
}
