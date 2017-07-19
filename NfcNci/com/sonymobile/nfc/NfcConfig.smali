.class public Lcom/sonymobile/nfc/NfcConfig;
.super Ljava/lang/Object;
.source "NfcConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/NfcConfig$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcConfig"

.field private static final TRANSITION_WAIT_LOOP_COUNT:I = 0x28

.field private static final TRANSITION_WAIT_SLEEP_TICK_MS:I = 0xfa


# instance fields
.field private mCondition:Landroid/os/ConditionVariable;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIClientBinder:Landroid/os/IBinder;

.field private mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

.field private mIsLockSupported:Z

.field private mIsNfcEnabled:Z

.field private mIsNfcLocked:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/NfcConfig;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/NfcConfig;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/NfcConfig;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mIClientBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/NfcConfig;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/NfcConfig;->mIClientBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonymobile/nfc/NfcConfig;Lcom/sonymobile/nfc/INfcConfig;)Lcom/sonymobile/nfc/INfcConfig;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonymobile/nfc/NfcConfig;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/NfcConfig;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/NfcConfig;Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 4
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/nfc/NfcConfig;->setClient(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mCondition:Landroid/os/ConditionVariable;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mIClientBinder:Landroid/os/IBinder;

    .line 51
    iput-boolean v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mIsLockSupported:Z

    .line 52
    iput-boolean v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mIsNfcLocked:Z

    .line 53
    iput-boolean v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mIsNfcEnabled:Z

    .line 55
    new-instance v0, Lcom/sonymobile/nfc/NfcConfig$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/NfcConfig$1;-><init>(Lcom/sonymobile/nfc/NfcConfig;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mConnection:Landroid/content/ServiceConnection;

    .line 38
    return-void
.end method

.method private declared-synchronized forceChangeNfcLockState(Z)V
    .registers 6
    .param p1, "isNfcLock"    # Z

    .prologue
    monitor-enter p0

    .line 162
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.nfclock.NFCLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string/jumbo v1, "nfclockstate"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 166
    const-string/jumbo v3, "com.sonyericsson.android.felica.permission.ACCESS_FELICA_LOCK"

    .line 165
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 167
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    .line 161
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setClient(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 6
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/nfc/INfcConfig;->setClient(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 543
    :catch_7
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NfcConfig"

    const-string/jumbo v2, "setClient: Remote Service Died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    const/4 v1, -0x1

    return v1
.end method

.method private timedWaitForNfcStateTransition(I)Z
    .registers 6
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v2, 0x28

    if-ge v0, v2, :cond_17

    .line 551
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, p1, :cond_f

    .line 552
    return v1

    .line 554
    :cond_f
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 556
    :cond_17
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, p1, :cond_20

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public declared-synchronized antennaTest([B)[B
    .registers 7
    .param p1, "param"    # [B

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 225
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_25

    move-result v2

    if-nez v2, :cond_a

    monitor-exit p0

    return-object v4

    .line 227
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1}, Lcom/sonymobile/nfc/INfcConfig;->antennaTest([B)[B

    move-result-object v1

    .line 228
    .local v1, "ret":[B
    if-eqz v1, :cond_17

    array-length v2, v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_19
    .catchall {:try_start_a .. :try_end_13} :catchall_25

    if-gtz v2, :cond_17

    monitor-exit p0

    return-object v4

    :cond_17
    monitor-exit p0

    .line 229
    return-object v1

    .line 230
    .end local v1    # "ret":[B
    :catch_19
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1a
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in antennaTest(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_25

    monitor-exit p0

    .line 232
    return-object v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized close()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 118
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 119
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/sonymobile/nfc/NfcConfig;->setClient(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2e

    .line 121
    :try_start_11
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_18} :catch_23
    .catchall {:try_start_11 .. :try_end_18} :catchall_2e

    .line 126
    :cond_18
    :goto_18
    const/4 v1, 0x0

    :try_start_19
    iput-object v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mIClientBinder:Landroid/os/IBinder;

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_2e

    monitor-exit p0

    .line 117
    return-void

    .line 122
    :catch_23
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_24
    const-string/jumbo v1, "NfcConfig"

    const-string/jumbo v2, "service not bound"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2e

    goto :goto_18

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized connect(Landroid/content/Context;)Z
    .registers 10
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    monitor-enter p0

    .line 85
    :try_start_3
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_79

    move-result v4

    if-eqz v4, :cond_b

    monitor-exit p0

    return v5

    .line 87
    :cond_b
    :try_start_b
    iget-object v4, p0, Lcom/sonymobile/nfc/NfcConfig;->mIClientBinder:Landroid/os/IBinder;

    if-nez v4, :cond_16

    .line 88
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/nfc/NfcConfig;->mIClientBinder:Landroid/os/IBinder;

    .line 91
    :cond_16
    iput-object p1, p0, Lcom/sonymobile/nfc/NfcConfig;->mContext:Landroid/content/Context;

    .line 92
    iget-object v4, p0, Lcom/sonymobile/nfc/NfcConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonymobile/nfc/NfcConfig;->mIsLockSupported:Z

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/sonymobile/nfc/INfcConfig;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonymobile/nfc/NfcConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 96
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 97
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_4a

    .line 98
    const-string/jumbo v4, "NfcConfig"

    const-string/jumbo v5, "Failed to locate INfcConfig service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_79

    monitor-exit p0

    .line 99
    return v6

    .line 101
    :cond_4a
    :try_start_4a
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 102
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 101
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v1, "name":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 105
    iget-object v4, p0, Lcom/sonymobile/nfc/NfcConfig;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonymobile/nfc/NfcConfig;->mConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 107
    iget-object v4, p0, Lcom/sonymobile/nfc/NfcConfig;->mCondition:Landroid/os/ConditionVariable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 108
    iget-object v4, p0, Lcom/sonymobile/nfc/NfcConfig;->mCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    .line 111
    :cond_73
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_76
    .catchall {:try_start_4a .. :try_end_76} :catchall_79

    move-result v4

    monitor-exit p0

    return v4

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catchall_79
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized disable()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    .line 148
    :try_start_3
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    move-result v0

    if-nez v0, :cond_b

    monitor-exit p0

    return v2

    .line 149
    :cond_b
    :try_start_b
    iget-boolean v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mIsLockSupported:Z

    if-eqz v0, :cond_1a

    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/NfcConfig;->forceChangeNfcLockState(Z)V

    .line 155
    :cond_13
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/NfcConfig;->timedWaitForNfcStateTransition(I)Z
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_2e

    move-result v0

    monitor-exit p0

    return v0

    .line 152
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2e

    move-result v0

    if-ne v0, v1, :cond_24

    monitor-exit p0

    return v1

    .line 153
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2e

    move-result v0

    if-nez v0, :cond_13

    monitor-exit p0

    return v2

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()Z
    .registers 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    monitor-enter p0

    .line 135
    :try_start_3
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2f

    move-result v0

    if-nez v0, :cond_b

    monitor-exit p0

    return v1

    .line 136
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_2f

    move-result v0

    if-ne v0, v2, :cond_16

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 137
    :cond_16
    :try_start_16
    iget-boolean v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mIsLockSupported:Z

    if-eqz v0, :cond_1e

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/NfcConfig;->forceChangeNfcLockState(Z)V

    .line 140
    :cond_1e
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_2f

    move-result v0

    if-nez v0, :cond_28

    monitor-exit p0

    return v1

    .line 141
    :cond_28
    const/4 v0, 0x3

    :try_start_29
    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/NfcConfig;->timedWaitForNfcStateTransition(I)Z
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2f

    move-result v0

    monitor-exit p0

    return v0

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCardEmulationType()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 418
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 420
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2}, Lcom/sonymobile/nfc/INfcConfig;->getCardEmulationType()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 421
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 422
    return v1

    :cond_16
    monitor-exit p0

    .line 424
    return v4

    .line 426
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in getCardEmulationType(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 428
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getChipVersion()[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 214
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_a

    monitor-exit p0

    return-object v4

    .line 216
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2}, Lcom/sonymobile/nfc/INfcConfig;->getChipVersion()[B
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_12
    .catchall {:try_start_a .. :try_end_f} :catchall_1e

    move-result-object v1

    .local v1, "ret":[B
    monitor-exit p0

    .line 217
    return-object v1

    .line 218
    .end local v1    # "ret":[B
    :catch_12
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in getChipVersion():"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    .line 220
    return-object v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getDefaultValue(Ljava/lang/String;)I
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 523
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 525
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1}, Lcom/sonymobile/nfc/INfcConfig;->getDefaultValue(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 526
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 527
    return v1

    :cond_16
    monitor-exit p0

    .line 529
    return v4

    .line 531
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in getDefaultValue(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 533
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getP2pTargetMode()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 478
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 480
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2}, Lcom/sonymobile/nfc/INfcConfig;->getP2pTargetMode()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 481
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 482
    return v1

    :cond_16
    monitor-exit p0

    .line 484
    return v4

    .line 486
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in getP2pTargetMode(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 488
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getPollingMode()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 508
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 510
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2}, Lcom/sonymobile/nfc/INfcConfig;->getPollingMode()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 511
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 512
    return v1

    :cond_16
    monitor-exit p0

    .line 514
    return v4

    .line 516
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in getPollingMode(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 518
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getPollingTech()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 448
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 450
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2}, Lcom/sonymobile/nfc/INfcConfig;->getPollingTech()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 451
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 452
    return v1

    :cond_16
    monitor-exit p0

    .line 454
    return v4

    .line 456
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in getPollingTech(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 458
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getSecureElement()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 377
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 379
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2}, Lcom/sonymobile/nfc/INfcConfig;->getSecureElement()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 380
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 381
    return v1

    :cond_16
    monitor-exit p0

    .line 383
    return v4

    .line 385
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in getSecureElement(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 387
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getSecureElementList()[I
    .registers 6

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 392
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_a

    monitor-exit p0

    return-object v4

    .line 394
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2}, Lcom/sonymobile/nfc/INfcConfig;->getSecureElementList()[I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_12
    .catchall {:try_start_a .. :try_end_f} :catchall_1e

    move-result-object v1

    .local v1, "ret":[I
    monitor-exit p0

    .line 395
    return-object v1

    .line 396
    .end local v1    # "ret":[I
    :catch_12
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in getSecureElementList():"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    .line 398
    return-object v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNfcLocked()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 194
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v1

    if-nez v1, :cond_a

    monitor-exit p0

    return v3

    .line 196
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v1}, Lcom/sonymobile/nfc/INfcConfig;->isNfcLocked()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_12
    .catchall {:try_start_a .. :try_end_f} :catchall_1e

    move-result v1

    monitor-exit p0

    return v1

    .line 197
    :catch_12
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v1, "NfcConfig"

    const-string/jumbo v2, "RemoteException in isNfcLocked():"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    .line 199
    return v3

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized loadOriginalNfcSetting()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 183
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_26

    move-result v0

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 184
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->disable()Z

    .line 185
    iget-boolean v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mIsNfcEnabled:Z

    if-eqz v0, :cond_15

    .line 186
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_26

    :cond_13
    :goto_13
    monitor-exit p0

    .line 182
    return-void

    .line 187
    :cond_15
    :try_start_15
    iget-boolean v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mIsLockSupported:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mIsNfcLocked:Z

    if-nez v0, :cond_13

    .line 188
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    .line 189
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_26

    goto :goto_13

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prbsTestStart(II)I
    .registers 8
    .param p1, "tech"    # I
    .param p2, "bitrate"    # I

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 249
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 251
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1, p2}, Lcom/sonymobile/nfc/INfcConfig;->prbsTestStart(II)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 252
    .local v1, "ret":I
    if-gez v1, :cond_16

    monitor-exit p0

    return v4

    :cond_16
    monitor-exit p0

    .line 253
    return v1

    .line 254
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in prbsTestStart(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 256
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized prbsTestStop()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 261
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 263
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2}, Lcom/sonymobile/nfc/INfcConfig;->prbsTestStop()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 264
    .local v1, "ret":I
    if-gez v1, :cond_16

    monitor-exit p0

    return v4

    :cond_16
    monitor-exit p0

    .line 265
    return v1

    .line 266
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in prbsTestStop(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 268
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized readParameterValue(IZ)[B
    .registers 8
    .param p1, "addr"    # I
    .param p2, "isExtended"    # Z

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 286
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_a

    monitor-exit p0

    return-object v4

    .line 288
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1, p2}, Lcom/sonymobile/nfc/INfcConfig;->readParameterValue(IZ)[B
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_12
    .catchall {:try_start_a .. :try_end_f} :catchall_1e

    move-result-object v1

    .local v1, "ret":[B
    monitor-exit p0

    .line 289
    return-object v1

    .line 290
    .end local v1    # "ret":[B
    :catch_12
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in readRegisterDataByte(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    .line 292
    return-object v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized readTlvEncodedParameter([B)[B
    .registers 7
    .param p1, "idTlv"    # [B

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 309
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v2

    if-nez v2, :cond_a

    monitor-exit p0

    return-object v4

    .line 311
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1}, Lcom/sonymobile/nfc/INfcConfig;->readTlvEncodedParameter([B)[B
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_12
    .catchall {:try_start_a .. :try_end_f} :catchall_1e

    move-result-object v1

    .local v1, "ret":[B
    monitor-exit p0

    .line 312
    return-object v1

    .line 313
    .end local v1    # "ret":[B
    :catch_12
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in readTlvEncodedParameter(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    .line 315
    return-object v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized renewRouting(IIIIIZ)I
    .registers 15
    .param p1, "protocolSe"    # I
    .param p2, "techSe"    # I
    .param p3, "ce"    # I
    .param p4, "pollTech"    # I
    .param p5, "listenTech"    # I
    .param p6, "isLimitTech"    # Z

    .prologue
    monitor-enter p0

    .line 351
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_26

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, -0x11

    monitor-exit p0

    return v0

    .line 353
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sonymobile/nfc/INfcConfig;->renewRouting(IIIIIZ)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_19
    .catchall {:try_start_b .. :try_end_16} :catchall_26

    .line 354
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 355
    :catch_19
    move-exception v7

    .line 356
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1a
    const-string/jumbo v0, "NfcConfig"

    const-string/jumbo v1, "RemoteException in renewRouting(): "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_26

    .line 357
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveOriginalNfcSetting()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 174
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    move-result v0

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 175
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isNfcLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mIsNfcLocked:Z

    .line 176
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/NfcConfig;->mIsNfcEnabled:Z
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_19

    monitor-exit p0

    .line 173
    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendExtCmd([B)I
    .registers 7
    .param p1, "cmd"    # [B

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 320
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 322
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1}, Lcom/sonymobile/nfc/INfcConfig;->sendExtCmd([B)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 323
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 324
    return v1

    :cond_16
    monitor-exit p0

    .line 326
    return v4

    .line 328
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in sendExtCmd(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 330
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized sendExtCmdWithRb([B[B)I
    .registers 8
    .param p1, "cmd"    # [B
    .param p2, "res"    # [B

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 335
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 337
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1, p2}, Lcom/sonymobile/nfc/INfcConfig;->sendExtCmdWithRb([B[B)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 338
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 339
    return v1

    :cond_16
    monitor-exit p0

    .line 341
    return v4

    .line 343
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in sendExtCmdWithRb(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 345
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setCardEmulationType(I)I
    .registers 7
    .param p1, "tech"    # I

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 403
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 405
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1}, Lcom/sonymobile/nfc/INfcConfig;->setCardEmulationType(I)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 406
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 407
    return v1

    :cond_16
    monitor-exit p0

    .line 409
    return v4

    .line 411
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in setCardEmulationType(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 413
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setP2pTargetMode(I)I
    .registers 7
    .param p1, "tech"    # I

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 463
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 465
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1}, Lcom/sonymobile/nfc/INfcConfig;->setP2pTargetMode(I)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 466
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 467
    return v1

    :cond_16
    monitor-exit p0

    .line 469
    return v4

    .line 471
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in setP2pTargetMode(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 473
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPollingMode(I)I
    .registers 7
    .param p1, "mode"    # I

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 493
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 495
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1}, Lcom/sonymobile/nfc/INfcConfig;->setPollingMode(I)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 496
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 497
    return v1

    :cond_16
    monitor-exit p0

    .line 499
    return v4

    .line 501
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in setPollingMode(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 503
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPollingTech(I)I
    .registers 7
    .param p1, "tech"    # I

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 433
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 435
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1}, Lcom/sonymobile/nfc/INfcConfig;->setPollingTech(I)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 436
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 437
    return v1

    :cond_16
    monitor-exit p0

    .line 439
    return v4

    .line 441
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in SetPollingTech(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 443
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setSecureElement(I)I
    .registers 7
    .param p1, "se"    # I

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 362
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 364
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1}, Lcom/sonymobile/nfc/INfcConfig;->setSecureElement(I)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 365
    .local v1, "ret":I
    if-ltz v1, :cond_16

    monitor-exit p0

    .line 366
    return v1

    :cond_16
    monitor-exit p0

    .line 368
    return v4

    .line 370
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in setSecureElement(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 372
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTestMode(Z)I
    .registers 5
    .param p1, "on"    # Z

    .prologue
    monitor-enter p0

    .line 204
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, -0x11

    monitor-exit p0

    return v1

    .line 206
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v1, p1}, Lcom/sonymobile/nfc/INfcConfig;->setTestMode(Z)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13
    .catchall {:try_start_b .. :try_end_10} :catchall_20

    move-result v1

    monitor-exit p0

    return v1

    .line 207
    :catch_13
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string/jumbo v1, "NfcConfig"

    const-string/jumbo v2, "RemoteException in setTestMode():"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_20

    .line 209
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized swpTest(I)I
    .registers 7
    .param p1, "handle"    # I

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 237
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 239
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1}, Lcom/sonymobile/nfc/INfcConfig;->swpTest(I)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 240
    .local v1, "ret":I
    if-gez v1, :cond_16

    monitor-exit p0

    return v4

    :cond_16
    monitor-exit p0

    .line 241
    return v1

    .line 242
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in swpTest(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 244
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized writeParameterValue(II[BZ)I
    .registers 10
    .param p1, "address"    # I
    .param p2, "length"    # I
    .param p3, "data"    # [B
    .param p4, "isExtended"    # Z

    .prologue
    const/4 v4, -0x7

    monitor-enter p0

    .line 274
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 276
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sonymobile/nfc/INfcConfig;->writeParameterValue(II[BZ)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 277
    .local v1, "ret":I
    if-gez v1, :cond_16

    monitor-exit p0

    return v4

    :cond_16
    monitor-exit p0

    .line 278
    return v1

    .line 279
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in writeParameterValue(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 281
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized writeTlvEncodedParameter([B)I
    .registers 7
    .param p1, "dataTlv"    # [B

    .prologue
    const/4 v4, -0x7

    monitor-enter p0

    .line 297
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_24

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, -0x11

    monitor-exit p0

    return v2

    .line 299
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig;->mINfcConfig:Lcom/sonymobile/nfc/INfcConfig;

    invoke-interface {v2, p1}, Lcom/sonymobile/nfc/INfcConfig;->writeTlvEncodedParameter([B)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_18
    .catchall {:try_start_c .. :try_end_11} :catchall_24

    move-result v1

    .line 300
    .local v1, "ret":I
    if-gez v1, :cond_16

    monitor-exit p0

    return v4

    :cond_16
    monitor-exit p0

    .line 301
    return v1

    .line 302
    .end local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v2, "NfcConfig"

    const-string/jumbo v3, "RemoteException in writeTlvEncodedParameter(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_24

    monitor-exit p0

    .line 304
    return v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method
