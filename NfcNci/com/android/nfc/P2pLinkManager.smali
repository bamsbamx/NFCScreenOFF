.class Lcom/android/nfc/P2pLinkManager;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/nfc/P2pEventListener$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/P2pLinkManager$1;,
        Lcom/android/nfc/P2pLinkManager$2;,
        Lcom/android/nfc/P2pLinkManager$3;,
        Lcom/android/nfc/P2pLinkManager$ConnectTask;,
        Lcom/android/nfc/P2pLinkManager$SendTask;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final DISABLE_BEAM_DEFAULT:Ljava/lang/String; = "android.nfc.disable_beam_default"

.field static final ECHOSERVER_ENABLED:Z = false

.field static final HANDOVER_BUSY:I = 0x3

.field static final HANDOVER_FAILURE:I = 0x1

.field static final HANDOVER_SAP:I = 0x14

.field static final HANDOVER_SUCCESS:I = 0x0

.field static final HANDOVER_UNSUPPORTED:I = 0x2

.field static final LINK_SEND_CANCELED_DEBOUNCE_MS:I = 0xfa

.field static final LINK_SEND_COMPLETE_DEBOUNCE_MS:I = 0x1f4

.field static final LINK_SEND_CONFIRMED_DEBOUNCE_MS:I = 0x1388

.field static final LINK_SEND_PENDING_DEBOUNCE_MS:I = 0xbb8

.field static final LINK_STATE_DEBOUNCE:I = 0x3

.field static final LINK_STATE_DOWN:I = 0x1

.field static final LINK_STATE_UP:I = 0x2

.field static final MSG_DEBOUNCE_TIMEOUT:I = 0x1

.field static final MSG_HANDOVER_BUSY:I = 0xa

.field static final MSG_HANDOVER_NOT_SUPPORTED:I = 0x7

.field static final MSG_RECEIVE_COMPLETE:I = 0x2

.field static final MSG_RECEIVE_HANDOVER:I = 0x3

.field static final MSG_SEND_COMPLETE:I = 0x4

.field static final MSG_SHOW_CONFIRMATION_UI:I = 0x8

.field static final MSG_START_ECHOSERVER:I = 0x5

.field static final MSG_STOP_ECHOSERVER:I = 0x6

.field static final MSG_WAIT_FOR_LINK_TIMEOUT:I = 0x9

.field static final NDEFPUSH_SAP:I = 0x10

.field static final SEND_STATE_CANCELED:I = 0x6

.field static final SEND_STATE_COMPLETE:I = 0x5

.field static final SEND_STATE_NEED_CONFIRMATION:I = 0x2

.field static final SEND_STATE_NOTHING_TO_SEND:I = 0x1

.field static final SEND_STATE_PENDING:I = 0x3

.field static final SEND_STATE_SENDING:I = 0x4

.field static final SNEP_FAILURE:I = 0x1

.field static final SNEP_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcP2pLinkManager"

.field static final WAIT_FOR_LINK_TIMEOUT_MS:I = 0x2710


# instance fields
.field mCallbackNdef:Landroid/nfc/IAppCallback;

.field mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

.field final mContext:Landroid/content/Context;

.field final mDefaultMiu:I

.field final mDefaultRwSize:I

.field final mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field final mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

.field final mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

.field final mEventListener:Lcom/android/nfc/P2pEventListener;

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

.field mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

.field final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field final mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

.field mIsReceiveEnabled:Z

.field mIsSendEnabled:Z

.field mLastLlcpActivationTime:J

.field mLinkState:I

.field mLlcpServicesConnected:Z

.field mMessageToSend:Landroid/nfc/NdefMessage;

.field mNdefCallbackUid:I

.field mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field final mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

.field final mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPeerLlcpVersion:B

.field mPrefs:Landroid/content/SharedPreferences;

.field mSendFlags:I

.field mSendState:I

.field mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

.field mSnepClient:Lcom/android/nfc/snep/SnepClient;

