import 'package:flutter/services.dart';
import 'package:flutter_openim_sdk/flutter_openim_sdk.dart';

class GroupManager {
  MethodChannel _channel;
  late OnGroupListener groupListener;

  GroupManager(this._channel);

  /// Set up group relationship monitoring
  /// 组关系监听
  Future setGroupListener(OnGroupListener listener) {
    this.groupListener = listener;
    return _channel.invokeMethod('setGroupListener', _buildParam({}));
  }

  /// Invite friends into the group
  /// 邀请进组，直接进组无需同意。
  Future<List<GroupInviteResult>> inviteUserToGroup({
    required String groupId,
    required List<String> uidList,
    String? reason,
    String? operationID,
  }) =>
      _channel
          .invokeMethod(
              'inviteUserToGroup',
              _buildParam({
                'gid': groupId,
                'reason': reason,
                'uidList': uidList,
                "operationID": Utils.checkOperationID(operationID),
              }))
          .then((value) =>
              Utils.toList(value, (map) => GroupInviteResult.fromJson(map)));

  /// Remove member from group
  /// 移除组成员
  Future<List<GroupInviteResult>> kickGroupMember({
    required String groupId,
    required List<String> uidList,
    String? reason,
    String? operationID,
  }) =>
      _channel
          .invokeMethod(
              'kickGroupMember',
              _buildParam({
                'gid': groupId,
                'reason': reason,
                'uidList': uidList,
                "operationID": Utils.checkOperationID(operationID),
              }))
          .then((value) =>
              Utils.toList(value, (map) => GroupInviteResult.fromJson(map)));

  /// Get group member's info
  /// 查询组成员资料
  Future<List<GroupMembersInfo>> getGroupMembersInfo({
    required String groupId,
    required List<String> uidList,
    String? operationID,
  }) =>
      _channel
          .invokeMethod(
              'getGroupMembersInfo',
              _buildParam({
                'gid': groupId,
                'uidList': uidList,
                "operationID": Utils.checkOperationID(operationID),
              }))
          .then((value) =>
              Utils.toList(value, (map) => GroupMembersInfo.fromJson(map)));

  /// Get the list of group members
  /// 分页获取组成员列表
  Future<List<GroupMembersInfo>> getGroupMemberList({
    required String groupId,
    int filter = 0,
    int offset = 0,
    int count = 0,
    String? operationID,
  }) =>
      _channel
          .invokeMethod(
              'getGroupMemberList',
              _buildParam({
                'gid': groupId,
                'filter': filter,
                'offset': offset,
                'count': count,
                'operationID': Utils.checkOperationID(operationID),
              }))
          .then((value) =>
              Utils.toList(value, (map) => GroupMembersInfo.fromJson(map)));

  /// Get the list of group members
  /// 分页获取组成员列表
  Future<List<dynamic>> getGroupMemberListMap({
    required String groupId,
    int filter = 0,
    int offset = 0,
    int count = 0,
    String? operationID,
  }) =>
      _channel
          .invokeMethod(
              'getGroupMemberList',
              _buildParam({
                'gid': groupId,
                'filter': filter,
                'offset': offset,
                'count': count,
                'operationID': Utils.checkOperationID(operationID),
              }))
          .then((value) => Utils.toListMap(value));

  /// Find all groups you have joined
  /// 查询已加入的组列表
  Future<List<GroupInfo>> getJoinedGroupList({String? operationID}) => _channel
      .invokeMethod(
          'getJoinedGroupList',
          _buildParam({
            'operationID': Utils.checkOperationID(operationID),
          }))
      .then((value) => Utils.toList(value, (map) => GroupInfo.fromJson(map)));

  /// Find all groups you have joined
  /// 查询已加入的组列表
  Future<List<dynamic>> getJoinedGroupListMap({String? operationID}) => _channel
      .invokeMethod(
          'getJoinedGroupList',
          _buildParam({
            'operationID': Utils.checkOperationID(operationID),
          }))
      .then((value) => Utils.toListMap(value));

  /// Check if you are a member of the group
  /// 检查是否已加入组
  Future<bool> isJoinedGroup({
    required String gid,
    String? operationID,
  }) =>
      getJoinedGroupList(
        operationID: Utils.checkOperationID(operationID),
      ).then((list) => list.where((e) => e.groupID == gid).length > 0);

