.class public Lcom/android/nfc/cardemulation/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    }
.end annotation


# static fields
.field static final ACTION_ROUTING_TABLE_OVERFLOW:Ljava/lang/String; = "com.sonymobile.nfc.action.ROUTING_TABLE_OVERFLOW"

.field static final ACTION_UPDATE_ROUTING_TABLE:Ljava/lang/String; = "com.sonymobile.nfc.action.UPDATE_ROUTING_TABLE"

.field static final DEBUG:Z

.field static final EXTRA_DEFAULT_SERVICE:Ljava/lang/String; = "com.sonymobile.nfc.extra.DEFAULT_SERVICE"

.field static final EXTRA_GROUP_DESCRIPTIONS:Ljava/lang/String; = "com.sonymobile.nfc.extra.GROUP_DESCRIPTIONS"

.field static final SERVICE_STATE_FILE_VERSION:Ljava/lang/String; = "1.0"

.field static final TAG:Ljava/lang/String; = "RegisteredServicesCache"

.field static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field final mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

.field final mContext:Landroid/content/Context;

.field final mDynamicAidsFile:Landroid/util/AtomicFile;

.field final mGsmaCommitLock:Ljava/lang/Object;

.field final mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

.field private final mHceReceiver:Landroid/content/BroadcastReceiver;

.field public mInitialized:Z

.field final mLock:Ljava/lang/Object;

.field final mReceiver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final mServiceStateFile:Landroid/util/AtomicFile;

.field final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 106
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaCommitLock:Ljava/lang/Object;

    .line 111
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mInitialized:Z

    .line 802
    new-instance v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mHceReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 147
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .line 149
    new-instance v2, Lcom/gsma/services/GsmaDataSource;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/gsma/services/GsmaDataSource;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

    .line 151
    new-instance v17, Lcom/android/nfc/cardemulation/RegisteredServicesCache$2;

    invoke-direct/range {v17 .. v18}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$2;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    .line 174
    .local v17, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 176
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v2, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 187
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v9, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 193
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v13, "hceFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.sonymobile.nfc.action.UPDATE_ROUTING_TABLE"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mHceReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 196
    const-string/jumbo v14, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    const/4 v15, 0x0

    .line 195
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v16

    .line 199
    .local v16, "dataDir":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "dynamic_aids.xml"

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    .line 200
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "service_state.xml"

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    .line 145
    return-void
.end method

.method private findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 138
    .local v0, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    if-nez v0, :cond_15

    .line 139
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .end local v0    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-direct {v0, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;)V

    .line 140
    .restart local v0    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    :cond_15
    return-object v0
.end method