.field mUrisToSend:[Landroid/net/Uri;

.field mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "defaultMiu"    # I
    .param p4, "defaultRwSize"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    new-instance v0, Lcom/android/nfc/P2pLinkManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$1;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 974
    new-instance v0, Lcom/android/nfc/P2pLinkManager$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$2;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .line 981
    new-instance v0, Lcom/android/nfc/P2pLinkManager$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$3;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 278
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Lcom/android/nfc/ndefpush/NdefPushServer;-><init>(ILcom/android/nfc/ndefpush/NdefPushServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 279
    new-instance v0, Lcom/android/nfc/snep/SnepServer;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-direct {v0, v1, p3, p4}, Lcom/android/nfc/snep/SnepServer;-><init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    .line 280
    new-instance v0, Lcom/android/nfc/handover/HandoverServer;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    const/16 v2, 0x14

    invoke-direct {v0, p1, v2, p2, v1}, Lcom/android/nfc/handover/HandoverServer;-><init>(Landroid/content/Context;ILcom/android/nfc/handover/HandoverDataParser;Lcom/android/nfc/handover/HandoverServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 288
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    .line 289
    new-instance v0, Lcom/android/nfc/P2pEventManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/P2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    .line 290
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    .line 291
    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 292
    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 293
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 294
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 295
    const-string/jumbo v0, "NfcServicePrefs"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 296
    iput-object p2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 297
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultMiu:I

    .line 298
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultRwSize:I

    .line 299
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 301
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 277
    return-void
.end method

.method private isBeamDisabled(I)Z
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 560
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 561
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 563
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v2, "no_outgoing_beam"

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 562
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    return v2
.end method

.method static linkStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 1201
    packed-switch p0, :pswitch_data_14

    .line 1209
    const-string/jumbo v0, "<error>"

    return-object v0

    .line 1203
    :pswitch_7
    const-string/jumbo v0, "LINK_STATE_DOWN"

    return-object v0

    .line 1205
    :pswitch_b
    const-string/jumbo v0, "LINK_STATE_DEBOUNCE"

    return-object v0

    .line 1207
    :pswitch_f
    const-string/jumbo v0, "LINK_STATE_UP"

    return-object v0

    .line 1201
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_f
        :pswitch_b
    .end packed-switch
.end method

.method private onP2pSendConfirmed(Z)V
    .registers 6
    .param p1, "requireConfirmation"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1140
    const-string/jumbo v0, "NfcP2pLinkManager"

    const-string/jumbo v1, "onP2pSendConfirmed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    monitor-enter p0

    .line 1142
    :try_start_c
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v2, :cond_16

    if-eqz p1, :cond_18

    .line 1143
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_39

    if-eq v0, v3, :cond_18

    :cond_16
    monitor-exit p0

    .line 1144
    return-void

    .line 1146
    :cond_18
    const/4 v0, 0x4

    :try_start_19
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1147
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v3, :cond_28

    .line 1148
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    if-eqz v0, :cond_26

    .line 1149
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_39

    :cond_26
    :goto_26
    monitor-exit p0

    .line 1139
    return-void

    .line 1151
    :cond_28
    :try_start_28
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 1153
    const/4 v0, 0x1

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 1154
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_39

    goto :goto_26

    .line 1141
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static sendStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 1184
    packed-switch p0, :pswitch_data_1c

    .line 1196
    :pswitch_3
    const-string/jumbo v0, "<error>"

    return-object v0

    .line 1186
    :pswitch_7
    const-string/jumbo v0, "SEND_STATE_NOTHING_TO_SEND"

    return-object v0

    .line 1188
    :pswitch_b
    const-string/jumbo v0, "SEND_STATE_NEED_CONFIRMATION"

    return-object v0

    .line 1190
    :pswitch_f
    const-string/jumbo v0, "SEND_STATE_SENDING"

    return-object v0

    .line 1192
    :pswitch_13
    const-string/jumbo v0, "SEND_STATE_COMPLETE"

    return-object v0

    .line 1194
    :pswitch_17
    const-string/jumbo v0, "SEND_STATE_CANCELED"

    return-object v0

    .line 1184
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_3
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method beamDefaultDisabled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 569
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 570
    const/16 v3, 0x80

    .line 569
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 571
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_f

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_10

    .line 572
    :cond_f
    return v4

    .line 574
    :cond_10
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "android.nfc.disable_beam_default"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_1a

    move-result v2

    return v2

    .line 575
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1a
    move-exception v1

    .line 576
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method cancelSendNdefMessage()V
    .registers 3

    .prologue
    .line 679
    monitor-enter p0

    .line 680
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    if-eqz v0, :cond_b

    .line 681
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->cancel(Z)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    .line 678
    return-void

    .line 679
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method connectLlcpServices()V
    .registers 3

    .prologue
    .line 687
    monitor-enter p0

    .line 688
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_e

    .line 689
    const-string/jumbo v0, "NfcP2pLinkManager"

    const-string/jumbo v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_e
    new-instance v0, Lcom/android/nfc/P2pLinkManager$ConnectTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 692
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    .line 686
    return-void

    .line 687
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&feature=beam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 581
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 583
    .local v1, "appUri":Landroid/nfc/NdefRecord;
    invoke-static {p1}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 584
    .local v0, "appRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method disconnectLlcpServices()V
    .registers 3

    .prologue
    .line 588
    monitor-enter p0

    .line 589
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_e

    .line 590
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->cancel(Z)Z

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 594
    :cond_e
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v0, :cond_1a

    .line 595
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 598
    :cond_1a
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v0, :cond_26

    .line 599
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 602
    :cond_26
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v0, :cond_32

    .line 603
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 606
    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    monitor-exit p0

    .line 587
    return-void

    .line 588
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1214
    monitor-enter p0

    .line 1215
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsSendEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsReceiveEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLinkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->linkStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->sendStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCallbackNdef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMessageToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUrisToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_1 .. :try_end_b8} :catchall_ba

    monitor-exit p0

    .line 1213
    return-void

    .line 1214
    :catchall_ba
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableDisable(ZZ)V
    .registers 5
    .param p1, "sendEnable"    # Z
    .param p2, "receiveEnable"    # Z

    .prologue
    .line 309
    monitor-enter p0

    .line 310
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_26

    if-eqz p2, :cond_26

    .line 311
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->start()V

    .line 312
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->start()V

    .line 313
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->start()V

    .line 314
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_20

    .line 315
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    :cond_20
    :goto_20
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 328
    iput-boolean p2, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_52

    monitor-exit p0

    .line 308
    return-void

    .line 317
    :cond_26
    :try_start_26
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_20

    if-nez p2, :cond_20

    .line 318
    const-string/jumbo v0, "NfcP2pLinkManager"

    const-string/jumbo v1, "enableDisable: llcp deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 320
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->stop()V

    .line 321
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->stop()V

    .line 322
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->stop()V

    .line 323
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_20

    .line 324
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_51
    .catchall {:try_start_26 .. :try_end_51} :catchall_52

    goto :goto_20

    .line 309
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUrisToSend(Z)[Landroid/net/Uri;
    .registers 4
    .param p1, "generatePlayLink"    # Z

    .prologue
    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 473
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-nez v1, :cond_9

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    goto :goto_8
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x1

    .line 1024
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_140

    .line 1130
    :goto_7
    :pswitch_7
    return v5

    .line 1026
    :pswitch_8
    monitor-enter p0

    .line 1027
    :try_start_9
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer;->start()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    :cond_e
    :goto_e
    monitor-exit p0

    goto :goto_7

    .line 1026
    :catchall_10
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1031
    :pswitch_13
    monitor-enter p0

    .line 1032
    :try_start_14
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer;->stop()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    goto :goto_e

    .line 1031
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1036
    :pswitch_1d
    monitor-enter p0

    .line 1039
    const/4 v2, 0x1

    :try_start_1f
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1040
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pTimeoutWaitingForLink()V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_e

    .line 1036
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1044
    :pswitch_2a
    monitor-enter p0

    .line 1045
    :try_start_2b
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    .line 1048
    const-string/jumbo v2, "NfcP2pLinkManager"

    const-string/jumbo v3, "Debounce timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 1050
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1051
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 1052
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 1053
    const-string/jumbo v2, "NfcP2pLinkManager"

    const-string/jumbo v3, "onP2pOutOfRange()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pOutOfRange()V
    :try_end_53
    .catchall {:try_start_2b .. :try_end_53} :catchall_54

    goto :goto_e

    .line 1044
    :catchall_54
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1059
    :pswitch_57
    monitor-enter p0

    .line 1060
    :try_start_58
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_e

    .line 1063
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_63

    .line 1064
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1066
    :cond_63
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1067
    const-string/jumbo v2, "NfcP2pLinkManager"

    const-string/jumbo v3, "onP2pReceiveComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V
    :try_end_75
    .catchall {:try_start_58 .. :try_end_75} :catchall_76

    goto :goto_e

    .line 1059
    :catchall_76
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1072
    :pswitch_79
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 1073
    .local v1, "m":Landroid/nfc/NdefMessage;
    monitor-enter p0

    .line 1074
    :try_start_7e
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_e

    .line 1077
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_89

    .line 1078
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1080
    :cond_89
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1081
    const-string/jumbo v2, "NfcP2pLinkManager"

    const-string/jumbo v3, "onP2pReceiveComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1083
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    :try_end_a2
    .catchall {:try_start_7e .. :try_end_a2} :catchall_a4

    goto/16 :goto_e

    .line 1073
    :catchall_a4
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1087
    .end local v1    # "m":Landroid/nfc/NdefMessage;
    :pswitch_a7
    monitor-enter p0

    .line 1088
    const/4 v2, 0x0

    :try_start_a9
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1090
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_e

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_e

    .line 1093
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1094
    const-string/jumbo v2, "NfcP2pLinkManager"

    const-string/jumbo v3, "onP2pHandoverNotSupported()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverNotSupported()V
    :try_end_c4
    .catchall {:try_start_a9 .. :try_end_c4} :catchall_c6

    goto/16 :goto_e

    .line 1087
    :catchall_c6
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1099
    :pswitch_c9
    monitor-enter p0

    .line 1100
    const/4 v2, 0x0

    :try_start_cb
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1102
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_e

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_e

    .line 1105
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1106
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1107
    const-string/jumbo v2, "NfcP2pLinkManager"

    const-string/jumbo v3, "onP2pSendComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pSendComplete()V

    .line 1109
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_ee
    .catchall {:try_start_cb .. :try_end_ee} :catchall_11a

    if-eqz v2, :cond_e

    .line 1111
    :try_start_f0
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    iget-byte v3, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v2, v3}, Landroid/nfc/IAppCallback;->onNdefPushComplete(B)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f7} :catch_f9
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_11a

    goto/16 :goto_e

    .line 1112
    :catch_f9
    move-exception v0

    .line 1113
    .local v0, "e":Ljava/lang/Exception;
    :try_start_fa
    const-string/jumbo v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed NDEF completed callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_118
    .catchall {:try_start_fa .. :try_end_118} :catchall_11a

    goto/16 :goto_e

    .line 1099
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_11a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1119
    :pswitch_11d
    monitor-enter p0

    .line 1120
    const/4 v2, 0x0

    :try_start_11f
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1122
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_e

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_e

    .line 1125
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1126
    const-string/jumbo v2, "NfcP2pLinkManager"

    const-string/jumbo v3, "onP2pHandoverBusy()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverBusy()V
    :try_end_13a
    .catchall {:try_start_11f .. :try_end_13a} :catchall_13c

    goto/16 :goto_e

    .line 1119
    :catchall_13c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1024
    nop

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_79
        :pswitch_57
        :pswitch_c9
        :pswitch_8
        :pswitch_13
        :pswitch_a7
        :pswitch_7
        :pswitch_1d
        :pswitch_11d
    .end packed-switch
.end method

.method public isLlcpActive()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 337
    monitor-enter p0

    .line 338
    :try_start_2
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_a

    if-eq v1, v0, :cond_8

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 337
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onHandoverBusy()V
    .registers 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 661
    return-void
.end method

.method onHandoverUnsupported()V
    .registers 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 657
    return-void
.end method

.method public onLlcpActivated(B)V
    .registers 7
    .param p1, "peerLlcpVersion"    # B

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 392
    const-string/jumbo v0, "NfcP2pLinkManager"

    const-string/jumbo v1, "LLCP activated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    monitor-enter p0

    .line 394
    :try_start_d
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_16

    .line 395
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpActivated()V

    .line 397
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    .line 398
    iput-byte p1, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    .line 399
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_54

    packed-switch v0, :pswitch_data_a0

    :cond_23
    :goto_23
    monitor-exit p0

    .line 391
    return-void

    .line 401
    :pswitch_25
    :try_start_25
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->isP2pIdle()Z

    move-result v0

    if-nez v0, :cond_31

    .line 402
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v4, :cond_23

    .line 406
    :cond_31
    const-string/jumbo v0, "NfcP2pLinkManager"

    const-string/jumbo v1, "onP2pInRange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pInRange()V

    .line 409
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 412
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v4, :cond_57

    .line 413
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 414
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V
    :try_end_53
    .catchall {:try_start_25 .. :try_end_53} :catchall_54

    goto :goto_23

    .line 393
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0

    .line 418
    :cond_57
    const/4 v0, 0x1

    :try_start_58
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_6e

    .line 421
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser;->isHandoverSupported()Z

    move-result v0

    .line 420
    if-eqz v0, :cond_23

    .line 423
    :cond_6e
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 424
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7b

    .line 425
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    goto :goto_23

    .line 427
    :cond_7b
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    goto :goto_23

    .line 433
    :pswitch_7f
    const-string/jumbo v0, "NfcP2pLinkManager"

    const-string/jumbo v1, "Duplicate onLlcpActivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_58 .. :try_end_88} :catchall_54

    monitor-exit p0

    .line 434
    return-void

    .line 437
    :pswitch_8a
    const/4 v0, 0x2

    :try_start_8b
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 438
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v3, :cond_95

    .line 439
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v2, :cond_98

    .line 441
    :cond_95
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 443
    :cond_98
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_54

    goto :goto_23

    .line 399
    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_7f
        :pswitch_8a
    .end packed-switch
.end method

.method public onLlcpDeactivated()V
    .registers 4

    .prologue
    .line 614
    const-string/jumbo v1, "NfcP2pLinkManager"

    const-string/jumbo v2, "LLCP deactivated."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    monitor-enter p0

    .line 616
    :try_start_a
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v1, :cond_13

    .line 617
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v1}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpDeactivated()V

    .line 620
    :cond_13
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_24

    packed-switch v1, :pswitch_data_5c

    :goto_18
    monitor-exit p0

    .line 613
    return-void

    .line 623
    :pswitch_1a
    :try_start_1a
    const-string/jumbo v1, "NfcP2pLinkManager"

    const-string/jumbo v2, "Duplicate onLlcpDectivated()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_24

    goto :goto_18

    .line 615
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1

    .line 627
    :pswitch_27
    const/4 v1, 0x3

    :try_start_28
    iput v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "debounceTimeout":I
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    packed-switch v1, :pswitch_data_66

    .line 645
    :goto_30
    :pswitch_30
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 646
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_47

    .line 647
    const-string/jumbo v1, "NfcP2pLinkManager"

    const-string/jumbo v2, "onP2pSendDebounce()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v1}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V

    .line 650
    :cond_47
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 651
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->disconnectLlcpServices()V
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_24

    goto :goto_18

    .line 631
    :pswitch_4e
    const/4 v0, 0x0

    .line 632
    goto :goto_30

    .line 634
    :pswitch_50
    const/16 v0, 0xbb8

    .line 635
    goto :goto_30

    .line 637
    :pswitch_53
    const/16 v0, 0x1388

    .line 638
    goto :goto_30

    .line 640
    :pswitch_56
    const/16 v0, 0x1f4

    .line 641
    goto :goto_30

    .line 643
    :pswitch_59
    const/16 v0, 0xfa

    goto :goto_30

    .line 620
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_27
        :pswitch_1a
    .end packed-switch

    .line 629
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_50
        :pswitch_30
        :pswitch_53
        :pswitch_56
        :pswitch_59
    .end packed-switch
