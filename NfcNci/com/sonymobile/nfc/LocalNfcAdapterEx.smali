.class public Lcom/sonymobile/nfc/LocalNfcAdapterEx;
.super Ljava/lang/Object;
.source "LocalNfcAdapterEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalNfcAdapterEx"

.field private static final TRANSITION_WAIT_LOOP_COUNT:I = 0x28

.field private static final TRANSITION_WAIT_SLEEP_TICK_MS:I = 0xfa


# instance fields
.field private mCondition:Landroid/os/ConditionVariable;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIClientBinder:Landroid/os/IBinder;

.field private mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/LocalNfcAdapterEx;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/LocalNfcAdapterEx;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/LocalNfcAdapterEx;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mIClientBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/LocalNfcAdapterEx;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mIClientBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonymobile/nfc/LocalNfcAdapterEx;Lcom/sonymobile/nfc/INfcAdapterEx;)Lcom/sonymobile/nfc/INfcAdapterEx;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonymobile/nfc/LocalNfcAdapterEx;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/LocalNfcAdapterEx;Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 4
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->setClient(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mCondition:Landroid/os/ConditionVariable;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mIClientBinder:Landroid/os/IBinder;

    .line 49
    new-instance v0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;-><init>(Lcom/sonymobile/nfc/LocalNfcAdapterEx;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mConnection:Landroid/content/ServiceConnection;

    .line 36
    return-void
.end method

.method private setClient(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 6
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/nfc/INfcAdapterEx;->setClient(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 242
    :catch_7
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocalNfcAdapterEx"

    const-string/jumbo v2, "setClient: Remote Service Died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 v1, -0x1

    return v1
.end method

.method private timedWaitForNfcStateTransition(I)Z
    .registers 6
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v2, 0x28

    if-ge v0, v2, :cond_17

    .line 250
    iget-object v2, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, p1, :cond_f

    .line 251
    return v1

    .line 253
    :cond_f
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 255
    :cond_17
    iget-object v2, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

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
.method public declared-synchronized clearEepromData()I
    .registers 4

    .prologue
    monitor-enter p0

    .line 227
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, -0x11

    monitor-exit p0

    return v1

    .line 229
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;

    invoke-interface {v1}, Lcom/sonymobile/nfc/INfcAdapterEx;->clearEepromData()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13
    .catchall {:try_start_b .. :try_end_10} :catchall_20

    move-result v1

    monitor-exit p0

    return v1

    .line 230
    :catch_13
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string/jumbo v1, "LocalNfcAdapterEx"

    const-string/jumbo v2, "clearEepromData: Remote Service Died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_20

    .line 232
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized close()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 112
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 113
    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->setClient(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2e

    .line 115
    :try_start_11
    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_18} :catch_23
    .catchall {:try_start_11 .. :try_end_18} :catchall_2e

    .line 120
    :cond_18
    :goto_18
    const/4 v1, 0x0

    :try_start_19
    iput-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mIClientBinder:Landroid/os/IBinder;

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_2e

    monitor-exit p0

    .line 111
    return-void

    .line 116
    :catch_23
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_24
    const-string/jumbo v1, "LocalNfcAdapterEx"

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

    .line 79
    :try_start_3
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6a

    move-result v4

    if-eqz v4, :cond_b

    monitor-exit p0

    return v5

    .line 81
    :cond_b
    :try_start_b
    iget-object v4, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mIClientBinder:Landroid/os/IBinder;

    if-nez v4, :cond_16

    .line 82
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mIClientBinder:Landroid/os/IBinder;

    .line 85
    :cond_16
    iput-object p1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/sonymobile/nfc/INfcAdapterEx;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 90
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 91
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_3b

    .line 92
    const-string/jumbo v4, "LocalNfcAdapterEx"

    const-string/jumbo v5, "Failed to locate INfcAdapterEx service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_6a

    monitor-exit p0

    .line 93
    return v6

    .line 95
    :cond_3b
    :try_start_3b
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 96
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 95
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v1, "name":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    iget-object v4, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 101
    iget-object v4, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mCondition:Landroid/os/ConditionVariable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 102
    iget-object v4, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    .line 105
    :cond_64
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z
    :try_end_67
    .catchall {:try_start_3b .. :try_end_67} :catchall_6a

    move-result v4

    monitor-exit p0

    return v4

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catchall_6a
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

    .line 139
    :try_start_3
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_26

    move-result v0

    if-nez v0, :cond_b

    monitor-exit p0

    return v2

    .line 140
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_26

    move-result v0

    if-ne v0, v1, :cond_15

    monitor-exit p0

    return v1

    .line 141
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_26

    move-result v0

    if-nez v0, :cond_1f

    monitor-exit p0

    return v2

    .line 142
    :cond_1f
    const/4 v0, 0x1

    :try_start_20
    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->timedWaitForNfcStateTransition(I)Z
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_26

    move-result v0

    monitor-exit p0

    return v0

    :catchall_26
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

    .line 129
    :try_start_3
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_27

    move-result v0

    if-nez v0, :cond_b

    monitor-exit p0

    return v1

    .line 130
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_27

    move-result v0

    if-ne v0, v2, :cond_16

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 131
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_27

    move-result v0

    if-nez v0, :cond_20

    monitor-exit p0

    return v1

    .line 132
    :cond_20
    const/4 v0, 0x3

    :try_start_21
    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->timedWaitForNfcStateTransition(I)Z
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_27

    move-result v0

    monitor-exit p0

    return v0

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 149
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v1

    if-nez v1, :cond_a

    monitor-exit p0

    return-object v3

    .line 151
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;

    invoke-interface {v1, p1}, Lcom/sonymobile/nfc/INfcAdapterEx;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_12
    .catchall {:try_start_a .. :try_end_f} :catchall_1e

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 152
    :catch_12
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v1, "LocalNfcAdapterEx"

    const-string/jumbo v2, "getProperty: Remote Service Died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    .line 154
    return-object v3

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;
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

.method public declared-synchronized readEepromDataByte(I[B)I
    .registers 6
    .param p1, "address"    # I
    .param p2, "data"    # [B

    .prologue
    monitor-enter p0

    .line 201
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, -0x11

    monitor-exit p0

    return v1

    .line 203
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/nfc/INfcAdapterEx;->readEepromDataByte(I[B)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13
    .catchall {:try_start_b .. :try_end_10} :catchall_20

    move-result v1

    monitor-exit p0

    return v1

    .line 204
    :catch_13
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string/jumbo v1, "LocalNfcAdapterEx"

    const-string/jumbo v2, "readEepromDataByte: Remote Service Died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_20

    .line 206
    const/4 v1, -0x6

    monitor-exit p0

    return v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 162
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, -0x11

    monitor-exit p0

    return v1

    .line 164
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/nfc/INfcAdapterEx;->setProperty(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13
    .catchall {:try_start_b .. :try_end_10} :catchall_20

    move-result v1

    monitor-exit p0

    return v1

    .line 165
    :catch_13
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string/jumbo v1, "LocalNfcAdapterEx"

    const-string/jumbo v2, "setProperty: Remote Service Died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_20

    .line 167
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setTestMode(Z)I
    .registers 5
    .param p1, "on"    # Z

    .prologue
    monitor-enter p0

    .line 175
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, -0x11

    monitor-exit p0

    return v1

    .line 177
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;

    invoke-interface {v1, p1}, Lcom/sonymobile/nfc/INfcAdapterEx;->setTestMode(Z)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13
    .catchall {:try_start_b .. :try_end_10} :catchall_20

    move-result v1

    monitor-exit p0

    return v1

    .line 178
    :catch_13
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string/jumbo v1, "LocalNfcAdapterEx"

    const-string/jumbo v2, "setTestMode: Remote Service Died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_20

    .line 180
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized test(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "testCase"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 188
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1e

    move-result v1

    if-nez v1, :cond_a

    monitor-exit p0

    return-object v3

    .line 190
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;

    invoke-interface {v1, p1}, Lcom/sonymobile/nfc/INfcAdapterEx;->test(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_12
    .catchall {:try_start_a .. :try_end_f} :catchall_1e

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 191
    :catch_12
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v1, "LocalNfcAdapterEx"

    const-string/jumbo v2, "test: Remote Service Died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    .line 193
    return-object v3

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized writeEepromDataByte(IB)I
    .registers 6
    .param p1, "address"    # I
    .param p2, "data"    # B

    .prologue
    monitor-enter p0

    .line 214
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, -0x11

    monitor-exit p0

    return v1

    .line 216
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->mINfcAdapterEx:Lcom/sonymobile/nfc/INfcAdapterEx;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/nfc/INfcAdapterEx;->writeEepromDataByte(IB)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13
    .catchall {:try_start_b .. :try_end_10} :catchall_20

    move-result v1

    monitor-exit p0

    return v1

    .line 217
    :catch_13
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string/jumbo v1, "LocalNfcAdapterEx"

    const-string/jumbo v2, "writeEepromDataByte: Remote Service Died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_20

    .line 219
    const/4 v1, -0x7

    monitor-exit p0

    return v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method
