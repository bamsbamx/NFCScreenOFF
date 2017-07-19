.class public Lcom/android/nfc/cardemulation/NxpHostEmulationManager;
.super Lcom/android/nfc/cardemulation/HostEmulationManager;
.source "NxpHostEmulationManager.java"


# static fields
.field static final SCREEN_STATE_OFF:I = 0x1

.field static final SCREEN_STATE_ON_LOCKED:I = 0x2

.field static final SCREEN_STATE_ON_UNLOCKED:I = 0x3

.field static final TAG:Ljava/lang/String; = "NxpHostEmulationManager"


# instance fields
.field mScreenState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidCache"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 63
    sget-boolean v0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->DBG:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "NxpHostEmulationManager"

    const-string/jumbo v1, "NxpHostEmulationManager instantiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_10
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mScreenState:I

    .line 61
    return-void
.end method


# virtual methods
.method public onHostEmulationData([B)V
    .registers 13
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x3

    .line 73
    const-string/jumbo v7, "NxpHostEmulationManager"

    const-string/jumbo v8, "notifyHostEmulationData"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->findSelectAid([B)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "selectAid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 76
    .local v3, "resolvedService":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 77
    :try_start_12
    iget v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mState:I

    if-nez v7, :cond_21

    .line 78
    const-string/jumbo v7, "NxpHostEmulationManager"

    const-string/jumbo v9, "Got data in idle state."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_10e

    monitor-exit v8

    .line 79
    return-void

    .line 80
    :cond_21
    :try_start_21
    iget v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mState:I

    if-ne v7, v9, :cond_30

    .line 81
    const-string/jumbo v7, "NxpHostEmulationManager"

    const-string/jumbo v9, "Dropping APDU in STATE_W4_DECTIVATE"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_10e

    monitor-exit v8

    .line 82
    return-void

    .line 84
    :cond_30
    :try_start_30
    iget v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mScreenState:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_40

    .line 85
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_10e

    monitor-exit v8

    .line 86
    return-void

    .line 88
    :cond_40
    if-eqz v4, :cond_ef

    .line 89
    :try_start_42
    const-string/jumbo v7, "A000000476416E64726F6964484345"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 90
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->ANDROID_HCE_RESPONSE:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_10e

    monitor-exit v8

    .line 91
    return-void

    .line 93
    :cond_56
    :try_start_56
    iget-object v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v7, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 94
    .local v2, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    if-eqz v2, :cond_66

    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_71

    .line 96
    :cond_66
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z
    :try_end_6f
    .catchall {:try_start_56 .. :try_end_6f} :catchall_10e

    monitor-exit v8

    .line 97
    return-void

    .line 99
    :cond_71
    :try_start_71
    iput-object v4, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mLastSelectedAid:Ljava/lang/String;

    .line 100
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v7, :cond_ca

    .line 103
    iget-object v0, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 104
    .local v0, "defaultServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->requiresUnlock()Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 105
    iget-object v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    .line 104
    if-eqz v7, :cond_9b

    .line 105
    iget-object v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    .line 104
    if-eqz v7, :cond_9b

    .line 107
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mState:I

    .line 108
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    iget-object v9, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {p0, v7, v9}, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->launchTapAgain(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_71 .. :try_end_99} :catchall_10e

    monitor-exit v8

    .line 109
    return-void

    .line 113
    :cond_9b
    :try_start_9b
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v7

    if-nez v7, :cond_b5

    .line 114
    const-string/jumbo v7, "NxpHostEmulationManager"

    const-string/jumbo v9, "AID that was meant to go off-host was routed to host. Check routing table configuration."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z
    :try_end_b3
    .catchall {:try_start_9b .. :try_end_b3} :catchall_10e

    monitor-exit v8

    .line 117
    return-void

    .line 119
    :cond_b5
    :try_start_b5
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 128
    .end local v0    # "defaultServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v3    # "resolvedService":Landroid/content/ComponentName;
    :cond_b9
    :goto_b9
    if-nez v3, :cond_ef

    .line 132
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mState:I

    .line 133
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    .line 134
    iget-object v9, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 133
    const/4 v10, 0x0

    invoke-virtual {p0, v7, v10, v9}, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_b5 .. :try_end_c8} :catchall_10e

    monitor-exit v8

    .line 135
    return-void

    .line 120
    .restart local v3    # "resolvedService":Landroid/content/ComponentName;
    :cond_ca
    :try_start_ca
    iget-object v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    if-eqz v7, :cond_b9

    .line 121
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_d4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 122
    .local v5, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d4

    .line 123
    iget-object v3, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .local v3, "resolvedService":Landroid/content/ComponentName;
    goto :goto_b9

    .line 138
    .end local v2    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v3    # "resolvedService":Landroid/content/ComponentName;
    .end local v5    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v6    # "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_ef
    iget v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mState:I
    :try_end_f1
    .catchall {:try_start_ca .. :try_end_f1} :catchall_10e

    packed-switch v7, :pswitch_data_166

    :goto_f4
    :pswitch_f4
    monitor-exit v8

    .line 72
    return-void

    .line 140
    :pswitch_f6
    if-eqz v4, :cond_120

    .line 141
    :try_start_f8
    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v1

    .line 142
    .local v1, "existingService":Landroid/os/Messenger;
    if-eqz v1, :cond_111

    .line 143
    const-string/jumbo v7, "NxpHostEmulationManager"

    const-string/jumbo v9, "Binding to existing service"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mState:I

    .line 145
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    :try_end_10d
    .catchall {:try_start_f8 .. :try_end_10d} :catchall_10e

    goto :goto_f4

    .line 76
    .end local v1    # "existingService":Landroid/os/Messenger;
    :catchall_10e
    move-exception v7

    monitor-exit v8

    throw v7

    .line 148
    .restart local v1    # "existingService":Landroid/os/Messenger;
    :cond_111
    :try_start_111
    const-string/jumbo v7, "NxpHostEmulationManager"

    const-string/jumbo v9, "Waiting for new service."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mSelectApdu:[B

    .line 151
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mState:I

    goto :goto_f4

    .line 154
    .end local v1    # "existingService":Landroid/os/Messenger;
    :cond_120
    const-string/jumbo v7, "NxpHostEmulationManager"

    const-string/jumbo v9, "Dropping non-select APDU in STATE_W4_SELECT"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->UNKNOWN_ERROR:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z

    goto :goto_f4

    .line 159
    :pswitch_133
    const-string/jumbo v7, "NxpHostEmulationManager"

    const-string/jumbo v9, "Unexpected APDU in STATE_W4_SERVICE"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 162
    :pswitch_13d
    if-eqz v4, :cond_152

    .line 163
    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v1

    .line 164
    .restart local v1    # "existingService":Landroid/os/Messenger;
    if-eqz v1, :cond_14c

    .line 165
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    .line 166
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mState:I

    goto :goto_f4

    .line 169
    :cond_14c
    iput-object p1, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mSelectApdu:[B

    .line 170
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mState:I

    goto :goto_f4

    .line 172
    .end local v1    # "existingService":Landroid/os/Messenger;
    :cond_152
    iget-object v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eqz v7, :cond_15c

    .line 174
    iget-object v7, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, v7, p1}, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_f4

    .line 177
    :cond_15c
    const-string/jumbo v7, "NxpHostEmulationManager"

    const-string/jumbo v9, "Service no longer bound, dropping APDU"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_165
    .catchall {:try_start_111 .. :try_end_165} :catchall_10e

    goto :goto_f4

    .line 138
    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_f6
        :pswitch_133
        :pswitch_f4
        :pswitch_13d
    .end packed-switch
.end method

.method public setScreenState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/nfc/cardemulation/NxpHostEmulationManager;->mScreenState:I

    .line 68
    return-void
.end method