.end method

.method public onLlcpFirstPacketReceived()V
    .registers 7

    .prologue
    .line 453
    monitor-enter p0

    .line 454
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    sub-long v0, v2, v4

    .line 455
    .local v0, "totalTime":J
    const-string/jumbo v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to get first LLCP PDU"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    monitor-exit p0

    .line 452
    return-void

    .line 453
    .end local v0    # "totalTime":J
    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method onLlcpServicesConnected()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 698
    const-string/jumbo v0, "NfcP2pLinkManager"

    const-string/jumbo v1, "onLlcpServicesConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    monitor-enter p0

    .line 700
    :try_start_b
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_36

    if-eq v0, v2, :cond_11

    monitor-exit p0

    .line 701
    return-void

    .line 703
    :cond_11
    const/4 v0, 0x1

    :try_start_12
    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 704
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v2, :cond_28

    .line 705
    const-string/jumbo v0, "NfcP2pLinkManager"

    const-string/jumbo v1, "onP2pSendConfirmationRequested()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendConfirmationRequested()V
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_36

    :cond_26
    :goto_26
    monitor-exit p0

    .line 697
    return-void

    .line 707
    :cond_28
    :try_start_28
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    .line 708
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pResumeSend()V

    .line 709
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_36

    goto :goto_26

    .line 699
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onManualBeamInvoke(Landroid/nfc/BeamShareData;)V
    .registers 4
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .prologue
    .line 358
    monitor-enter p0

    .line 359
    :try_start_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    monitor-exit p0

    .line 360
    return-void

    .line 362
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v0}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 369
    :goto_1e
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-nez v0, :cond_34

    if-eqz p1, :cond_34

    .line 371
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_5f

    .line 372
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 377
    :cond_30
    :goto_30
    iget-object v0, p1, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 379
    :cond_34
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_44

    .line 380
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser;->isHandoverSupported()Z

    move-result v0

    .line 379
    if-eqz v0, :cond_53

    .line 381
    :cond_44
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 382
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pNfcTapRequested()V

    .line 383
    const/16 v0, 0x9

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_5c

    :cond_53
    monitor-exit p0

    .line 357
    return-void

    .line 366
    :cond_55
    const/4 v0, 0x0

    :try_start_56
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_5c

    goto :goto_1e

    .line 358
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 373
    :cond_5f
    :try_start_5f
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_30

    .line 374
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_5c

    goto :goto_30
