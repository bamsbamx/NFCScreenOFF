.class public Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;
.super Ljava/lang/Object;
.source "RegisteredNfcFServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;,
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;,
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;,
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "RegisteredNfcFServicesCache"

.field static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field mActivated:Z

.field final mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

.field final mContext:Landroid/content/Context;

.field final mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

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

.field final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    .line 123
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    .line 126
    new-instance v12, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;

    invoke-direct {v12, p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;-><init>(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;)V

    .line 150
    .local v12, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v12}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 152
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 163
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    .line 170
    .local v11, "dataDir":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "dynamic_systemcode_nfcid2.xml"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 169
    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    .line 122
    return-void
.end method

.method private findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    .line 115
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    if-nez v0, :cond_15

    .line 116
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    invoke-direct {v0, v2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;-><init>(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;)V

    .line 117
    .restart local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    :cond_15
    return-object v0
.end method

.method private generateRandomNfcid2()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0xff

    .line 703
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0xffffffffffffL

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 701
    const-wide/16 v4, 0x0

    .line 703
    add-long v0, v2, v4

    .line 704
    .local v0, "randomNfcid2":J
    const-string/jumbo v2, "02FE%02X%02X%02X%02X%02X%02X"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 705
    const/16 v4, 0x28

    ushr-long v4, v0, v4

    and-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    and-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 706
    const/16 v4, 0x18

    ushr-long v4, v0, v4

    and-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/16 v4, 0x10

    ushr-long v4, v0, v4

    and-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 707
    const/16 v4, 0x8

    ushr-long v4, v0, v4

    and-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    ushr-long v4, v0, v10

    and-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 704
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readDynamicSystemCodeNfcid2Locked()V
    .registers 27

    .prologue
    .line 391
    const/4 v14, 0x0

    .line 393
    .local v14, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_1b

    .line 394
    const-string/jumbo v24, "RegisteredNfcFServicesCache"

    const-string/jumbo v25, "Dynamic System Code, NFCID2 file does not exist."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 397
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v14

    .line 398
    .local v14, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 399
    .local v17, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 400
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    .line 401
    .local v13, "eventType":I
    :goto_36
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v13, v0, :cond_47

    .line 402
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_47

    .line 403
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    goto :goto_36

    .line 405
    :cond_47
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 406
    .local v20, "tagName":Ljava/lang/String;
    const-string/jumbo v24, "services"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_168

    .line 407
    const/4 v4, 0x0

    .line 408
    .local v4, "componentName":Landroid/content/ComponentName;
    const/4 v5, -0x1

    .line 409
    .local v5, "currentUid":I
    const/16 v18, 0x0

    .line 410
    .local v18, "systemCode":Ljava/lang/String;
    const/4 v15, 0x0

    .line 411
    .local v15, "nfcid2":Ljava/lang/String;
    const/4 v6, 0x0

    .line 412
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v15    # "nfcid2":Ljava/lang/String;
    .end local v18    # "systemCode":Ljava/lang/String;
    :goto_5e
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_168

    .line 413
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 414
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v13, v0, :cond_117

    .line 415
    const-string/jumbo v24, "service"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_df

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_df

    .line 417
    const-string/jumbo v24, "component"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "compString":Ljava/lang/String;
    const-string/jumbo v24, "uid"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 421
    .local v21, "uidString":Ljava/lang/String;
    const-string/jumbo v24, "system-code"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 423
    .local v19, "systemCodeString":Ljava/lang/String;
    const-string/jumbo v24, "description"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "descriptionString":Ljava/lang/String;
    const-string/jumbo v24, "nfcid2"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 426
    .local v16, "nfcid2String":Ljava/lang/String;
    if-eqz v3, :cond_d6

    if-nez v21, :cond_e5

    .line 427
    :cond_d6
    const-string/jumbo v24, "RegisteredNfcFServicesCache"

    const-string/jumbo v25, "Invalid service attributes"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v3    # "compString":Ljava/lang/String;
    .end local v7    # "descriptionString":Ljava/lang/String;
    .end local v16    # "nfcid2String":Ljava/lang/String;
    .end local v19    # "systemCodeString":Ljava/lang/String;
    .end local v21    # "uidString":Ljava/lang/String;
    :cond_df
    :goto_df
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e2} :catch_fe
    .catchall {:try_start_1 .. :try_end_e2} :catchall_172

    move-result v13

    goto/16 :goto_5e

    .line 430
    .restart local v3    # "compString":Ljava/lang/String;
    .restart local v7    # "descriptionString":Ljava/lang/String;
    .restart local v16    # "nfcid2String":Ljava/lang/String;
    .restart local v19    # "systemCodeString":Ljava/lang/String;
    .restart local v21    # "uidString":Ljava/lang/String;
    :cond_e5
    :try_start_e5
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 431
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ec
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_ec} :catch_f3
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ec} :catch_fe
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_172

    move-result v5

    .line 432
    move-object/from16 v18, v19

    .line 433
    .local v18, "systemCode":Ljava/lang/String;
    move-object v6, v7

    .line 434
    .local v6, "description":Ljava/lang/String;
    move-object/from16 v15, v16

    .local v15, "nfcid2":Ljava/lang/String;
    goto :goto_df

    .line 435
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "description":Ljava/lang/String;
    .end local v15    # "nfcid2":Ljava/lang/String;
    .end local v18    # "systemCode":Ljava/lang/String;
    :catch_f3
    move-exception v12

    .line 436
    .local v12, "e":Ljava/lang/NumberFormatException;
    :try_start_f4
    const-string/jumbo v24, "RegisteredNfcFServicesCache"

    const-string/jumbo v25, "Could not parse service uid"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fd} :catch_fe
    .catchall {:try_start_f4 .. :try_end_fd} :catchall_172

    goto :goto_df

    .line 469
    .end local v3    # "compString":Ljava/lang/String;
    .end local v5    # "currentUid":I
    .end local v7    # "descriptionString":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "eventType":I
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "nfcid2String":Ljava/lang/String;
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "systemCodeString":Ljava/lang/String;
    .end local v20    # "tagName":Ljava/lang/String;
    .end local v21    # "uidString":Ljava/lang/String;
    :catch_fe
    move-exception v11

    .line 470
    .local v11, "e":Ljava/lang/Exception;
    :try_start_ff
    const-string/jumbo v24, "RegisteredNfcFServicesCache"

    const-string/jumbo v25, "Could not parse dynamic System Code, NFCID2 file, trashing."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/AtomicFile;->delete()V
    :try_end_111
    .catchall {:try_start_ff .. :try_end_111} :catchall_172

    .line 473
    if-eqz v14, :cond_116

    .line 475
    :try_start_113
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_170

    .line 389
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_116
    :goto_116
    return-void

    .line 440
    .restart local v5    # "currentUid":I
    .restart local v13    # "eventType":I
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "tagName":Ljava/lang/String;
    :cond_117
    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v13, v0, :cond_df

    .line 441
    :try_start_11d
    const-string/jumbo v24, "service"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_df

    .line 443
    if-eqz v4, :cond_160

    if-ltz v5, :cond_160

    .line 444
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 445
    .local v22, "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v23

    .line 446
    .local v23, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    if-eqz v18, :cond_14e

    .line 448
    new-instance v9, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    move-object/from16 v0, v18

    invoke-direct {v9, v5, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;-><init>(ILjava/lang/String;)V

    .line 449
    .local v9, "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .end local v9    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    :cond_14e
    if-eqz v15, :cond_160

    .line 454
    new-instance v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    invoke-direct {v8, v5, v15}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;-><init>(ILjava/lang/String;)V

    .line 455
    .local v8, "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_160} :catch_fe
    .catchall {:try_start_11d .. :try_end_160} :catchall_172

    .line 459
    .end local v8    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v22    # "userId":I
    .end local v23    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :cond_160
    const/4 v4, 0x0

    .line 460
    .local v4, "componentName":Landroid/content/ComponentName;
    const/4 v5, -0x1

    .line 461
    const/16 v18, 0x0

    .line 462
    .local v18, "systemCode":Ljava/lang/String;
    const/4 v6, 0x0

    .line 463
    .local v6, "description":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "nfcid2":Ljava/lang/String;
    goto/16 :goto_df

    .line 473
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "currentUid":I
    .end local v6    # "description":Ljava/lang/String;
    .end local v15    # "nfcid2":Ljava/lang/String;
    .end local v18    # "systemCode":Ljava/lang/String;
    :cond_168
    if-eqz v14, :cond_116

    .line 475
    :try_start_16a
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_16e

    goto :goto_116

    .line 476
    :catch_16e
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    goto :goto_116

    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "eventType":I
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "tagName":Ljava/lang/String;
    .restart local v11    # "e":Ljava/lang/Exception;
    :catch_170
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_116

    .line 472
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_172
    move-exception v24

    .line 473
    if-eqz v14, :cond_178

    .line 475
    :try_start_175
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_178} :catch_179

    .line 472
    :cond_178
    :goto_178
    throw v24

    .line 476
    :catch_179
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_178
.end method

