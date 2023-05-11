class AppRoute {
  static const portal = '/portal';
  static const sessionGroup = '/portal/session-groups';
  static const sessionGroupCreate = '/portal/session-groups/create';
  static const sessionGroupUpdate =
      '/portal/session-groups/:session_group_id/update';
  static const sessionSubGroup =
      '/portal/session-groups/:session_group_id/session-sub-groups';
  static const sessionSubGroupCreate =
      '/portal/session-groups/:session_group_id/session-sub-groups/create';
  static const sessionSubGroupUpdate =
      '/portal/session-groups/:session_group_id/session-sub-groups/:session_sub_group_id/update';
  static const session =
      '/portal/session-groups/:session_group_id/session-sub-groups/:session_sub_group_id/sessions';
  static const sessionCreate =
      '/portal/session-groups/:session_group_id/session-sub-groups/:session_sub_group_id/sessions/create';
  static const sessionUpdate =
      '/portal/session-groups/:session_group_id/session-sub-groups/:session_sub_group_id/sessions/:session_id/update';
}