  /// Create a group
  /// 创建一个组
  Future<GroupInfo> createGroup({
    String? groupName,
    String? notification,
    String? introduction,
    String? faceUrl,
    int? groupType,
    String? ex,
    required List<GroupMemberRole> list,
    String? operationID,
  }) =>
      _channel
          .invokeMethod(
              'createGroup',
              _buildParam({
                'gInfo': {
                  "groupName": groupName,
                  "notification": notification,
                  "introduction": introduction,
                  "faceURL": faceUrl,
                  "groupType": groupType,
                  "ex": ex,
                },
                'memberList': list.map((e) => e.toJson()).toList(),
                'operationID': Utils.checkOperationID(operationID),
              }))
          .then(
              (value) => Utils.toObj(value, (map) => GroupInfo.fromJson(map)));

  /// Edit group information
  /// 编辑组资料
  Future<dynamic> setGroupInfo({
    required String groupID,
    String? groupName,
    String? notification,
    String? introduction,
    String? faceUrl,
    String? ex,
    String? operationID,
  }) =>
      _channel.invokeMethod(
          'setGroupInfo',
          _buildParam({
            "gid": groupID,
            'gInfo': {
              // "groupID": groupID,
              "groupName": groupName,
              "notification": notification,
              "introduction": introduction,
              "faceURL": faceUrl,
              "ex": ex,
            },
            'operationID': Utils.checkOperationID(operationID),
          }));

  /// Find group information by group id
  /// 查询组信息
  Future<List<GroupInfo>> getGroupsInfo({
    required List<String> gidList,
    String? operationID,
  }) =>
      _channel
          .invokeMethod(
              'getGroupsInfo',
              _buildParam({
                'gidList': gidList,
                'operationID': Utils.checkOperationID(operationID),
              }))
          .then(
              (value) => Utils.toList(value, (map) => GroupInfo.fromJson(map)));

  /// Apply to join the group
  /// 申请加入组，需要通过管理员同意。
  Future<dynamic> joinGroup({
    required String gid,
    String? reason,
    String? operationID,
  }) =>
      _channel.invokeMethod(
          'joinGroup',
          _buildParam({
            'gid': gid,
            'reason': reason,
            'operationID': Utils.checkOperationID(operationID),
          }));

  /// Leave group
  /// 退出组
  Future<dynamic> quitGroup({
    required String gid,
    String? operationID,
  }) =>
      _channel.invokeMethod(
          'quitGroup',
          _buildParam({
            'gid': gid,
            'operationID': Utils.checkOperationID(operationID),
          }));

  /// Give group permissions to others
  /// 转移组拥有者权限
  Future<dynamic> transferGroupOwner({
    required String gid,
    required String uid,
    String? operationID,
  }) =>
      _channel.invokeMethod(
          'transferGroupOwner',
          _buildParam({
            'gid': gid,
            'uid': uid,
            'operationID': Utils.checkOperationID(operationID),
          }));

  /// As the group owner or administrator, get the list of received group members' applications to join the group.
  /// 作为群主或者管理员，获取收到的群成员申请进群列表。
  Future<List<GroupApplicationInfo>> getRecvGroupApplicationList(
          {String? operationID}) =>
      _channel
          .invokeMethod(
              'getRecvGroupApplicationList',
              _buildParam({
                'operationID': Utils.checkOperationID(operationID),
              }))
          .then((value) =>
              Utils.toList(value, (map) => GroupApplicationInfo.fromJson(map)));

  /// Get the record of the group membership application issued by yourself
  /// 获取自己发出的入群申请记录
  Future<List<GroupApplicationInfo>> getSendGroupApplicationList(
          {String? operationID}) =>
      _channel
          .invokeMethod(
              'getSendGroupApplicationList',
              _buildParam({
                'operationID': Utils.checkOperationID(operationID),
              }))
          .then((value) =>
              Utils.toList(value, (map) => GroupApplicationInfo.fromJson(map)));

  /// Accept group application
  /// 管理员或者群主同意某人进入某群
  Future<dynamic> acceptGroupApplication({
    required String gid,
    required String uid,
    String? handleMsg,
    String? operationID,
  }) =>
      _channel.invokeMethod(
          'acceptGroupApplication',
          _buildParam({
            'gid': gid,
            'uid': uid,
            'handleMsg': handleMsg,
            'operationID': Utils.checkOperationID(operationID),
          }));

  /// Refuse group application
  /// 管理员或者群主拒绝某人进入某群
  Future<dynamic> refuseGroupApplication({
    required String gid,
    required String uid,
    String? handleMsg,
    String? operationID,
  }) =>
      _channel.invokeMethod(
          'refuseGroupApplication',
          _buildParam({
            'gid': gid,
            'uid': uid,
            'handleMsg': handleMsg,
            'operationID': Utils.checkOperationID(operationID),
          }));

  static Map _buildParam(Map param) {
    param["ManagerName"] = "groupManager";
    return param;
  }
}