.method private getGroupDescriptions(ILjava/util/List;)Ljava/lang/String;
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 487
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "service$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 489
    .local v4, "service":Landroid/content/ComponentName;
    invoke-virtual {p0, p1, v4}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v6

    .line 490
    .local v6, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v6, :cond_9

    const-string/jumbo v7, "other"

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 491
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aidGroup$iterator":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 492
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "description":Ljava/lang/String;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2c

    .line 494
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string/jumbo v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 500
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v1    # "aidGroup$iterator":Ljava/util/Iterator;
    .end local v2    # "description":Ljava/lang/String;
    .end local v4    # "service":Landroid/content/ComponentName;
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_4e
    sget-boolean v7, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v7, :cond_70

    const-string/jumbo v7, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getGroupDescriptions="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private invalidateCache(IZ)Z
    .registers 32
    .param p1, "userId"    # I
    .param p2, "silent"    # Z

    .prologue
    .line 385
    invoke-virtual/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v24

    .line 386
    .local v24, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v24, :cond_9

    .line 387
    const/16 v25, 0x0

    return v25

    .line 389
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v6, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 391
    :try_start_15
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v23

    .line 395
    .local v23, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 396
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    :cond_27
    :goto_27
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6e

    .line 398
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 399
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v25

    if-nez v25, :cond_27

    .line 400
    const-string/jumbo v25, "RegisteredServicesCache"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Service removed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V
    :try_end_6a
    .catchall {:try_start_15 .. :try_end_6a} :catchall_6b

    goto :goto_27

    .line 390
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    .end local v23    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_6b
    move-exception v25

    monitor-exit v26

    throw v25

    .line 406
    .restart local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    .restart local v23    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_6e
    :try_start_6e
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "service$iterator":Ljava/util/Iterator;
    :cond_72
    :goto_72
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_98

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 407
    .local v19, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_72

    .line 408
    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 412
    .end local v19    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_98
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_9c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_f1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 413
    .restart local v19    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    sget-boolean v25, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v25, :cond_dd

    const-string/jumbo v25, "RegisteredServicesCache"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Adding service: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 414
    const-string/jumbo v28, " AIDs: "

    .line 413
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 414
    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v28

    .line 413
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_dd
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    .line 419
    .end local v19    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_f1
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v22, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    .line 420
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "entry$iterator":Ljava/util/Iterator;
    :cond_104
    :goto_104
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_15e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 423
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 424
    .local v3, "component":Landroid/content/ComponentName;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 425
    .local v5, "dynamicAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 426
    .local v21, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v21, :cond_13a

    invoke-virtual/range {v21 .. v21}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v25

    iget v0, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->uid:I

    move/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_140

    .line 427
    :cond_13a
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_104

    .line 430
    :cond_140
    iget-object v0, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "group$iterator":Ljava/util/Iterator;
    :goto_14c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_104

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/AidGroup;

    .line 431
    .local v10, "group":Landroid/nfc/cardemulation/AidGroup;
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V

    goto :goto_14c

    .line 436
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v5    # "dynamicAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v11    # "group$iterator":Ljava/util/Iterator;
    .end local v21    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_15e
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_1a3

    .line 437
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "component$iterator":Ljava/util/Iterator;
    :goto_168
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 438
    .restart local v3    # "component":Landroid/content/ComponentName;
    const-string/jumbo v25, "RegisteredServicesCache"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Removing dynamic AIDs registered by "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_168

    .line 442
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_1a0
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    .line 445
    .end local v4    # "component$iterator":Ljava/util/Iterator;
    :cond_1a3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v13, "gsmaStaticServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v12, "gsmaDynamicServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

    move-object/from16 v25, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/gsma/services/GsmaDataSource;->retrieveApduServiceInfos(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "s$iterator":Ljava/util/Iterator;
    :goto_1c3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1e1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 448
    .local v17, "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/nfc/cardemulation/ApduServiceInfo;->getIsDynamicallyDefined()Z

    move-result v25

    if-eqz v25, :cond_1db

    .line 449
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c3

    .line 451
    :cond_1db
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c3

    .line 454
    .end local v17    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1e1
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1e5
    :goto_1e5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_22e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 455
    .restart local v17    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v17 .. v17}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_218

    .line 456
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v17 .. v17}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_218
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 459
    .local v14, "idx":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v14, v0, :cond_1e5

    .line 460
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e5

    .line 464
    .end local v14    # "idx":I
    .end local v17    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_22e
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_232
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_259

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 465
    .restart local v17    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v17 .. v17}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_258
    .catchall {:try_start_6e .. :try_end_258} :catchall_6b

    goto :goto_232

    .end local v17    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_259
    monitor-exit v26

    .line 471
    const/16 v16, 0x1

    .line 472
    .local v16, "result":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mInitialized:Z

    move/from16 v25, v0

    if-eqz v25, :cond_29d

    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->detectOverflow(I)Z

    move-result v25

    if-eqz v25, :cond_29d

    .line 473
    const/16 v16, 0x0

    .line 474
    if-nez p2, :cond_29d

    .line 475
    sget-boolean v25, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v25, :cond_283

    const-string/jumbo v25, "RegisteredServicesCache"

    const-string/jumbo v26, "RoutingTable overflow when updating services"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_283
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->disableServices(ILjava/util/List;)V

    .line 477
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getGroupDescriptions(ILjava/util/List;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->launchHceSettings(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 481
    :cond_29d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v25

    move/from16 v1, p1

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 482
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/util/ArrayList;)V

    .line 483
    return v16
.end method

.method private readDynamicAidsLocked()V
    .registers 23

    .prologue
    .line 505
    const/4 v11, 0x0

    .line 507
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1b

    .line 508
    const-string/jumbo v20, "RegisteredServicesCache"

    const-string/jumbo v21, "Dynamic AIDs file does not exist."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void

    .line 511
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    .line 512
    .local v11, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 513
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-interface {v15, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 514
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .line 515
    .local v10, "eventType":I
    :goto_34
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v10, v0, :cond_45

    .line 516
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_45

    .line 517
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    goto :goto_34

    .line 519
    :cond_45
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 520
    .local v17, "tagName":Ljava/lang/String;
    const-string/jumbo v20, "services"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_177

    .line 521
    const/4 v14, 0x0

    .line 522
    .local v14, "inService":Z
    const/4 v3, 0x0

    .line 523
    .local v3, "currentComponent":Landroid/content/ComponentName;
    const/4 v5, -0x1

    .line 524
    .local v5, "currentUid":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .end local v3    # "currentComponent":Landroid/content/ComponentName;
    .local v4, "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    :goto_5e
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_177

    .line 526
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 527
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v10, v0, :cond_116

    .line 528
    const-string/jumbo v20, "service"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_ae

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_ae

    .line 529
    const-string/jumbo v20, "component"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "compString":Ljava/lang/String;
    const-string/jumbo v20, "uid"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 531
    .local v18, "uidString":Ljava/lang/String;
    if-eqz v2, :cond_a5

    if-nez v18, :cond_d7

    .line 532
    :cond_a5
    const-string/jumbo v20, "RegisteredServicesCache"

    const-string/jumbo v21, "Invalid service attributes"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .end local v2    # "compString":Ljava/lang/String;
    .end local v18    # "uidString":Ljava/lang/String;
    :cond_ae
    :goto_ae
    const-string/jumbo v20, "aid-group"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d2

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d2

    if-eqz v14, :cond_d2

    .line 544
    invoke-static {v15}, Landroid/nfc/cardemulation/AidGroup;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v12

    .line 545
    .local v12, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v12, :cond_105

    .line 546
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    .end local v12    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_d2
    :goto_d2
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d5} :catch_ec
    .catchall {:try_start_1 .. :try_end_d5} :catchall_10f

    move-result v10

    goto :goto_5e

    .line 535
    .restart local v2    # "compString":Ljava/lang/String;
    .restart local v18    # "uidString":Ljava/lang/String;
    :cond_d7
    :try_start_d7
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 536
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_d7 .. :try_end_de} :catch_e1
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_de} :catch_ec
    .catchall {:try_start_d7 .. :try_end_de} :catchall_10f

    move-result-object v3

    .line 537
    .local v3, "currentComponent":Landroid/content/ComponentName;
    const/4 v14, 0x1

    goto :goto_ae

    .line 538
    .end local v3    # "currentComponent":Landroid/content/ComponentName;
    :catch_e1
    move-exception v9

    .line 539
    .local v9, "e":Ljava/lang/NumberFormatException;
    :try_start_e2
    const-string/jumbo v20, "RegisteredServicesCache"

    const-string/jumbo v21, "Could not parse service uid"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_eb} :catch_ec
    .catchall {:try_start_e2 .. :try_end_eb} :catchall_10f

    goto :goto_ae

    .line 573
    .end local v2    # "compString":Ljava/lang/String;
    .end local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v5    # "currentUid":I
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "eventType":I
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "inService":Z
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "uidString":Ljava/lang/String;
    :catch_ec
    move-exception v8

    .line 574
    .local v8, "e":Ljava/lang/Exception;
    :try_start_ed
    const-string/jumbo v20, "RegisteredServicesCache"

    const-string/jumbo v21, "Could not parse dynamic AIDs file, trashing."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->delete()V
    :try_end_ff
    .catchall {:try_start_ed .. :try_end_ff} :catchall_10f

    .line 577
    if-eqz v11, :cond_104

    .line 579
    :try_start_101
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_17f

    .line 504
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_104
    :goto_104
    return-void

    .line 548
    .restart local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v5    # "currentUid":I
    .restart local v10    # "eventType":I
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "group":Landroid/nfc/cardemulation/AidGroup;
    .restart local v14    # "inService":Z
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "tagName":Ljava/lang/String;
    :cond_105
    :try_start_105
    const-string/jumbo v20, "RegisteredServicesCache"

    const-string/jumbo v21, "Could not parse AID group."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_10e} :catch_ec
    .catchall {:try_start_105 .. :try_end_10e} :catchall_10f

    goto :goto_d2

    .line 576
    .end local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v5    # "currentUid":I
    .end local v10    # "eventType":I
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v14    # "inService":Z
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tagName":Ljava/lang/String;
    :catchall_10f
    move-exception v20

    .line 577
    if-eqz v11, :cond_115

    .line 579
    :try_start_112
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_181

    .line 576
    :cond_115
    :goto_115
    throw v20

    .line 551
    .restart local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v5    # "currentUid":I
    .restart local v10    # "eventType":I
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "inService":Z
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "tagName":Ljava/lang/String;
    :cond_116
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v10, v0, :cond_d2

    .line 552
    :try_start_11c
    const-string/jumbo v20, "service"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d2

    .line 554
    if-eqz v3, :cond_16f

    if-ltz v5, :cond_16f

    .line 555
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_16f

    .line 556
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 557
    .local v19, "userId":I
    new-instance v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    invoke-direct {v6, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;-><init>(I)V

    .line 558
    .local v6, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "group$iterator":Ljava/util/Iterator;
    :goto_140
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_15c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/AidGroup;

    .line 559
    .restart local v12    # "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v0, v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual {v12}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_140

    .line 561
    .end local v12    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_15c
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v16

    .line 562
    .local v16, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .end local v6    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v13    # "group$iterator":Ljava/util/Iterator;
    .end local v16    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v19    # "userId":I
    :cond_16f
    const/4 v5, -0x1

    .line 565
    const/4 v3, 0x0

    .line 566
    .local v3, "currentComponent":Landroid/content/ComponentName;
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_174} :catch_ec
    .catchall {:try_start_11c .. :try_end_174} :catchall_10f

    .line 567
    const/4 v14, 0x0

    goto/16 :goto_d2

    .line 577
    .end local v3    # "currentComponent":Landroid/content/ComponentName;
    .end local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v5    # "currentUid":I
    .end local v14    # "inService":Z
    :cond_177
    if-eqz v11, :cond_104

    .line 579
    :try_start_179
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_17d

    goto :goto_104

    .line 580
    :catch_17d
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    goto :goto_104

    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "eventType":I
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tagName":Ljava/lang/String;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_17f
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_104

    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_181
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_115
.end method

