package com.example.call_app;
import android.util.Log;
import androidx.annotation.NonNull;
import android.content.Context;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class LinphonePlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    private MethodChannel channel;
    private LinphoneManager linphoneManager;

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        Context context = flutterPluginBinding.getApplicationContext();
        channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "linphone");
        channel.setMethodCallHandler(this);
        linphoneManager = LinphoneManager.getInstance(context);
        Log.d("LinphonePlugin", "MethodChannel initialized.");
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
        if (linphoneManager != null) {
            linphoneManager.destroy();
            linphoneManager = null;
        }
    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {
        Log.d("LinphonePlugin", "Method call received: " + call.method);
        if (call.method.equals("login")) {
            Log.d("LinphonePlugin", "Login method invoked.");
            String username = call.argument("username");
            String password = call.argument("password");
            String domain = call.argument("domain");
            linphoneManager.login(username, password, domain);
            result.success(null);
        } else if (call.method.equals("makeCall")) {
            Log.d("LinphonePlugin", "MakeCall method invoked.");
            String callee = call.argument("callee");
            linphoneManager.makeCall(callee);
            result.success(null);
        } else {
            Log.d("LinphonePlugin", "Unknown method: " + call.method);
            result.notImplemented();
        }
    }
}
