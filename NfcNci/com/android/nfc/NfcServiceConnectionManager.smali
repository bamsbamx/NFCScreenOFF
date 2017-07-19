.class public Lcom/android/nfc/NfcServiceConnectionManager;
.super Ljava/lang/Object;
.source "NfcServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NfcServiceConnectionManager"

.field private static sManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/nfc/NfcServiceConnectionManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasStartedForAll:Z

.field private mHasStartedForOwner:Z

.field private mOwnerReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

.field private mReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/nfc/NfcServiceConnectionManager;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/NfcServiceConnectionManager;->DBG:Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/nfc/NfcServiceConnectionManager;->sManagers:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mHasStartedForOwner:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mHasStartedForAll:Z

    .line 46
    iput-object p1, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/nfc/NfcServiceConnectionManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-class v3, Lcom/android/nfc/NfcServiceConnectionManager;

    monitor-enter v3

    .line 50
    if-nez p0, :cond_8

    monitor-exit v3

    .line 51
    return-object v2

    .line 54
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "applicationContext":Landroid/content/Context;
    sget-object v2, Lcom/android/nfc/NfcServiceConnectionManager;->sManagers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/NfcServiceConnectionManager;

    .line 56
    .local v1, "manager":Lcom/android/nfc/NfcServiceConnectionManager;
    if-nez v1, :cond_20

    .line 57
    new-instance v1, Lcom/android/nfc/NfcServiceConnectionManager;

    .end local v1    # "manager":Lcom/android/nfc/NfcServiceConnectionManager;
    invoke-direct {v1, v0}, Lcom/android/nfc/NfcServiceConnectionManager;-><init>(Landroid/content/Context;)V

    .line 58
    .restart local v1    # "manager":Lcom/android/nfc/NfcServiceConnectionManager;
    sget-object v2, Lcom/android/nfc/NfcServiceConnectionManager;->sManagers:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v3

    .line 60
    return-object v1

    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v1    # "manager":Lcom/android/nfc/NfcServiceConnectionManager;
    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "isOwnerOnly"    # Z

    .prologue
    .line 72
    if-eqz p3, :cond_3a

    .line 73
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mOwnerReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    if-nez v0, :cond_f

    .line 74
    new-instance v0, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;-><init>(Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mOwnerReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    .line 76
    :cond_f
    sget-boolean v0, Lcom/android/nfc/NfcServiceConnectionManager;->DBG:Z

    if-eqz v0, :cond_34

    const-string/jumbo v0, "NfcServiceConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connection key ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] for owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_34
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mOwnerReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->add(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 71
    :goto_39
    return-void

    .line 79
    :cond_3a
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    if-nez v0, :cond_47

    .line 80
    new-instance v0, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;-><init>(Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    .line 82
    :cond_47
    sget-boolean v0, Lcom/android/nfc/NfcServiceConnectionManager;->DBG:Z

    if-eqz v0, :cond_6c

    const-string/jumbo v0, "NfcServiceConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connection key ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] for all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_6c
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->add(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_39
.end method

.method public declared-synchronized start()V
    .registers 7

    .prologue
    monitor-enter p0

    .line 91
    :try_start_1
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.sonymobile.nfc.action.SERVICE_CONNECTION_REQUEST"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mOwnerReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mHasStartedForOwner:Z

    if-eqz v0, :cond_1b

    .line 99
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mHasStartedForAll:Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_37

    if-eqz v0, :cond_3a

    :cond_19
    :goto_19
    monitor-exit p0

    .line 90
    return-void

    .line 94
    :cond_1b
    :try_start_1b
    sget-boolean v0, Lcom/android/nfc/NfcServiceConnectionManager;->DBG:Z

    if-eqz v0, :cond_28

    const-string/jumbo v0, "NfcServiceConnectionManager"

    const-string/jumbo v1, "Receiver for owner has started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_28
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mOwnerReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mHasStartedForOwner:Z
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_37

    goto :goto_11

    .end local v3    # "filter":Landroid/content/IntentFilter;
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 100
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    :cond_3a
    :try_start_3a
    sget-boolean v0, Lcom/android/nfc/NfcServiceConnectionManager;->DBG:Z

    if-eqz v0, :cond_47

    const-string/jumbo v0, "NfcServiceConnectionManager"

    const-string/jumbo v1, "Receiver for all has started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_47
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mHasStartedForAll:Z
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_37

    goto :goto_19
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mOwnerReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mHasStartedForOwner:Z

    if-eqz v0, :cond_20

    .line 111
    sget-boolean v0, Lcom/android/nfc/NfcServiceConnectionManager;->DBG:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "NfcServiceConnectionManager"

    const-string/jumbo v1, "Receiver for owner has stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_16
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mOwnerReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mHasStartedForOwner:Z

    .line 116
    :cond_20
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mHasStartedForAll:Z

    if-eqz v0, :cond_3f

    .line 117
    sget-boolean v0, Lcom/android/nfc/NfcServiceConnectionManager;->DBG:Z

    if-eqz v0, :cond_35

    const-string/jumbo v0, "NfcServiceConnectionManager"

    const-string/jumbo v1, "Receiver for all has stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_35
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mReceiver:Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcServiceConnectionManager;->mHasStartedForAll:Z
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit p0

    .line 109
    return-void

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method