.method private writeDynamicSystemCodeNfcid2Locked()Z
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 484
    const/4 v4, 0x0

    .line 486
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 487
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 488
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v8, "utf-8"

    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 489
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 490
    const-string/jumbo v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 491
    const-string/jumbo v8, "services"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2b
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_12f

    .line 493
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    .line 495
    .local v7, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v8, v7, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 494
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 496
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    const-string/jumbo v8, "service"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    const-string/jumbo v9, "component"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v6, v10, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    const-string/jumbo v9, "uid"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    iget v8, v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v6, v10, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    const-string/jumbo v9, "system-code"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    iget-object v8, v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->systemCode:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v6, v10, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    iget-object v8, v7, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 501
    const-string/jumbo v9, "nfcid2"

    .line 502
    iget-object v8, v7, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    iget-object v8, v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->nfcid2:Ljava/lang/String;

    .line 501
    const/4 v10, 0x0

    invoke-interface {v6, v10, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    :cond_ac
    const-string/jumbo v8, "service"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b3} :catch_b4

    goto :goto_45

    .line 521
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :catch_b4
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "RegisteredNfcFServicesCache"

    const-string/jumbo v9, "Error writing dynamic System Code, NFCID2"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    if-eqz v4, :cond_c5

    .line 524
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v8, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 526
    :cond_c5
    const/4 v8, 0x0

    return v8

    .line 507
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "i":I
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :cond_c7
    :try_start_c7
    iget-object v8, v7, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 506
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d1
    :goto_d1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 508
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    iget-object v8, v7, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d1

    .line 509
    const-string/jumbo v8, "service"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    const-string/jumbo v9, "component"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v6, v10, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    const-string/jumbo v9, "uid"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    iget v8, v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v6, v10, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    const-string/jumbo v9, "nfcid2"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    iget-object v8, v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->nfcid2:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v6, v10, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    const-string/jumbo v8, "service"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d1

    .line 492
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    :cond_12b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2b

    .line 517
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v7    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :cond_12f
    const-string/jumbo v8, "services"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 519
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v8, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_13e} :catch_b4

    .line 520
    return v11
