package com.example.call_app;

import android.content.Context;
import android.util.Log;

import org.linphone.core.AccountCreator;
import org.linphone.core.Core;
import org.linphone.core.CoreListenerStub;
import org.linphone.core.Factory;
import org.linphone.core.TransportType;

public class LinphoneManager {
    private static LinphoneManager instance;
    private Core linphoneCore;
    private Context context;

    private LinphoneManager(Context context) {
        this.context = context;
        linphoneCore = Factory.instance().createCore(null, null, context);
        linphoneCore.addListener(new CoreListenerStub() {
            // يمكنك إضافة المستمعين للأحداث هنا
        });
        linphoneCore.start();
    }

    public static synchronized LinphoneManager getInstance(Context context) {
        if (instance == null) {
            instance = new LinphoneManager(context);
        }
        return instance;
    }

    public void login(String username, String password, String domain) {
        AccountCreator accountCreator = linphoneCore.createAccountCreator(null);
        accountCreator.setUsername(username);
        accountCreator.setDomain(domain);
        accountCreator.setPassword(password);
        accountCreator.setTransport(TransportType.Udp);

        linphoneCore.addAuthInfo(Factory.instance().createAuthInfo(
                username, null, password, null, null, domain));

        linphoneCore.addProxyConfig(accountCreator.createProxyConfig());
        linphoneCore.setDefaultProxyConfig(linphoneCore.getProxyConfigList()[0]);
    }

    public void makeCall(String callee) {
        linphoneCore.invite(callee);
    }

    public void iterate() {
        linphoneCore.iterate();
    }

    public void destroy() {
        linphoneCore.stop();
        linphoneCore.removeListener(null);
        linphoneCore = null;
        instance = null;
    }
}
