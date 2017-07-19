.class public Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
.super Ljava/lang/Object;
.source "RegisteredT3tIdentifiersCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "RegisteredT3tIdentifiersCache"


# instance fields
.field final mContext:Landroid/content/Context;

.field mEnabledForegroundService:Landroid/content/ComponentName;

.field final mForegroundT3tIdentifiersCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mNfcEnabled:Z

.field final mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

.field mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mServices:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    .line 83
    const-string/jumbo v0, "RegisteredT3tIdentifiersCache"

    const-string/jumbo v1, "RegisteredT3tIdentifiersCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    .line 82
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 200
    const-string/jumbo v2, "    T3T Identifier cache entries: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    NFCID2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v2, "    NfcFServiceInfo: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v2, p1, p2, p3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_10

    .line 206
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :cond_49
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 208
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method generateForegroundT3tIdentifiersCacheLocked()V
    .registers 5

    .prologue
    .line 101
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 102
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    if-eqz v2, :cond_41

    .line 103
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 104
    .local v0, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 105
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 106
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 124
    .end local v0    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v1    # "service$iterator":Ljava/util/Iterator;
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->updateRoutingLocked()V

    .line 99
    return-void

    .line 107
    .restart local v0    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .restart local v1    # "service$iterator":Ljava/util/Iterator;
    :cond_45
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41
.end method

.method public onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    if-eqz p1, :cond_12

    .line 162
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1c

    if-eqz v0, :cond_b

    monitor-exit v1

    .line 163
    return-void

    .line 165
    :cond_b
    :try_start_b
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    .line 172
    :goto_d
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->generateForegroundT3tIdentifiersCacheLocked()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1c

    monitor-exit v1

    .line 158
    return-void

    .line 167
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_1c

    if-nez v0, :cond_18

    monitor-exit v1

    .line 168
    return-void

    .line 170
    :cond_18
    const/4 v0, 0x0

    :try_start_19
    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_d

    .line 160
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onNfcDisabled()V
    .registers 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    .line 185
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_15

    monitor-exit v1

    .line 188
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->onNfccRoutingTableCleared()V

    .line 182
    return-void

    .line 183
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onNfcEnabled()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 176
    return-void

    .line 177
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne v0, p1, :cond_d

    .line 151
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mServices:Ljava/util/List;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_17

    :goto_b
    monitor-exit v1

    .line 146
    return-void

    .line 153
    :cond_d
    :try_start_d
    const-string/jumbo v0, "RegisteredT3tIdentifiersCache"

    const-string/jumbo v2, "Ignoring update because it\'s not for the current user."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    goto :goto_b

    .line 148
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onUserSwitched()V
    .registers 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 194
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->updateRoutingLocked()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    .line 191
    return-void

    .line 192
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resolveNfcid2(Ljava/lang/String;)Landroid/nfc/cardemulation/NfcFServiceInfo;
    .registers 7
    .param p1, "nfcid2"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 93
    .local v0, "resolveInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const-string/jumbo v3, "RegisteredT3tIdentifiersCache"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resolved to: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_2c

    const-string/jumbo v1, "null"

    :goto_1f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_31

    monitor-exit v2

    .line 95
    return-object v0

    .line 94
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->toString()Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_31

    move-result-object v1

    goto :goto_1f

    .line 89
    .end local v0    # "resolveInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :catchall_31
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method updateRoutingLocked()V
    .registers 7

    .prologue
    .line 129
    iget-boolean v3, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    if-nez v3, :cond_e

    .line 130
    const-string/jumbo v3, "RegisteredT3tIdentifiersCache"

    const-string/jumbo v4, "Not updating routing table because NFC is off."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 133
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v2, "t3tIdentifiers":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;>;"
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 137
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;>;"
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v4, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-direct {v4, p0, v5, v3}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;-><init>(Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 143
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :cond_46
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v3, v2}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->configureRouting(Ljava/util/List;)Z

    .line 127
    return-void
.end method
