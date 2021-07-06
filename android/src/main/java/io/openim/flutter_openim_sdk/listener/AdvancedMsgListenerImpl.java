package io.openim.flutter_openim_sdk.listener;

import java.util.HashMap;
import java.util.Map;

import io.openim.flutter_openim_sdk.util.CommonUtil;
import open_im_sdk.OnAdvancedMsgListener;

public class AdvancedMsgListenerImpl implements OnAdvancedMsgListener {
    final Map<String, String> values = new HashMap<>();

    public AdvancedMsgListenerImpl(String listenerId) {
        this.values.put("id", listenerId);
    }

    @Override
    public void onRecvC2CReadReceipt(String s) {
        values.put("message", s);
        CommonUtil.emitEvent("advancedMsgListener", "onRecvC2CReadReceipt", values);
    }

    @Override
    public void onRecvMessageRevoked(String s) {
        values.put("message", s);
        CommonUtil.emitEvent("advancedMsgListener", "onRecvMessageRevoked", values);
    }

    @Override
    public void onRecvNewMessage(String s) {
        values.put("message", s);
        CommonUtil.emitEvent("advancedMsgListener", "onRecvNewMessage", values);
    }
}