.method private writeDynamicAidsLocked()Z
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 587
    const/4 v1, 0x0

    .line 589
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 590
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 591
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v9, "utf-8"

    invoke-interface {v5, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 592
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 593
    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 594
    const-string/jumbo v9, "services"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_bb

    .line 596
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 597
    .local v8, "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v9, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "service$iterator":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 598
    .local v6, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    const-string/jumbo v9, "service"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 599
    const-string/jumbo v10, "component"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    const-string/jumbo v10, "uid"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    iget v9, v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    iget-object v9, v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "group$iterator":Ljava/util/Iterator;
    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 602
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2, v5}, Landroid/nfc/cardemulation/AidGroup;->writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9b} :catch_9c

    goto :goto_8c

    .line 611
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v3    # "group$iterator":Ljava/util/Iterator;
    .end local v4    # "i":I
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .end local v7    # "service$iterator":Ljava/util/Iterator;
    .end local v8    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catch_9c
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "RegisteredServicesCache"

    const-string/jumbo v10, "Error writing dynamic AIDs"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    if-eqz v1, :cond_ad

    .line 614
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 616
    :cond_ad
    const/4 v9, 0x0

    return v9

    .line 604
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "group$iterator":Ljava/util/Iterator;
    .restart local v4    # "i":I
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .restart local v7    # "service$iterator":Ljava/util/Iterator;
    .restart local v8    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_af
    :try_start_af
    const-string/jumbo v9, "service"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_45

    .line 595
    .end local v3    # "group$iterator":Ljava/util/Iterator;
    .end local v6    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    :cond_b7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2b

    .line 607
    .end local v7    # "service$iterator":Ljava/util/Iterator;
    .end local v8    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_bb
    const-string/jumbo v9, "services"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 609
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_ca} :catch_9c

    .line 610
    return v12
