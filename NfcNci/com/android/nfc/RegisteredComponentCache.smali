.class public Lcom/android/nfc/RegisteredComponentCache;
.super Ljava/lang/Object;
.source "RegisteredComponentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RegisteredComponentCache"


# instance fields
.field final mAction:Ljava/lang/String;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mMetaDataName:Ljava/lang/String;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "metaDataName"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    .line 58
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mAction:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/android/nfc/RegisteredComponentCache;->generateComponentsList()V

    .line 63
    new-instance v2, Lcom/android/nfc/RegisteredComponentCache$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/RegisteredComponentCache$1;-><init>(Lcom/android/nfc/RegisteredComponentCache;)V

    .line 69
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v5, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 82
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v12, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v9, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v2

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 126
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    if-eqz v0, :cond_10

    .line 127
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    :cond_10
    return-void
.end method

.method dump(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "component$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 142
    .local v0, "component":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    const-string/jumbo v2, "RegisteredComponentCache"

    invoke-virtual {v0}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 140
    .end local v0    # "component":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :cond_1b
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 134
    const-string/jumbo v0, "RegisteredComponentCache"

    const-string/jumbo v1, "RegisteredServicesCache finalized without being closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_11
    invoke-virtual {p0}, Lcom/android/nfc/RegisteredComponentCache;->close()V

    .line 137
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    return-void
.end method

.method generateComponentsList()V
    .registers 13

    .prologue
    .line 149
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-direct {v1, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 150
    .local v1, "currentUser":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "android"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_16} :catch_61

    move-result-object v5

    .line 156
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/nfc/RegisteredComponentCache;->mAction:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    const/16 v11, 0x80

    .line 157
    invoke-virtual {v5, v9, v11, v10}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 159
    .local v8, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 161
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_3d
    invoke-virtual {p0, v5, v6, v0}, Lcom/android/nfc/RegisteredComponentCache;->parseComponentInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_40} :catch_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_6c

    goto :goto_31

    .line 162
    :catch_41
    move-exception v4

    .line 163
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "RegisteredComponentCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to load component info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 152
    .end local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    .end local v1    # "currentUser":Landroid/os/UserHandle;
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v8    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_61
    move-exception v2

    .line 153
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "RegisteredComponentCache"

    const-string/jumbo v10, "Could not create user package context"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 164
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    .restart local v1    # "currentUser":Landroid/os/UserHandle;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "resolveInfo$iterator":Ljava/util/Iterator;
    .restart local v8    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_6c
    move-exception v3

    .line 165
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v9, "RegisteredComponentCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to load component info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 173
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_8c
    monitor-enter p0

    .line 174
    :try_start_8d
    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_91

    monitor-exit p0

    .line 146
    return-void

    .line 173
    :catchall_91
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public getComponents()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 114
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method parseComponentInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    .registers 12
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    .local p3, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    iget-object v6, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 182
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 184
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v6, p1, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 185
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v3, :cond_52

    .line 186
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_2e} :catch_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_4b

    .line 191
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_2e
    move-exception v7

    .line 192
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to load resources for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_4b

    .line 193
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_4b
    move-exception v0

    .line 194
    if-eqz v3, :cond_51

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 193
    :cond_51
    throw v0

    .line 189
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_52
    :try_start_52
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/RegisteredComponentCache;->parseTechLists(Landroid/content/res/Resources;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    :try_end_60
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_60} :catch_2e
    .catchall {:try_start_52 .. :try_end_60} :catchall_4b

    .line 194
    if-eqz v3, :cond_65

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 179
    :cond_65
    return-void
.end method

.method parseTechLists(Landroid/content/res/Resources;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    .registers 13
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p5, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    const/4 v6, 0x2

    .line 201
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 202
    .local v0, "eventType":I
    :goto_5
    if-eq v0, v6, :cond_c

    .line 203
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_5

    .line 206
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 210
    :cond_15
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "tagName":Ljava/lang/String;
    if-ne v0, v6, :cond_33

    const-string/jumbo v5, "tech"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 212
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_2b
    :goto_2b
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 223
    const/4 v5, 0x1

    if-ne v0, v5, :cond_15

    .line 200
    return-void

    .line 213
    :cond_33
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2b

    const-string/jumbo v5, "tech-list"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 214
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 215
    .local v2, "size":I
    if-lez v2, :cond_2b

    .line 216
    new-array v4, v2, [Ljava/lang/String;

    .line 217
    .local v4, "techs":[Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "techs":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 218
    .restart local v4    # "techs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 219
    new-instance v5, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    invoke-direct {v5, p4, v4}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;-><init>(Landroid/content/pm/ResolveInfo;[Ljava/lang/String;)V

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b
.end method
