.class public Lcom/android/nfc/cardemulation/EnabledNfcFServices;
.super Ljava/lang/Object;
.source "EnabledNfcFServices.java"

# interfaces
.implements Lcom/android/nfc/ForegroundUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "EnabledNfcFCardEmulationServices"


# instance fields
.field mActivated:Z

.field final mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

.field mComputeFgRequested:Z

.field final mContext:Landroid/content/Context;

.field mForegroundComponent:Landroid/content/ComponentName;

.field mForegroundRequested:Landroid/content/ComponentName;

.field mForegroundUid:I

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field final mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcFServiceCache"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;
    .param p3, "t3tIdentifiersCache"    # Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
    .param p4, "callback"    # Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    .line 44
    iput-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 45
    iput-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 48
    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 59
    iput-object p1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 61
    iput-object p3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 62
    iput-object p4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    .line 57
    return-void
.end method


# virtual methods
.method computeEnabledForegroundService()V
    .registers 6

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "foregroundRequested":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 69
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 70
    :try_start_5
    iget-boolean v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    if-eqz v2, :cond_17

    .line 71
    const-string/jumbo v2, "EnabledNfcFCardEmulationServices"

    const-string/jumbo v4, "configuration will be postponed until deactivation"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_4a

    monitor-exit v3

    .line 73
    return-void

    .line 75
    :cond_17
    const/4 v2, 0x0

    :try_start_18
    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 76
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 77
    .local v1, "foregroundRequested":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    if-eqz v2, :cond_2e

    .line 78
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_44

    .line 79
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 82
    :cond_2e
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_3b

    .line 83
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_4a

    .line 84
    const/4 v0, 0x1

    :cond_3b
    :goto_3b
    monitor-exit v3

    .line 88
    if-eqz v0, :cond_43

    .line 89
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    invoke-interface {v2, v1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;->onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V

    .line 65
    :cond_43
    return-void

    .line 80
    :cond_44
    :try_start_44
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_4a

    .line 81
    const/4 v0, 0x1

    .line 79
    goto :goto_3b

    .line 69
    .end local v1    # "foregroundRequested":Landroid/content/ComponentName;
    :catchall_4a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 217
    return-void
.end method

.method public onHostEmulationActivated()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 175
    return-void

    .line 177
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onHostEmulationDeactivated()V
    .registers 4

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "needComputeFg":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 187
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1c

    if-eqz v1, :cond_c

    .line 188
    const/4 v0, 0x1

    :cond_c
    monitor-exit v2

    .line 191
    if-eqz v0, :cond_1b

    .line 192
    const-string/jumbo v1, "EnabledNfcFCardEmulationServices"

    const-string/jumbo v2, "do postponed configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 182
    :cond_1b
    return-void

    .line 185
    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onNfcDisabled()V
    .registers 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    monitor-exit v1

    .line 197
    return-void

    .line 198
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServicesUpdated()V
    .registers 5

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_4
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_18

    .line 99
    const-string/jumbo v1, "EnabledNfcFCardEmulationServices"

    const-string/jumbo v3, "Removing foreground enabled service because of service update."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 101
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1f

    .line 102
    const/4 v0, 0x1

    :cond_18
    monitor-exit v2

    .line 105
    if-eqz v0, :cond_1e

    .line 106
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 93
    :cond_1e
    return-void

    .line 97
    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onUidToBackground(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->unregisterForegroundService(I)Z

    .line 170
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    monitor-exit v1

    .line 207
    return-void

    .line 208
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerEnabledForegroundService(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I

    .prologue
    const/4 v5, 0x0

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "success":Z
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 114
    :try_start_5
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 115
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 114
    invoke-virtual {v2, v4, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_61

    move-result-object v0

    .line 116
    .local v0, "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-nez v0, :cond_13

    monitor-exit v3

    .line 117
    return v5

    .line 119
    :cond_13
    :try_start_13
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "NULL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 120
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "NULL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_61

    move-result v2

    .line 119
    if-eqz v2, :cond_2f

    :cond_2d
    monitor-exit v3

    .line 121
    return v5

    .line 124
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 125
    const-string/jumbo v2, "EnabledNfcFCardEmulationServices"

    const-string/jumbo v4, "The servcie is already requested to the foreground service."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_61

    .line 126
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 128
    :cond_43
    :try_start_43
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v2, p0, p2}, Lcom/android/nfc/ForegroundUtils;->registerUidToBackgroundCallback(Lcom/android/nfc/ForegroundUtils$Callback;I)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 129
    iput-object p1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 130
    iput p2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_61

    .line 131
    const/4 v1, 0x1

    :goto_50
    monitor-exit v3

    .line 136
    if-eqz v1, :cond_56

    .line 137
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 139
    :cond_56
    return v1

    .line 133
    :cond_57
    :try_start_57
    const-string/jumbo v2, "EnabledNfcFCardEmulationServices"

    const-string/jumbo v4, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_61

    goto :goto_50

    .line 113
    .end local v0    # "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :catchall_61
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method unregisterForegroundService(I)Z
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "success":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_4
    iget v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    if-ne v1, p1, :cond_f

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 148
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_16

    .line 149
    const/4 v0, 0x1

    :cond_f
    monitor-exit v2

    .line 152
    if-eqz v0, :cond_15

    .line 153
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 155
    :cond_15
    return v0

    .line 145
    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisteredEnabledForegroundService(I)Z
    .registers 4
    .param p1, "callingUid"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v0, p1}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->unregisterForegroundService(I)Z

    move-result v0

    return v0

    .line 164
    :cond_d
    const-string/jumbo v0, "EnabledNfcFCardEmulationServices"

    const-string/jumbo v1, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    return v0
.end method