.end method


# virtual methods
.method public commitApduServiceInfo(Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    .registers 9
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "isOverflowed":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-ne v2, v3, :cond_63

    .line 261
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaCommitLock:Ljava/lang/Object;

    monitor-enter v3

    .line 262
    :try_start_e
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

    .line 263
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 262
    invoke-virtual {v2, v4, v5, v6}, Lcom/gsma/services/GsmaDataSource;->getApduServiceInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 266
    .local v1, "oldService":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

    invoke-virtual {v2, p1}, Lcom/gsma/services/GsmaDataSource;->commitApduServiceInfo(Landroid/nfc/cardemulation/ApduServiceInfo;)V

    .line 267
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(IZ)Z

    move-result v2

    if-nez v2, :cond_58

    .line 268
    if-nez v1, :cond_5a

    .line 269
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

    .line 270
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-virtual {v2, v4, v5}, Lcom/gsma/services/GsmaDataSource;->deleteApduServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_4f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(IZ)Z
    :try_end_57
    .catchall {:try_start_e .. :try_end_57} :catchall_60

    .line 276
    const/4 v0, 0x1

    :cond_58
    monitor-exit v3

    .line 282
    .end local v1    # "oldService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_59
    return v0

    .line 273
    .restart local v1    # "oldService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_5a
    :try_start_5a
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

    invoke-virtual {v2, v1}, Lcom/gsma/services/GsmaDataSource;->commitApduServiceInfo(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_60

    goto :goto_4f

    .line 261
    .end local v1    # "oldService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catchall_60
    move-exception v2

    monitor-exit v3

    throw v2

    .line 280
    :cond_63
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

    invoke-virtual {v2, p1}, Lcom/gsma/services/GsmaDataSource;->commitApduServiceInfo(Landroid/nfc/cardemulation/ApduServiceInfo;)V

    goto :goto_59
.end method

.method containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .registers 6
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 219
    .local v0, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    return v2

    .line 221
    .end local v0    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method public deleteApduServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/GsmaDataSource;->deleteApduServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 317
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 314
    :cond_16
    return-void
.end method

.method disableServices(ILjava/util/List;)V
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 755
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    sget-boolean v7, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v7, :cond_22

    const-string/jumbo v7, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "disableServices : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_22
    if-eqz p2, :cond_2a

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2b

    :cond_2a
    return-void

    .line 758
    :cond_2b
    const/4 v2, 0x0

    .line 759
    .local v2, "isDirty":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 762
    const-string/jumbo v8, "nfc_disabled_services"

    .line 761
    invoke-static {v7, v8, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 763
    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_46

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 767
    :cond_46
    :goto_46
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "service$iterator":Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_83

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 768
    .local v4, "service":Landroid/content/ComponentName;
    invoke-virtual {p0, p1, v4}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 769
    .local v0, "asInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_4a

    const-string/jumbo v7, "other"

    invoke-virtual {v0, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 770
    invoke-virtual {v4}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    .line 771
    .local v1, "hash":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4a

    .line 772
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const/4 v2, 0x1

    goto :goto_4a

    .line 764
    .end local v0    # "asInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v1    # "hash":I
    .end local v4    # "service":Landroid/content/ComponentName;
    .end local v5    # "service$iterator":Ljava/util/Iterator;
    :cond_7f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 779
    .restart local v5    # "service$iterator":Ljava/util/Iterator;
    :cond_83
    if-eqz v2, :cond_95

    .line 780
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 781
    const-string/jumbo v8, "nfc_disabled_services"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 780
    invoke-static {v7, v8, v9, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 754
    :cond_95
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 742
    const-string/jumbo v3, "Registered HCE services for current user: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 744
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 745
    .local v0, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0, p1, p2, p3}, Landroid/nfc/cardemulation/ApduServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 746
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    .line 748
    .end local v0    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_2e
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    const-string/jumbo v3, "GSMA dynamically registered off-host services for all users:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

    invoke-virtual {v3, p1, p2, p3}, Lcom/gsma/services/GsmaDataSource;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 751
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method dump(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 213
    .local v0, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "RegisteredServicesCache"

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 211
    .end local v0    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1f
    return-void
.end method

.method public getAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 686
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 687
    .local v0, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_1c

    .line 688
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v1

    if-eq v1, p2, :cond_17

    .line 689
    const-string/jumbo v1, "RegisteredServicesCache"

    const-string/jumbo v2, "UID mismatch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return-object v4

    .line 692
    :cond_17
    invoke-virtual {v0, p4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v1

    return-object v1

    .line 694
    :cond_1c
    const-string/jumbo v1, "RegisteredServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not find service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-object v4
.end method

.method getInstalledServices(I)Ljava/util/ArrayList;
    .registers 23
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "android"

    .line 329
    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 328
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_23} :catch_df

    move-result-object v9

    .line 335
    .local v9, "pm":Landroid/content/pm/PackageManager;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v16, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v18, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    const/16 v18, 0x80

    .line 337
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v13

    .line 342
    .local v13, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v18, "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    const/16 v18, 0x80

    .line 341
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 344
    .local v10, "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 346
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "resolvedService$iterator":Ljava/util/Iterator;
    :cond_58
    :goto_58
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_15b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 348
    .local v11, "resolvedService":Landroid/content/pm/ResolveInfo;
    :try_start_64
    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_ec

    const/4 v8, 0x0

    .line 349
    .local v8, "onHost":Z
    :goto_6b
    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 350
    .local v15, "si":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .local v4, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v17, "android.permission.NFC"

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_ef

    .line 354
    const-string/jumbo v17, "RegisteredServicesCache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Skipping application component "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 355
    const-string/jumbo v19, ": it must request the permission "

    .line 354
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 356
    const-string/jumbo v19, "android.permission.NFC"

    .line 354
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_b9} :catch_ba
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_b9} :catch_128

    goto :goto_58

    .line 370
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "onHost":Z
    .end local v15    # "si":Landroid/content/pm/ServiceInfo;
    :catch_ba
    move-exception v7

    .line 371
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v17, "RegisteredServicesCache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unable to load component info "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_58

    .line 330
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .end local v12    # "resolvedService$iterator":Ljava/util/Iterator;
    .end local v13    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :catch_df
    move-exception v5

    .line 331
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v17, "RegisteredServicesCache"

    const-string/jumbo v18, "Could not create user package context"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/16 v17, 0x0

    return-object v17

    .line 348
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "resolvedService$iterator":Ljava/util/Iterator;
    .restart local v13    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_ec
    const/4 v8, 0x1

    .restart local v8    # "onHost":Z
    goto/16 :goto_6b

    .line 359
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v15    # "si":Landroid/content/pm/ServiceInfo;
    :cond_ef
    :try_start_ef
    const-string/jumbo v17, "android.permission.BIND_NFC_SERVICE"

    .line 360
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 359
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14d

    .line 361
    const-string/jumbo v17, "RegisteredServicesCache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Skipping APDU service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 362
    const-string/jumbo v19, ": it does not require the permission "

    .line 361
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 363
    const-string/jumbo v19, "android.permission.BIND_NFC_SERVICE"

    .line 361
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ef .. :try_end_126} :catch_ba
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_126} :catch_128

    goto/16 :goto_58

    .line 372
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "onHost":Z
    .end local v15    # "si":Landroid/content/pm/ServiceInfo;
    :catch_128
    move-exception v6

    .line 373
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v17, "RegisteredServicesCache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unable to load component info "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_58

    .line 366
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "onHost":Z
    .restart local v15    # "si":Landroid/content/pm/ServiceInfo;
    :cond_14d
    :try_start_14d
    new-instance v14, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-direct {v14, v9, v11, v8}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V

    .line 367
    .local v14, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v14, :cond_58

    .line 368
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14d .. :try_end_159} :catch_ba
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_159} :catch_128

    goto/16 :goto_58

    .line 377
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "onHost":Z
    .end local v11    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .end local v14    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v15    # "si":Landroid/content/pm/ServiceInfo;
    :cond_15b
    return-object v16