.end method

.method public onP2pCanceled()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1162
    monitor-enter p0

    .line 1163
    const/4 v0, 0x6

    :try_start_3
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1164
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v1, :cond_12

    .line 1166
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1e

    :cond_10
    :goto_10
    monitor-exit p0

    .line 1161
    return-void

    .line 1167
    :cond_12
    :try_start_12
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 1170
    const/4 v0, 0x1

    const/16 v1, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_10

    .line 1162
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onP2pSendConfirmed()V
    .registers 2

    .prologue
    .line 1136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    .line 1135
    return-void
.end method

.method onReceiveComplete(Landroid/nfc/NdefMessage;)V
    .registers 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1017
    return-void
.end method

.method onReceiveHandover()V
    .registers 3

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1013
    return-void
.end method

.method onSendComplete(Landroid/nfc/NdefMessage;J)V
    .registers 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "elapsedRealtime"    # J

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 665
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 461
    monitor-enter p0

    .line 463
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android"

    .line 464
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 463
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_16} :catch_18
    .catchall {:try_start_1 .. :try_end_16} :catchall_23

    :goto_16
    monitor-exit p0

    .line 459
    return-void

    .line 465
    :catch_18
    move-exception v0

    .line 466
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_19
    const-string/jumbo v1, "NfcP2pLinkManager"

    const-string/jumbo v2, "Failed to retrieve PackageManager for user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_23

    goto :goto_16

    .line 461
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method prepareMessageToSend(Z)V
    .registers 16
    .param p1, "generatePlayLink"    # Z

    .prologue
    .line 477
    monitor-enter p0

    .line 478
    const/4 v11, 0x0

    :try_start_2
    iput-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 479
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 480
    iget-boolean v11, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_a0

    if-nez v11, :cond_d

    monitor-exit p0

    .line 481
    return-void

    .line 484
    :cond_d
    :try_start_d
    iget-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v11}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v3

    .line 485
    .local v3, "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_24

    .line 486
    const-string/jumbo v11, "NfcP2pLinkManager"

    const-string/jumbo v12, "Could not determine foreground UID."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_a0

    monitor-exit p0

    .line 487
    return-void

    .line 490
    :cond_24
    const/4 v11, 0x0

    :try_start_25
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/nfc/P2pLinkManager;->isBeamDisabled(I)Z

    move-result v11

    if-eqz v11, :cond_40

    .line 491
    const-string/jumbo v11, "NfcP2pLinkManager"

    const-string/jumbo v12, "Beam is disabled by policy."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_a0

    monitor-exit p0

    .line 492
    return-void

    .line 495
    :cond_40
    :try_start_40
    iget-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    if-eqz v11, :cond_74

    .line 496
    iget v11, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_a0

    move-result v11

    if-eqz v11, :cond_96

    .line 498
    :try_start_50
    iget-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    iget-byte v12, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v11, v12}, Landroid/nfc/IAppCallback;->createBeamShareData(B)Landroid/nfc/BeamShareData;

    move-result-object v10

    .line 499
    .local v10, "shareData":Landroid/nfc/BeamShareData;
    iget-object v11, v10, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 500
    iget-object v11, v10, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 501
    iget-object v11, v10, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    iput-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 502
    iget v11, v10, Landroid/nfc/BeamShareData;->flags:I

    iput v11, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_68} :catch_6a
    .catchall {:try_start_50 .. :try_end_68} :catchall_a0

    monitor-exit p0

    .line 503
    return-void

    .line 504
    .end local v10    # "shareData":Landroid/nfc/BeamShareData;
    :catch_6a
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6b
    const-string/jumbo v11, "NfcP2pLinkManager"

    const-string/jumbo v12, "Failed NDEF callback: "

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_74
    :goto_74
    iget-object v12, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    const/4 v11, 0x0

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v11}, Lcom/android/nfc/ForegroundUtils;->getForegroundPids(I)Ljava/util/List;

    move-result-object v2

    .line 520
    .local v2, "foregroundPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a3

    .line 521
    const-string/jumbo v11, "NfcP2pLinkManager"

    const-string/jumbo v12, "Could not determine foreground PID."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_6b .. :try_end_94} :catchall_a0

    monitor-exit p0

    .line 522
    return-void

    .line 511
    .end local v2    # "foregroundPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_96
    :try_start_96
    const-string/jumbo v11, "NfcP2pLinkManager"

    const-string/jumbo v12, "Last registered callback is not running in the foreground."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_96 .. :try_end_9f} :catchall_a0

    goto :goto_74

    .line 477
    .end local v3    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_a0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 525
    .restart local v2    # "foregroundPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a3
    const/4 v9, 0x0

    .line 527
    .local v9, "pkgName":Ljava/lang/String;
    :try_start_a4
    iget-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 528
    .local v6, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 529
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v9    # "pkgName":Ljava/lang/String;
    .local v5, "info$iterator":Ljava/util/Iterator;
    :cond_b7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_108

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 530
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "pid$iterator":Ljava/util/Iterator;
    :cond_c7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_106

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 531
    .local v7, "pid":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v12, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v11, v12, :cond_c7

    .line 532
    const-string/jumbo v11, "NfcP2pLinkManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "PID:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " Name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 537
    .end local v7    # "pid":Ljava/lang/Integer;
    :cond_106
    if-eqz v9, :cond_b7

    .line 542
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8    # "pid$iterator":Ljava/util/Iterator;
    :cond_108
    if-eqz v9, :cond_121

    .line 543
    if-eqz p1, :cond_112

    invoke-virtual {p0, v9}, Lcom/android/nfc/P2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15b

    .line 544
    :cond_112
    const-string/jumbo v11, "NfcP2pLinkManager"

    const-string/jumbo v12, "Disabling default Beam behavior"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 546
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 554
    :cond_121
    :goto_121
    const-string/jumbo v11, "NfcP2pLinkManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mMessageToSend = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string/jumbo v11, "NfcP2pLinkManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mUrisToSend = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_159
    .catchall {:try_start_a4 .. :try_end_159} :catchall_a0

    monitor-exit p0

    .line 476
    return-void

    .line 548
    :cond_15b
    :try_start_15b
    invoke-virtual {p0, v9}, Lcom/android/nfc/P2pLinkManager;->createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v11

    iput-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 549
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 550
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I
    :try_end_167
    .catchall {:try_start_15b .. :try_end_167} :catchall_a0

    goto :goto_121
.end method

.method scheduleTimeoutLocked(II)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1180
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1177
    return-void
.end method

.method sendNdefMessage()V
    .registers 3

    .prologue
    .line 671
    monitor-enter p0

    .line 672
    :try_start_1
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 673
    new-instance v0, Lcom/android/nfc/P2pLinkManager$SendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$SendTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 674
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    .line 670
    return-void

    .line 671
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNdefCallback(Landroid/nfc/IAppCallback;I)V
    .registers 4
    .param p1, "callbackNdef"    # Landroid/nfc/IAppCallback;
    .param p2, "callingUid"    # I

    .prologue
    .line 350
    monitor-enter p0

    .line 351
    :try_start_1
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    .line 352
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    .line 349
    return-void

    .line 350
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