.end method


# virtual methods
.method containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .registers 6
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 189
    .local v0, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    return v2

    .line 191
    .end local v0    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 711
    const-string/jumbo v3, "Registered HCE services for current user: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 713
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v2

    .line 714
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 715
    .local v0, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v0, p1, p2, p3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 716
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_31

    goto :goto_1b

    .line 712
    .end local v0    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v1    # "service$iterator":Ljava/util/Iterator;
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :catchall_31
    move-exception v3

    monitor-exit v4

    throw v3

    .line 718
    .restart local v1    # "service$iterator":Ljava/util/Iterator;
    .restart local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :cond_34
    :try_start_34
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_31

    monitor-exit v4

    .line 710
    return-void
.end method

.method dump(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 182
    .local v0, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const-string/jumbo v2, "RegisteredNfcFServicesCache"

    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 180
    .end local v0    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_1b
    return-void
.end method

.method getInstalledServices(I)Ljava/util/ArrayList;
    .registers 18
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "android"

    .line 220
    new-instance v14, Landroid/os/UserHandle;

    move/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 219
    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15, v14}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_16} :catch_9b

    move-result-object v5

    .line 226
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v11, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v13, "android.nfc.cardemulation.action.HOST_NFCF_SERVICE"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    const/16 v13, 0x80

    .line 228
    move/from16 v0, p1

    invoke-virtual {v5, v12, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 232
    .local v8, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "resolvedService$iterator":Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_109

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 234
    .local v6, "resolvedService":Landroid/content/pm/ResolveInfo;
    :try_start_3c
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 235
    .local v10, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v12, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v1, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v12, "android.permission.NFC"

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_a7

    .line 239
    const-string/jumbo v12, "RegisteredNfcFServicesCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Skipping NfcF service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 240
    const-string/jumbo v14, ": it does not require the permission "

    .line 239
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 241
    const-string/jumbo v14, "android.permission.NFC"

    .line 239
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_7a} :catch_7b
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_7a} :catch_dc

    goto :goto_30

    .line 255
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "si":Landroid/content/pm/ServiceInfo;
    :catch_7b
    move-exception v4

    .line 256
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v12, "RegisteredNfcFServicesCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to load component info "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 221
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .end local v7    # "resolvedService$iterator":Ljava/util/Iterator;
    .end local v8    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catch_9b
    move-exception v2

    .line 222
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v12, "RegisteredNfcFServicesCache"

    const-string/jumbo v13, "Could not create user package context"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v12, 0x0

    return-object v12

    .line 244
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "resolvedService$iterator":Ljava/util/Iterator;
    .restart local v8    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v11    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :cond_a7
    :try_start_a7
    const-string/jumbo v12, "android.permission.BIND_NFC_SERVICE"

    .line 245
    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 244
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_fd

    .line 246
    const-string/jumbo v12, "RegisteredNfcFServicesCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Skipping NfcF service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 247
    const-string/jumbo v14, ": it does not require the permission "

    .line 246
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 248
    const-string/jumbo v14, "android.permission.BIND_NFC_SERVICE"

    .line 246
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a7 .. :try_end_da} :catch_7b
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_da} :catch_dc

    goto/16 :goto_30

    .line 257
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "si":Landroid/content/pm/ServiceInfo;
    :catch_dc
    move-exception v3

    .line 258
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v12, "RegisteredNfcFServicesCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to load component info "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 251
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v10    # "si":Landroid/content/pm/ServiceInfo;
    :cond_fd
    :try_start_fd
    new-instance v9, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-direct {v9, v5, v6}, Landroid/nfc/cardemulation/NfcFServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    .line 252
    .local v9, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v9, :cond_30

    .line 253
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_107
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fd .. :try_end_107} :catch_7b
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_107} :catch_dc

    goto/16 :goto_30

    .line 262
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .end local v9    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v10    # "si":Landroid/content/pm/ServiceInfo;
    :cond_109
    return-object v11