.end method

.method public getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 230
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v0

    .line 231
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v2

    return-object v1

    .line 229
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getServices(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 238
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 239
    .local v1, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_17

    monitor-exit v3

    .line 241
    return-object v0

    .line 237
    .end local v1    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_17
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getServicesForCategory(ILjava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v2, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 247
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v3

    .line 248
    .local v3, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v4, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 249
    .local v0, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_16

    invoke-virtual {v0, p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 250
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->setByteArrayBanner([B)V

    .line 251
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_32

    goto :goto_16

    .line 246
    .end local v0    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v1    # "service$iterator":Ljava/util/Iterator;
    .end local v3    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_32
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "service$iterator":Ljava/util/Iterator;
    .restart local v3    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_35
    monitor-exit v5

    .line 255
    return-object v2
.end method

.method public gsmaGetNewUuid(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

    invoke-virtual {v0, p1}, Lcom/gsma/services/GsmaDataSource;->getNewUuid(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public hasService(ILandroid/content/ComponentName;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method initialize()V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->readDynamicAidsLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    monitor-exit v0

    .line 207
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mInitialized:Z

    .line 203
    return-void

    .line 204
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public invalidateCache(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(IZ)Z

    .line 380
    return-void
.end method

.method public launchHceSettings(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 786
    sget-boolean v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "RegisteredServicesCache"

    const-string/jumbo v2, "Overflow happen, launch HceSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.nfc.action.ROUTING_TABLE_OVERFLOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 788
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.nfc.extra.DEFAULT_SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 789
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 790
    const-string/jumbo v3, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    .line 789
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public launchHceSettings(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "descriptions"    # Ljava/lang/String;

    .prologue
    .line 794
    sget-boolean v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "RegisteredServicesCache"

    const-string/jumbo v2, "Overflow happen, launch HceSettings with group description"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.nfc.action.ROUTING_TABLE_OVERFLOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.nfc.extra.DEFAULT_SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 797
    const-string/jumbo v1, "com.sonymobile.nfc.extra.GROUP_DESCRIPTIONS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 799
    const-string/jumbo v3, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    .line 798
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public registerAidGroupForService(IILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    .registers 19
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .prologue
    .line 622
    const/4 v6, 0x0

    .line 624
    .local v6, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 625
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v8

    .line 627
    .local v8, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v7

    .line 628
    .local v7, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-nez v7, :cond_36

    .line 629
    const-string/jumbo v10, "RegisteredServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " does not exist."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_118

    .line 630
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    .line 632
    :cond_36
    :try_start_36
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v10

    move/from16 v0, p2

    if-eq v10, v0, :cond_4a

    .line 637
    const-string/jumbo v10, "RegisteredServicesCache"

    const-string/jumbo v12, "UID mismatch."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_118

    .line 638
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    .line 642
    :cond_4a
    :try_start_4a
    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v3

    .line 643
    .local v3, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "aid$iterator":Ljava/util/Iterator;
    :cond_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 644
    .local v1, "aid":Ljava/lang/String;
    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_52

    .line 645
    const-string/jumbo v10, "RegisteredServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is not a valid AID"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_4a .. :try_end_85} :catchall_118

    .line 646
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    .line 649
    .end local v1    # "aid":Ljava/lang/String;
    :cond_88
    :try_start_88
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V

    .line 650
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 651
    .local v4, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    if-nez v4, :cond_a7

    .line 652
    new-instance v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .end local v4    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    move/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;-><init>(I)V

    .line 653
    .restart local v4    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :cond_a7
    iget-object v10, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v10, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    move-result v9

    .line 657
    .local v9, "success":Z
    if-eqz v9, :cond_105

    .line 658
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c3
    .catchall {:try_start_88 .. :try_end_c3} :catchall_118

    :goto_c3
    monitor-exit v11

    .line 665
    if-eqz v9, :cond_104

    .line 666
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/nfc/NfcService;->detectOverflow(I)Z

    move-result v10

    if-eqz v10, :cond_ff

    .line 667
    sget-boolean v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v10, :cond_dd

    const-string/jumbo v10, "RegisteredServicesCache"

    const-string/jumbo v11, "RoutingTable overflow when dynamic AID registration"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_dd
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v5, "dynamicServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p3

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-virtual {p0, p1, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->disableServices(ILjava/util/List;)V

    .line 671
    const-string/jumbo v10, "other"

    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11b

    .line 672
    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v11, v10}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->launchHceSettings(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 679
    .end local v5    # "dynamicServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_ff
    :goto_ff
    iget-object v10, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v10, p1, v6}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 681
    :cond_104
    return v9

    .line 660
    .restart local v6    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_105
    :try_start_105
    const-string/jumbo v10, "RegisteredServicesCache"

    const-string/jumbo v12, "Failed to persist AID group."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v10, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_117
    .catchall {:try_start_105 .. :try_end_117} :catchall_118

    goto :goto_c3

    .line 624
    .end local v2    # "aid$iterator":Ljava/util/Iterator;
    .end local v3    # "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v6    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v7    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v8    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v9    # "success":Z
    :catchall_118
    move-exception v10

    monitor-exit v11

    throw v10

    .line 674
    .restart local v2    # "aid$iterator":Ljava/util/Iterator;
    .restart local v3    # "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .restart local v5    # "dynamicServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v7    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v8    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .restart local v9    # "success":Z
    :cond_11b
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->launchHceSettings(Landroid/content/ComponentName;)V

    goto :goto_ff
.end method

.method public removeAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 16
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 701
    const/4 v5, 0x0

    .line 702
    .local v5, "success":Z
    const/4 v2, 0x0

    .line 703
    .local v2, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 704
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v4

    .line 705
    .local v4, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 706
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v3, :cond_8c

    .line 707
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v6

    if-eq v6, p2, :cond_21

    .line 709
    const-string/jumbo v6, "RegisteredServicesCache"

    const-string/jumbo v8, "UID mismatch"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_89

    monitor-exit v7

    .line 710
    return v10

    .line 712
    :cond_21
    :try_start_21
    invoke-virtual {v3, p4}, Landroid/nfc/cardemulation/ApduServiceInfo;->removeDynamicAidGroupForCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 713
    const-string/jumbo v6, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " Could not find dynamic AIDs for category "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_21 .. :try_end_41} :catchall_89

    monitor-exit v7

    .line 714
    return v10

    .line 717
    :cond_43
    :try_start_43
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 718
    .local v1, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    if-eqz v1, :cond_7f

    .line 719
    iget-object v6, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v6, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 720
    .local v0, "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    move-result v5

    .line 721
    .local v5, "success":Z
    if-eqz v5, :cond_6f

    .line 722
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_89

    .end local v0    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v1    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v5    # "success":Z
    :goto_66
    monitor-exit v7

    .line 735
    if-eqz v5, :cond_6e

    .line 736
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v6, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 738
    :cond_6e
    return v5

    .line 724
    .restart local v0    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v1    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .restart local v2    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v5    # "success":Z
    :cond_6f
    :try_start_6f
    const-string/jumbo v6, "RegisteredServicesCache"

    const-string/jumbo v8, "Could not persist deleted AID group."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v6, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v6, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catchall {:try_start_6f .. :try_end_7d} :catchall_89

    monitor-exit v7

    .line 726
    return v10

    .line 729
    .end local v0    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    .local v5, "success":Z
    :cond_7f
    :try_start_7f
    const-string/jumbo v6, "RegisteredServicesCache"

    const-string/jumbo v8, "Could not find aid group in local cache."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_89

    goto :goto_66

    .line 703
    .end local v1    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v2    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v4    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v5    # "success":Z
    :catchall_89
    move-exception v6

    monitor-exit v7

    throw v6

    .line 732
    .restart local v2    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v4    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .restart local v5    # "success":Z
    :cond_8c
    :try_start_8c
    const-string/jumbo v6, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_8c .. :try_end_ad} :catchall_89

    goto :goto_66
.end method

.method public retrieveApduServiceInfos(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 287
    .local v6, "userid":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v5, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p0, v6}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 289
    .local v7, "xmlStaticServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "s$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 290
    .local v3, "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 291
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 294
    .end local v3    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v1, "gsmaStaticServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v0, "gsmaDynamicServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaDataSource:Lcom/gsma/services/GsmaDataSource;

    invoke-virtual {v8, p1, v6}, Lcom/gsma/services/GsmaDataSource;->retrieveApduServiceInfos(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 297
    .restart local v3    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->setByteArrayBanner([B)V

    .line 298
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getIsDynamicallyDefined()Z

    move-result v8

    if-eqz v8, :cond_63

    .line 299
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 301
    :cond_63
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 304
    .end local v3    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_67
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6b
    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 305
    .restart local v3    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 306
    .local v2, "idx":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_6b

    .line 307
    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 310
    .end local v2    # "idx":I
    .end local v3    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_82
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 311
    return-object v5
.end method
