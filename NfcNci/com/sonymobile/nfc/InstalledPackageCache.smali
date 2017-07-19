.class public Lcom/sonymobile/nfc/InstalledPackageCache;
.super Ljava/lang/Object;
.source "InstalledPackageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;,
        Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateHandler;,
        Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;,
        Lcom/sonymobile/nfc/InstalledPackageCache$SingletonHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MSG_UPDATE_PACKAGE_CACHE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InstalledPackageCache"


# instance fields
.field private final WATCH_ONLY_OWNER:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;

.field private volatile mWatchedUserId:I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/sonymobile/nfc/InstalledPackageCache;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/InstalledPackageCache;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/InstalledPackageCache;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mInstalledPackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/nfc/InstalledPackageCache;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/InstalledPackageCache;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mInstalledPackages:Ljava/util/List;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_14
    sput-boolean v0, Lcom/sonymobile/nfc/InstalledPackageCache;->DBG:Z

    .line 46
    return-void

    .line 48
    :cond_17
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mListeners:Ljava/util/List;

    .line 74
    sget-boolean v0, Lcom/sonymobile/nfc/InstalledPackageCache;->DBG:Z

    if-eqz v0, :cond_17

    const-string/jumbo v0, "InstalledPackageCache"

    const-string/jumbo v1, "singleton instance was created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_17
    iput-object p1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "InstalledPackageCache"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mHandlerThread:Landroid/os/HandlerThread;

    .line 77
    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateHandler;

    iget-object v1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateHandler;-><init>(Lcom/sonymobile/nfc/InstalledPackageCache;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/InstalledPackageCache;->shouldWatchOnlyOwner(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->WATCH_ONLY_OWNER:Z

    .line 80
    iget-boolean v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->WATCH_ONLY_OWNER:Z

    if-eqz v0, :cond_4a

    const/4 v0, 0x0

    :goto_40
    iput v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mWatchedUserId:I

    .line 81
    iget-boolean v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->WATCH_ONLY_OWNER:Z

    if-eqz v0, :cond_4f

    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/nfc/InstalledPackageCache;->update()V

    .line 73
    :goto_49
    return-void

    .line 80
    :cond_4a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_40

    .line 84
    :cond_4f
    iget v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mWatchedUserId:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/InstalledPackageCache;->onUserSwitched(I)V

    goto :goto_49
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/sonymobile/nfc/InstalledPackageCache;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/InstalledPackageCache;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/sonymobile/nfc/InstalledPackageCache;
    .registers 1

    .prologue
    .line 70
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache$SingletonHolder;->-get0()Lcom/sonymobile/nfc/InstalledPackageCache;

    move-result-object v0

    return-object v0
.end method

.method private shouldWatchOnlyOwner(Landroid/content/Context;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 183
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x1

    .line 186
    .local v5, "shouldWatchOnlyOwner":Z
    :try_start_5
    const-string/jumbo v6, "com.android.nfc"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 187
    .local v4, "resources":Landroid/content/res/Resources;
    const-string/jumbo v6, "enable_gsma_api_only_owner"

    .line 188
    const-string/jumbo v7, "bool"

    const-string/jumbo v8, "com.android.nfc"

    .line 187
    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 189
    .local v2, "id":I
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_1c} :catch_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1c} :catch_20

    move-result v5

    .line 196
    .end local v2    # "id":I
    .end local v4    # "resources":Landroid/content/res/Resources;
    .end local v5    # "shouldWatchOnlyOwner":Z
    :goto_1d
    return v5

    .line 190
    .restart local v5    # "shouldWatchOnlyOwner":Z
    :catch_1e
    move-exception v1

    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_1d

    .line 192
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_20
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1d
.end method


# virtual methods
.method public addListener(Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 115
    sget-boolean v0, Lcom/sonymobile/nfc/InstalledPackageCache;->DBG:Z

    if-eqz v0, :cond_26

    const-string/jumbo v0, "InstalledPackageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_26
    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2b
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    :try_start_1
    const-string/jumbo v2, "InstalledPackageCache"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    WATCH_ONLY_OWNER="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->WATCH_ONLY_OWNER:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    mWatchedUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mWatchedUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    sget-boolean v2, Lcom/sonymobile/nfc/InstalledPackageCache;->DBG:Z

    if-eqz v2, :cond_6e

    .line 172
    iget-object v2, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :cond_43
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 173
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_43

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_6b

    goto :goto_43

    .line 167
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v1    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_6b
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_6e
    monitor-exit p0

    .line 166
    return-void
.end method

.method public get()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sonymobile/nfc/InstalledPackageCache;->waitUpdated()V

    .line 107
    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mInstalledPackages:Ljava/util/List;

    return-object v0
.end method

.method public onUserSwitched(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->WATCH_ONLY_OWNER:Z

    if-eqz v0, :cond_10

    .line 141
    const-string/jumbo v0, "InstalledPackageCache"

    const-string/jumbo v1, "Receiver: Watching only owner packages. Ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_88

    monitor-exit p0

    .line 142
    return-void

    .line 144
    :cond_10
    :try_start_10
    iput p1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mWatchedUserId:I

    .line 145
    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mReceiver:Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;

    if-eqz v0, :cond_7f

    .line 146
    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mReceiver:Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    :goto_1d
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v3, "filter":Landroid/content/IntentFilter;
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 152
    .local v2, "uh":Landroid/os/UserHandle;
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mReceiver:Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 156
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mReceiver:Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 161
    sget-boolean v0, Lcom/sonymobile/nfc/InstalledPackageCache;->DBG:Z

    if-eqz v0, :cond_7a

    const-string/jumbo v0, "InstalledPackageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerPackageReceiver for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_10 .. :try_end_7a} :catchall_88

    :cond_7a
    monitor-exit p0

    .line 163
    invoke-virtual {p0}, Lcom/sonymobile/nfc/InstalledPackageCache;->update()V

    .line 138
    return-void

    .line 148
    .end local v2    # "uh":Landroid/os/UserHandle;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_7f
    :try_start_7f
    new-instance v0, Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;-><init>(Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mReceiver:Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_88

    goto :goto_1d

    .line 139
    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    iget-boolean v1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->WATCH_ONLY_OWNER:Z

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mWatchedUserId:I

    if-eqz v1, :cond_14

    .line 93
    const-string/jumbo v1, "InstalledPackageCache"

    const-string/jumbo v2, "Update: Watching only owner packages. ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_13
    return-void

    .line 95
    :cond_14
    const-string/jumbo v1, "InstalledPackageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update: Received update request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mWatchedUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object v1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mWatchedUserId:I

    invoke-virtual {v1, v5, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 98
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_13
.end method

.method public waitUpdated()V
    .registers 7

    .prologue
    .line 124
    sget-boolean v1, Lcom/sonymobile/nfc/InstalledPackageCache;->DBG:Z

    if-eqz v1, :cond_26

    const-string/jumbo v1, "InstalledPackageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wait for update, tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_26
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 127
    .local v0, "condition":Landroid/os/ConditionVariable;
    iget-object v1, p0, Lcom/sonymobile/nfc/InstalledPackageCache;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonymobile/nfc/InstalledPackageCache$1;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/nfc/InstalledPackageCache$1;-><init>(Lcom/sonymobile/nfc/InstalledPackageCache;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 133
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 135
    sget-boolean v1, Lcom/sonymobile/nfc/InstalledPackageCache;->DBG:Z

    if-eqz v1, :cond_5e

    const-string/jumbo v1, "InstalledPackageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updated, tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_5e
    return-void
.end method
