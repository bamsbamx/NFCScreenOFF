.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;
.super Ljava/lang/Object;
.source "WifiP2pUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility$1;,
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility$2;
    }
.end annotation


# static fields
.field public static final CHANNEL_FREQ_1:I = 0x96c

.field public static final CHANNEL_FREQ_36:I = 0x143c

.field static final INVALID_WIFI_CHANNEL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final WIFI_CHANNEL_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility$1;

    invoke-direct {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility$1;-><init>()V

    .line 31
    sput-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->WIFI_CHANNEL_MAP:Ljava/util/HashMap;

    .line 74
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility$2;

    invoke-direct {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility$2;-><init>()V

    .line 72
    sput-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->INVALID_WIFI_CHANNEL:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiChannel(Landroid/content/Context;I)Landroid/net/wifi/WifiChannel;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channelFrequency"    # I

    .prologue
    const/4 v5, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    .local v3, "wifiChannel":Landroid/net/wifi/WifiChannel;
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 85
    .local v2, "manager":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_e

    .line 86
    return-object v5

    .line 90
    :cond_e
    const/4 v1, 0x0

    .line 99
    .local v1, "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    sget-object v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->WIFI_CHANNEL_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 101
    .local v0, "channel":Ljava/lang/Integer;
    if-eqz v0, :cond_2a

    .line 102
    new-instance v3, Landroid/net/wifi/WifiChannel;

    .end local v3    # "wifiChannel":Landroid/net/wifi/WifiChannel;
    invoke-direct {v3}, Landroid/net/wifi/WifiChannel;-><init>()V

    .line 103
    .local v3, "wifiChannel":Landroid/net/wifi/WifiChannel;
    iput p1, v3, Landroid/net/wifi/WifiChannel;->freqMHz:I

    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiChannel;->channelNum:I

    .line 108
    .end local v3    # "wifiChannel":Landroid/net/wifi/WifiChannel;
    :cond_2a
    return-object v3
.end method

.method public static getWifiChannelFrequency(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 234
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 235
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_d

    .line 236
    return v3

    .line 239
    :cond_d
    invoke-static {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 240
    return v3

    .line 243
    :cond_14
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 245
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_1b

    .line 246
    return v3

    .line 249
    :cond_1b
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    return v2
.end method

.method public static is5GHzWifiChannel(Landroid/net/wifi/WifiChannel;)Z
    .registers 4
    .param p0, "ch"    # Landroid/net/wifi/WifiChannel;

    .prologue
    const/4 v0, 0x0

    .line 124
    if-eqz p0, :cond_a

    iget v1, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v2, 0x143c

    if-lt v1, v2, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private static isConcurrentConnectionSupported(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const/4 v4, 0x1

    .line 130
    .local v4, "isConcurrencySupported":Z
    if-eqz p0, :cond_24

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_24

    .line 134
    const-string/jumbo v6, "wifip2p"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 133
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 135
    .local v5, "object":Landroid/net/wifi/p2p/WifiP2pManager;
    const/4 v3, 0x0

    .line 137
    .local v3, "field":Ljava/lang/reflect/Field;
    :try_start_13
    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "WPS_PIN_BUNDLE_KEY"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_1d} :catch_31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_1d} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_1d} :catch_35

    move-result-object v3

    .line 142
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_1e
    if-nez v3, :cond_22

    const/4 v4, 0x1

    .line 148
    .end local v5    # "object":Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_21
    :goto_21
    return v4

    .line 142
    .restart local v5    # "object":Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_22
    const/4 v4, 0x0

    goto :goto_21

    .line 143
    .end local v5    # "object":Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_24
    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string/jumbo v7, "10."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 145
    const/4 v4, 0x0

    goto :goto_21

    .line 138
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "object":Landroid/net/wifi/p2p/WifiP2pManager;
    :catch_31
    move-exception v2

    .local v2, "e":Ljava/lang/SecurityException;
    goto :goto_1e

    .line 139
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_33
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_1e

    .line 140
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_35
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1e
.end method

.method public static isValidChannel(Landroid/net/wifi/WifiChannel;)Z
    .registers 3
    .param p0, "ch"    # Landroid/net/wifi/WifiChannel;

    .prologue
    .line 112
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->INVALID_WIFI_CHANNEL:Ljava/util/HashMap;

    iget v1, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 113
    const/4 v0, 0x0

    return v0

    .line 116
    :cond_10
    invoke-virtual {p0}, Landroid/net/wifi/WifiChannel;->isValid()Z

    move-result v0

    return v0
.end method

.method public static isValidP2pChannel(Landroid/net/wifi/WifiChannel;)Z
    .registers 2
    .param p0, "ch"    # Landroid/net/wifi/WifiChannel;

    .prologue
    .line 120
    if-eqz p0, :cond_6

    iget-boolean v0, p0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->isValidChannel(Landroid/net/wifi/WifiChannel;)Z

    move-result v0

    goto :goto_7
.end method

.method private static isWifiConnected(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 152
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 153
    .local v3, "filter":Landroid/content/IntentFilter;
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v6

    .line 155
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_31

    .line 157
    const-string/jumbo v0, "networkInfo"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 159
    .local v7, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_31

    .line 160
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2f

    .line 161
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_31

    .line 162
    :cond_2f
    const/4 v0, 0x1

    return v0

    .line 166
    .end local v7    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private static isWifiConnectionAvailableToUse(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-static {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->isConcurrentConnectionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 175
    :cond_c
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 180
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method private static isWifiP2pAvailable(Landroid/content/Context;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 184
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 185
    .local v3, "filter":Landroid/content/IntentFilter;
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v7

    .line 187
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_2f

    .line 189
    const-string/jumbo v0, "wifiP2pDevice"

    .line 188
    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 192
    .local v6, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v6, :cond_2f

    .line 193
    iget v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz v0, :cond_29

    .line 194
    iget v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v0, v9, :cond_2a

    .line 196
    :cond_29
    return v8

    .line 195
    :cond_2a
    iget v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_29

    .line 200
    .end local v6    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2f
    return v9
.end method

.method public static isWifiP2pAvailableToUse(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 206
    return v3

    .line 209
    :cond_f
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 210
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_1b

    .line 211
    return v3

    .line 216
    :cond_1b
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 217
    return v3

    .line 221
    :cond_22
    invoke-static {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->isWifiConnectionAvailableToUse(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 222
    return v3

    .line 226
    :cond_29
    invoke-static {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->isWifiP2pAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 227
    return v3

    .line 230
    :cond_30
    const/4 v1, 0x1

    return v1
.end method
