package io.openim.flutter_openim_sdk.manager;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.openim.flutter_openim_sdk.listener.OnBaseListener;
import io.openim.flutter_openim_sdk.listener.OnConnListener;
import io.openim.flutter_openim_sdk.util.CommonUtil;
import open_im_sdk.Open_im_sdk;

public class IMManager extends BaseManager {

    public void initSDK(MethodCall methodCall, MethodChannel.Result result) {
        CommonUtil.runMainThreadReturn(result, Open_im_sdk.initSDK(
                new OnConnListener(),
                value(methodCall, "operationID"),
                jsonValue(methodCall))
        );
    }

    public void login(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.login(
                new OnBaseListener(result),
                value(methodCall, "operationID"),
                value(methodCall, "uid"),
                value(methodCall, "token")
        );
    }

    public void logout(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.logout(
                new OnBaseListener(result),
                value(methodCall, "operationID")
        );
    }

    public void getLoginStatus(MethodCall methodCall, MethodChannel.Result result) {
        CommonUtil.runMainThreadReturn(result, Open_im_sdk.getLoginStatus());
    }

//    public void getLoginUid(MethodCall methodCall, MethodChannel.Result result) {
//        CommonUtil.runMainThreadReturn(result, Open_im_sdk.getLoginUid());
//    }

//    public void getUsersInfo(MethodCall methodCall, MethodChannel.Result result) {
//        Open_im_sdk.getUsersInfo(
//                jsonValue(methodCall, "uidList"), new BaseListener(result));
//    }

//    public void setSelfInfo(MethodCall methodCall, MethodChannel.Result result) {
//        Open_im_sdk.setSelfInfo(
//                jsonValue(methodCall), new BaseListener(result));
//    }

//    public void forceSyncLoginUerInfo(MethodCall methodCall, MethodChannel.Result result) {
//        Open_im_sdk.forceSyncLoginUerInfo();
//    }

//    public void forceReConn(MethodCall methodCall, MethodChannel.Result result) {
//        Open_im_sdk.forceReConn();
//    }

//    public void setSdkLog(MethodCall methodCall, MethodChannel.Result result) {
//        Open_im_sdk.setSdkLog(value(methodCall, "sdkLog"));
//    }
}