.end method

.method public getNfcid2ForService(IILandroid/content/ComponentName;)Ljava/lang/String;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 666
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v0

    .line 667
    .local v0, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v0, :cond_1c

    .line 668
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v1

    if-eq v1, p2, :cond_17

    .line 669
    const-string/jumbo v1, "RegisteredNfcFServicesCache"

    const-string/jumbo v2, "UID mismatch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-object v4

    .line 672
    :cond_17
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 674
    :cond_1c
    const-string/jumbo v1, "RegisteredNfcFServicesCache"

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

    .line 675
    return-object v4
.end method

.method public getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 200
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v0

    .line 201
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v2

    return-object v1

    .line 199
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
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
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 209
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v1

    .line 210
    .local v1, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_17

    monitor-exit v3

    .line 212
    return-object v0

    .line 208
    .end local v1    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :catchall_17
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getSystemCodeForService(IILandroid/content/ComponentName;)Ljava/lang/String;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 590
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v0

    .line 591
    .local v0, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v0, :cond_1c

    .line 592
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v1

    if-eq v1, p2, :cond_17

    .line 593
    const-string/jumbo v1, "RegisteredNfcFServicesCache"

    const-string/jumbo v2, "UID mismatch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return-object v4

    .line 596
    :cond_17
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 598
    :cond_1c
    const-string/jumbo v1, "RegisteredNfcFServicesCache"

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

    .line 599
    return-object v4
.end method

