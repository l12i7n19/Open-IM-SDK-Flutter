class Message {
  String? clientMsgID;
  String? serverMsgID;
  int? createTime;
  int? sendTime;

  /// [ConversationType]
  int? sessionType;
  String? sendID;
  String? recvID;
  int? msgFrom;

  /// [MessageType]
  int? contentType;
  int? platformID;
  String? senderNickname;
  String? senderFaceUrl;
  String? groupID;
  String? content;
  int? seq;
  bool? isRead;

  /// [MessageStatus]
  int? status;
  OfflinePushInfo? offlinePush;
  String? attachedInfo;
  String? ex;
  dynamic ext;
  PictureElem? pictureElem;
  SoundElem? soundElem;
  VideoElem? videoElem;
  FileElem? fileElem;
  AtElem? atElem;
  LocationElem? locationElem;
  CustomElem? customElem;
  QuoteElem? quoteElem;
  MergeElem? mergeElem;
  NotificationElem? notificationElem;

  Message({
    this.clientMsgID,
    this.serverMsgID,
    this.createTime,
    this.sendTime,
    this.sessionType,
    this.sendID,
    this.recvID,
    this.msgFrom,
    this.contentType,
    this.platformID,
    this.senderNickname,
    this.senderFaceUrl,
    this.groupID,
    this.content,
    this.seq,
    this.isRead,
    this.status,
    this.offlinePush,
    this.attachedInfo,
    this.ex,
    this.ext,
    this.pictureElem,
    this.soundElem,
    this.videoElem,
    this.fileElem,
    this.atElem,
    this.locationElem,
    this.customElem,
    this.quoteElem,
    this.mergeElem,
    this.notificationElem,
  });

  Message.fromJson(Map<String, dynamic> json) {
    clientMsgID = json['clientMsgID'];
    serverMsgID = json['serverMsgID'];
    createTime = json['createTime'];
    sendTime = json['sendTime'];
    sendID = json['sendID'];
    recvID = json['recvID'];
    msgFrom = json['msgFrom'];
    contentType = json['contentType'];
    platformID = json['platformID'];
    senderNickname = json['senderNickname'];
    senderFaceUrl = json['senderFaceUrl'];
    groupID = json['groupID'];
    content = json['content'];
    seq = json['seq'];
    isRead = json['isRead'];
    status = json['status'];
    offlinePush = json['offlinePush'] != null
        ? OfflinePushInfo.fromJson(json['offlinePush'])
        : null;
    attachedInfo = json['attachedInfo'];
    ex = json['ex'];
    ext = json['ext'];
    sessionType = json['sessionType'];
    pictureElem = json['pictureElem'] != null
        ? PictureElem.fromJson(json['pictureElem'])
        : null;
    soundElem = json['soundElem'] != null
        ? SoundElem.fromJson(json['soundElem'])
        : null;
    videoElem = json['videoElem'] != null
        ? VideoElem.fromJson(json['videoElem'])
        : null;
    fileElem =
        json['fileElem'] != null ? FileElem.fromJson(json['fileElem']) : null;
    atElem = json['atElem'] != null ? AtElem.fromJson(json['atElem']) : null;
    locationElem = json['locationElem'] != null
        ? LocationElem.fromJson(json['locationElem'])
        : null;

    customElem = json['customElem'] != null
        ? CustomElem.fromJson(json['customElem'])
        : null;
    quoteElem = json['quoteElem'] != null
        ? QuoteElem.fromJson(json['quoteElem'])
        : null;
    mergeElem = json['mergeElem'] != null
        ? MergeElem.fromJson(json['mergeElem'])
        : null;
    notificationElem = json['notificationElem'] != null
        ? NotificationElem.fromJson(json['notificationElem'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['clientMsgID'] = this.clientMsgID;
    data['serverMsgID'] = this.serverMsgID;
    data['createTime'] = this.createTime;
    data['sendTime'] = this.sendTime;
    data['sendID'] = this.sendID;
    data['recvID'] = this.recvID;
    data['msgFrom'] = this.msgFrom;
    data['contentType'] = this.contentType;
    data['platformID'] = this.platformID;
    data['senderNickname'] = this.senderNickname;
    data['senderFaceUrl'] = this.senderFaceUrl;
    data['groupID'] = this.groupID;
    data['content'] = this.content;
    data['seq'] = this.seq;
    data['isRead'] = this.isRead;
    data['status'] = this.status;
    data['offlinePush'] = this.offlinePush?.toJson();
    data['attachedInfo'] = this.attachedInfo;
    data['ex'] = this.ex;
    data['ext'] = this.ext;
    data['sessionType'] = this.sessionType;
    data['pictureElem'] = this.pictureElem?.toJson();
    data['soundElem'] = this.soundElem?.toJson();
    data['videoElem'] = this.videoElem?.toJson();
    data['fileElem'] = this.fileElem?.toJson();
    data['atElem'] = this.atElem?.toJson();
    data['locationElem'] = this.locationElem?.toJson();
    data['customElem'] = this.customElem?.toJson();
    data['quoteElem'] = this.quoteElem?.toJson();
    data['mergeElem'] = this.mergeElem?.toJson();
    data['notificationElem'] = this.notificationElem?.toJson();
    return data;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Message &&
          runtimeType == other.runtimeType &&
          clientMsgID == other.clientMsgID;

  @override
  int get hashCode => clientMsgID.hashCode;

  void update(Message message) {
    if (clientMsgID != message.clientMsgID) return;
    // clientMsgID = message.clientMsgID;
    serverMsgID = message.serverMsgID;
    createTime = message.createTime;
    sendTime = message.sendTime;
    sendID = message.sendID;
    recvID = message.recvID;
    msgFrom = message.msgFrom;
    contentType = message.contentType;
    platformID = message.platformID;
    senderNickname = message.senderNickname;
    senderFaceUrl = message.senderFaceUrl;
    groupID = message.groupID;
    content = message.content;
    seq = message.seq;
    isRead = message.isRead;
    status = message.status;
    offlinePush = message.offlinePush;
    attachedInfo = message.attachedInfo;
    ex = message.ex;
    ext = message.ext;
    sessionType = message.sessionType;
    pictureElem = message.pictureElem;
    soundElem = message.soundElem;
    videoElem = message.videoElem;
    fileElem = message.fileElem;
    atElem = message.atElem;
    locationElem = message.locationElem;
    customElem = message.customElem;
    quoteElem = message.quoteElem;
    mergeElem = message.mergeElem;
    notificationElem = message.notificationElem;
  }
}

class PictureElem {
  String? sourcePath;
  PictureInfo? sourcePicture;
  PictureInfo? bigPicture;
  PictureInfo? snapshotPicture;

  PictureElem(
      {this.sourcePath,
      this.sourcePicture,
      this.bigPicture,
      this.snapshotPicture});

  PictureElem.fromJson(Map<String, dynamic> json) {
    sourcePath = json['sourcePath'];
    sourcePicture = json['sourcePicture'] != null
        ? new PictureInfo.fromJson(json['sourcePicture'])
        : null;
    bigPicture = json['bigPicture'] != null
        ? new PictureInfo.fromJson(json['bigPicture'])
        : null;
    snapshotPicture = json['snapshotPicture'] != null
        ? new PictureInfo.fromJson(json['snapshotPicture'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['sourcePath'] = this.sourcePath;
    if (this.sourcePicture != null) {
      data['sourcePicture'] = this.sourcePicture?.toJson();
    }
    if (this.bigPicture != null) {
      data['bigPicture'] = this.bigPicture?.toJson();
    }
    if (this.snapshotPicture != null) {
      data['snapshotPicture'] = this.snapshotPicture?.toJson();
    }
    return data;
  }
}

class PictureInfo {
  String? uuid;
  String? type;
  int? size;
  int? width;
  int? height;
  String? url;

  PictureInfo(
      {this.uuid, this.type, this.size, this.width, this.height, this.url});

  PictureInfo.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    type = json['type'];
    size = json['size'];
    width = json['width'];
    height = json['height'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['type'] = this.type;
    data['size'] = this.size;
    data['width'] = this.width;
    data['height'] = this.height;
    data['url'] = this.url;
    return data;
  }
}

class SoundElem {
  String? uuid;
  String? soundPath;
  String? sourceUrl;
  int? dataSize;
  int? duration;

  SoundElem(
      {this.uuid,
      this.soundPath,
      this.sourceUrl,
      this.dataSize,
      this.duration});

  SoundElem.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    soundPath = json['soundPath'];
    sourceUrl = json['sourceUrl'];
    dataSize = json['dataSize'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['soundPath'] = this.soundPath;
    data['sourceUrl'] = this.sourceUrl;
    data['dataSize'] = this.dataSize;
    data['duration'] = this.duration;
    return data;
  }
}

class VideoElem {
  String? videoPath;
  String? videoUUID;
  String? videoUrl;
  String? videoType;
  int? videoSize;
  int? duration;
  String? snapshotPath;
  String? snapshotUUID;
  int? snapshotSize;
  String? snapshotUrl;
  int? snapshotWidth;
  int? snapshotHeight;

  VideoElem(
      {this.videoPath,
      this.videoUUID,
      this.videoUrl,
      this.videoType,
      this.videoSize,
      this.duration,
      this.snapshotPath,
      this.snapshotUUID,
      this.snapshotSize,
      this.snapshotUrl,
      this.snapshotWidth,
      this.snapshotHeight});

  VideoElem.fromJson(Map<String, dynamic> json) {
    videoPath = json['videoPath'];
    videoUUID = json['videoUUID'];
    videoUrl = json['videoUrl'];
    videoType = json['videoType'];
    videoSize = json['videoSize'];
    duration = json['duration'];
    snapshotPath = json['snapshotPath'];
    snapshotUUID = json['snapshotUUID'];
    snapshotSize = json['snapshotSize'];
    snapshotUrl = json['snapshotUrl'];
    snapshotWidth = json['snapshotWidth'];
    snapshotHeight = json['snapshotHeight'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['videoPath'] = this.videoPath;
    data['videoUUID'] = this.videoUUID;
    data['videoUrl'] = this.videoUrl;
    data['videoType'] = this.videoType;
    data['videoSize'] = this.videoSize;
    data['duration'] = this.duration;
    data['snapshotPath'] = this.snapshotPath;
    data['snapshotUUID'] = this.snapshotUUID;
    data['snapshotSize'] = this.snapshotSize;
    data['snapshotUrl'] = this.snapshotUrl;
    data['snapshotWidth'] = this.snapshotWidth;
    data['snapshotHeight'] = this.snapshotHeight;
    return data;
  }
}

class FileElem {
  String? filePath;
  String? uuid;
  String? sourceUrl;
  String? fileName;
  int? fileSize;

  FileElem(
      {this.filePath, this.uuid, this.sourceUrl, this.fileName, this.fileSize});

  FileElem.fromJson(Map<String, dynamic> json) {
    filePath = json['filePath'];
    uuid = json['uuid'];
    sourceUrl = json['sourceUrl'];
    fileName = json['fileName'];
    fileSize = json['fileSize'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['filePath'] = this.filePath;
    data['uuid'] = this.uuid;
    data['sourceUrl'] = this.sourceUrl;
    data['fileName'] = this.fileName;
    data['fileSize'] = this.fileSize;
    return data;
  }
}

class AtElem {
  String? text;
  List<String>? atUserList;
  bool? isAtSelf;

  AtElem({this.text, this.atUserList, this.isAtSelf});

  AtElem.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    if (json['atUserList'] is List) {
      atUserList = (json['atUserList'] as List).map((e) => '$e').toList();
    }
    isAtSelf = json['isAtSelf'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['text'] = this.text;
    data['atUserList'] = this.atUserList;
    data['isAtSelf'] = this.isAtSelf;
    return data;
  }
}

class LocationElem {
  String? description;
  double? longitude;
  double? latitude;

  LocationElem({this.description, this.longitude, this.latitude});

  LocationElem.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    if (json['longitude'] is int) {
      longitude = (json['longitude'] as int).toDouble();
    } else {
      longitude = json['longitude'];
    }

    if (json['latitude'] is int) {
      latitude = (json['latitude'] as int).toDouble();
    } else {
      latitude = json['latitude'];
    }
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['description'] = this.description;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    return data;
  }
}

class CustomElem {
  String? data;
  String? extension;
  String? description;

  CustomElem({this.data, this.extension, this.description});

  CustomElem.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    extension = json['extension'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['data'] = this.data;
    data['extension'] = this.extension;
    data['description'] = this.description;
    return data;
  }
}

class QuoteElem {
  String? text;
  Message? quoteMessage;

  QuoteElem({this.text, this.quoteMessage});

  QuoteElem.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    if (json['quoteMessage'] is Map) {
      quoteMessage = Message.fromJson(json['quoteMessage']);
    }
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['text'] = this.text;
    data['quoteMessage'] = this.quoteMessage?.toJson();
    return data;
  }
}

class MergeElem {
  String? title;
  List<String>? abstractList;
  List<Message>? multiMessage;

  MergeElem({this.title, this.abstractList, this.multiMessage});

  MergeElem.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['abstractList'] is List) {
      abstractList = json['abstractList'].cast<String>();
    }
    if (json['multiMessage'] is List) {
      multiMessage = (json['multiMessage'] as List)
          .map((e) => Message.fromJson(e))
          .toList();
    }
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['title'] = this.title;
    data['abstractList'] = this.abstractList;
    data['multiMessage'] = this.multiMessage?.map((e) => e.toJson()).toList();
    return data;
  }
}

class NotificationElem {
  String? detail;
  String? defaultTips;

  NotificationElem({this.detail, this.defaultTips});

  NotificationElem.fromJson(Map<String, dynamic> json) {
    detail = json['detail'];
    defaultTips = json['defaultTips'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['detail'] = this.detail;
    data['defaultTips'] = this.defaultTips;
    return data;
  }
}

class ReadReceiptInfo {
  String? uid;
  List<String>? msgIDList;
  int? readTime;
  int? msgFrom;
  int? contentType;
  int? sessionType;

  ReadReceiptInfo(
      {this.uid,
      this.msgIDList,
      this.readTime,
      this.msgFrom,
      this.contentType,
      this.sessionType});

  ReadReceiptInfo.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    if (json['msgIDList'] is List) {
      msgIDList = (json['msgIDList'] as List).map((e) => '$e').toList();
    }
    readTime = json['readTime'];
    msgFrom = json['msgFrom'];
    contentType = json['contentType'];
    sessionType = json['sessionType'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['uid'] = this.uid;
    data['msgIDList'] = this.msgIDList;
    data['readTime'] = this.readTime;
    data['msgFrom'] = this.msgFrom;
    data['contentType'] = this.contentType;
    data['sessionType'] = this.sessionType;
    return data;
  }
}

class OfflinePushInfo {
  String? title;
  String? desc;
  String? ex;
  String? iOSPushSound;
  bool? iOSBadgeCount;

  OfflinePushInfo(
      {this.title, this.desc, this.ex, this.iOSPushSound, this.iOSBadgeCount});

  OfflinePushInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    desc = json['desc'];
    ex = json['ex'];
    iOSPushSound = json['iOSPushSound'];
    iOSBadgeCount = json['iOSBadgeCount'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['title'] = this.title;
    data['desc'] = this.desc;
    data['ex'] = this.ex;
    data['iOSPushSound'] = this.iOSPushSound;
    data['iOSBadgeCount'] = this.iOSBadgeCount;
    return data;
  }
}