.method public hasService(ILandroid/content/ComponentName;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

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
    .line 174
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->readDynamicSystemCodeNfcid2Locked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    monitor-exit v0

    .line 177
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 173
    return-void

    .line 174
    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public invalidateCache(I)V
    .registers 35
    .param p1, "userId"    # I

    .prologue
    .line 267
    invoke-virtual/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v28

    .line 268
    .local v28, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    if-nez v28, :cond_7

    .line 269
    return-void

    .line 271
    :cond_7
    const/4 v14, 0x0

    .line 272
    .local v14, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 273
    :try_start_f
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v25

    .line 277
    .local v25, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    .local v5, "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v21, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v22, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    const/4 v13, 0x0

    .line 281
    .local v13, "matched":Z
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "validService$iterator":Ljava/util/Iterator;
    :goto_33
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_63

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 282
    .local v26, "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "cachedService$iterator":Ljava/util/Iterator;
    :cond_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 283
    .local v3, "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_43

    .line 284
    const/4 v13, 0x1

    .line 288
    .end local v3    # "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_58
    if-nez v13, :cond_61

    .line 289
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_61
    const/4 v13, 0x0

    goto :goto_33

    .line 293
    .end local v4    # "cachedService$iterator":Ljava/util/Iterator;
    .end local v26    # "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_63
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "cachedService$iterator":Ljava/util/Iterator;
    :goto_67
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 294
    .restart local v3    # "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_77
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 295
    .restart local v26    # "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_77

    .line 296
    const/4 v13, 0x1

    .line 300
    .end local v26    # "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_8c
    if-nez v13, :cond_93

    .line 301
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_93
    const/4 v13, 0x0

    goto :goto_67

    .line 305
    .end local v3    # "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_95
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-nez v29, :cond_b0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-nez v29, :cond_b0

    .line 306
    const-string/jumbo v29, "RegisteredNfcFServicesCache"

    const-string/jumbo v31, "Service unchanged, not updating"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_f .. :try_end_ae} :catchall_d4

    monitor-exit v30

    .line 307
    return-void

    .line 311
    :cond_b0
    :try_start_b0
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "service$iterator":Ljava/util/Iterator;
    :goto_b4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_d7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 312
    .local v19, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d3
    .catchall {:try_start_b0 .. :try_end_d3} :catchall_d4

    goto :goto_b4

    .line 272
    .end local v4    # "cachedService$iterator":Ljava/util/Iterator;
    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v13    # "matched":Z
    .end local v14    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v19    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v20    # "service$iterator":Ljava/util/Iterator;
    .end local v21    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v22    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v25    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v27    # "validService$iterator":Ljava/util/Iterator;
    :catchall_d4
    move-exception v29

    monitor-exit v30

    throw v29

    .line 315
    .restart local v4    # "cachedService$iterator":Ljava/util/Iterator;
    .restart local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v13    # "matched":Z
    .restart local v14    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v20    # "service$iterator":Ljava/util/Iterator;
    .restart local v21    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v22    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v25    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .restart local v27    # "validService$iterator":Ljava/util/Iterator;
    :cond_d7
    :try_start_d7
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_db
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_f9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 316
    .restart local v19    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_db

    .line 321
    .end local v19    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_f9
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v24, "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v29

    .line 322
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "entry$iterator":Ljava/util/Iterator;
    :goto_10c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_154

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 325
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 326
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    .line 327
    .local v8, "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 328
    .restart local v19    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v19, :cond_142

    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v29

    iget v0, v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->uid:I

    move/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_148

    .line 329
    :cond_142
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10c

    .line 332
    :cond_148
    iget-object v0, v8, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->systemCode:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicSystemCode(Ljava/lang/String;)V

    goto :goto_10c

    .line 337
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    .end local v19    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_154
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v23, "toBeRemovedDynamicNfcid2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v29

    .line 338
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_167
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1af

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 341
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 342
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    .line 343
    .local v7, "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 344
    .restart local v19    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v19, :cond_19d

    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v29

    iget v0, v7, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->uid:I

    move/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_1a3

    .line 345
    :cond_19d
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_167

    .line 348
    :cond_1a3
    iget-object v0, v7, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->nfcid2:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicNfcid2(Ljava/lang/String;)V

    goto :goto_167

    .line 351
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    .end local v19    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_1af
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "removedComponent$iterator":Ljava/util/Iterator;
    :goto_1b3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1ef

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    .line 352
    .local v17, "removedComponent":Landroid/content/ComponentName;
    const-string/jumbo v29, "RegisteredNfcFServicesCache"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Removing dynamic System Code registered by "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b3

    .line 356
    .end local v17    # "removedComponent":Landroid/content/ComponentName;
    :cond_1ef
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1f3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_22f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    .line 357
    .restart local v17    # "removedComponent":Landroid/content/ComponentName;
    const-string/jumbo v29, "RegisteredNfcFServicesCache"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Removing dynamic NFCID2 registered by "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f3

    .line 362
    .end local v17    # "removedComponent":Landroid/content/ComponentName;
    :cond_22f
    const/4 v15, 0x0

    .line 364
    .local v15, "nfcid2Assigned":Z
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v29

    .line 363
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_23e
    :goto_23e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_28e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 365
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 366
    .restart local v19    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v31, "RANDOM"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_23e

    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->generateRandomNfcid2()Ljava/lang/String;

    move-result-object v16

    .line 368
    .local v16, "randomNfcid2":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicNfcid2(Ljava/lang/String;)V

    .line 370
    new-instance v7, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v16

    invoke-direct {v7, v0, v1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;-><init>(ILjava/lang/String;)V

    .line 371
    .restart local v7    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/ComponentName;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const/4 v15, 0x1

    goto :goto_23e

    .line 377
    .end local v7    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v16    # "randomNfcid2":Ljava/lang/String;
    .end local v19    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_28e
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-gtz v29, :cond_29a

    .line 378
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_2c3

    .line 380
    :cond_29a
    :goto_29a
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->writeDynamicSystemCodeNfcid2Locked()Z

    .line 383
    :cond_29d
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2ae
    .catchall {:try_start_d7 .. :try_end_2ae} :catchall_d4

    .local v14, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    monitor-exit v30

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    move-object/from16 v29, v0

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v29

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;->onNfcFServicesUpdated(ILjava/util/List;)V

    .line 265
    return-void

    .line 377
    .local v14, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :cond_2c3
    if-eqz v15, :cond_29d

    goto :goto_29a
.end method

.method public onHostEmulationActivated()V
    .registers 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 680
    return-void

    .line 682
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onHostEmulationDeactivated()V
    .registers 3

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 687
    return-void

    .line 689
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onNfcDisabled()V
    .registers 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 694
    return-void

    .line 695
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public registerSystemCodeForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 16
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "systemCode"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 534
    const/4 v1, 0x0

    .line 536
    .local v1, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 537
    :try_start_5
    iget-boolean v6, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    if-eqz v6, :cond_14

    .line 538
    const-string/jumbo v6, "RegisteredNfcFServicesCache"

    const-string/jumbo v8, "failed to register System Code during activation"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_c8

    monitor-exit v7

    .line 539
    return v10

    .line 541
    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v5

    .line 543
    .local v5, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v3

    .line 544
    .local v3, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-nez v3, :cond_41

    .line 545
    const-string/jumbo v6, "RegisteredNfcFServicesCache"

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
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_c8

    monitor-exit v7

    .line 546
    return v10

    .line 548
    :cond_41
    :try_start_41
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v6

    if-eq v6, p2, :cond_52

    .line 553
    const-string/jumbo v6, "RegisteredNfcFServicesCache"

    const-string/jumbo v8, "UID mismatch."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_c8

    monitor-exit v7

    .line 554
    return v10

    .line 556
    :cond_52
    :try_start_52
    const-string/jumbo v6, "NULL"

    invoke-virtual {p4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_61

    .line 557
    invoke-static {p4}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidSystemCode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 562
    :cond_61
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    .line 564
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    .line 565
    .local v2, "oldDynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    invoke-direct {v0, p2, p4}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;-><init>(ILjava/lang/String;)V

    .line 566
    .local v0, "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v6, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->writeDynamicSystemCodeNfcid2Locked()Z

    move-result v4

    .line 568
    .local v4, "success":Z
    if-eqz v4, :cond_b7

    .line 569
    invoke-virtual {v3, p4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicSystemCode(Ljava/lang/String;)V

    .line 570
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8b
    .catchall {:try_start_52 .. :try_end_8b} :catchall_c8

    :goto_8b
    monitor-exit v7

    .line 581
    if-eqz v4, :cond_93

    .line 583
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    invoke-interface {v6, p1, v1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;->onNfcFServicesUpdated(ILjava/util/List;)V

    .line 585
    :cond_93
    return v4

    .line 558
    .end local v0    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .end local v2    # "oldDynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .end local v4    # "success":Z
    .restart local v1    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :cond_94
    :try_start_94
    const-string/jumbo v6, "RegisteredNfcFServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "System Code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not a valid System Code"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_94 .. :try_end_b5} :catchall_c8

    monitor-exit v7

    .line 559
    return v10

    .line 572
    .restart local v0    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .restart local v2    # "oldDynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .restart local v4    # "success":Z
    :cond_b7
    :try_start_b7
    const-string/jumbo v6, "RegisteredNfcFServicesCache"

    const-string/jumbo v8, "Failed to persist System Code."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    if-nez v2, :cond_cb

    .line 575
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c7
    .catchall {:try_start_b7 .. :try_end_c7} :catchall_c8

    goto :goto_8b

    .line 536
    .end local v0    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .end local v1    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v2    # "oldDynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .end local v3    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v4    # "success":Z
    .end local v5    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :catchall_c8
    move-exception v6

    monitor-exit v7

    throw v6

    .line 577
    .restart local v0    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .restart local v1    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v2    # "oldDynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .restart local v3    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .restart local v4    # "success":Z
    .restart local v5    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :cond_cb
    :try_start_cb
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v6, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_c8

    goto :goto_8b
.end method

.method public removeSystemCodeForService(IILandroid/content/ComponentName;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 605
    const-string/jumbo v0, "NULL"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->registerSystemCodeForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNfcid2ForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 16
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "nfcid2"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 611
    const/4 v1, 0x0

    .line 613
    .local v1, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 614
    :try_start_5
    iget-boolean v6, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    if-eqz v6, :cond_14

    .line 615
    const-string/jumbo v6, "RegisteredNfcFServicesCache"

    const-string/jumbo v8, "failed to set NFCID2 during activation"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_bf

    monitor-exit v7

    .line 616
    return v10

    .line 618
    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v5

    .line 620
    .local v5, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v3

    .line 621
    .local v3, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-nez v3, :cond_41

    .line 622
    const-string/jumbo v6, "RegisteredNfcFServicesCache"

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
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_bf

    monitor-exit v7

    .line 623
    return v10

    .line 625
    :cond_41
    :try_start_41
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v6

    if-eq v6, p2, :cond_52

    .line 630
    const-string/jumbo v6, "RegisteredNfcFServicesCache"

    const-string/jumbo v8, "UID mismatch."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_bf

    monitor-exit v7

    .line 631
    return v10

    .line 633
    :cond_52
    :try_start_52
    invoke-static {p4}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidNfcid2(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 634
    const-string/jumbo v6, "RegisteredNfcFServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NFCID2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not a valid NFCID2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_52 .. :try_end_79} :catchall_bf

    monitor-exit v7

    .line 635
    return v10

    .line 638
    :cond_7b
    :try_start_7b
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    .line 639
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    .line 640
    .local v2, "oldDynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    invoke-direct {v0, p2, p4}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;-><init>(ILjava/lang/String;)V

    .line 641
    .local v0, "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v6, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->writeDynamicSystemCodeNfcid2Locked()Z

    move-result v4

    .line 643
    .local v4, "success":Z
    if-eqz v4, :cond_ae

    .line 644
    invoke-virtual {v3, p4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicNfcid2(Ljava/lang/String;)V

    .line 645
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_a5
    .catchall {:try_start_7b .. :try_end_a5} :catchall_bf

    :goto_a5
    monitor-exit v7

    .line 656
    if-eqz v4, :cond_ad

    .line 658
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    invoke-interface {v6, p1, v1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;->onNfcFServicesUpdated(ILjava/util/List;)V

    .line 660
    :cond_ad
    return v4

    .line 647
    .restart local v1    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :cond_ae
    :try_start_ae
    const-string/jumbo v6, "RegisteredNfcFServicesCache"

    const-string/jumbo v8, "Failed to persist NFCID2."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    if-nez v2, :cond_c2

    .line 650
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_be
    .catchall {:try_start_ae .. :try_end_be} :catchall_bf

    goto :goto_a5

    .line 613
    .end local v0    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v1    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v2    # "oldDynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v3    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v4    # "success":Z
    .end local v5    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :catchall_bf
    move-exception v6

    monitor-exit v7

    throw v6

    .line 652
    .restart local v0    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .restart local v1    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v2    # "oldDynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .restart local v3    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .restart local v4    # "success":Z
    .restart local v5    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :cond_c2
    :try_start_c2
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v6, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c7
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_bf

    goto :goto_a5
.end method
