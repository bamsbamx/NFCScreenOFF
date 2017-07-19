.class public Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;
.super Ljava/lang/Object;
.source "SystemCodeRoutingManager.java"


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "SystemCodeRoutingManager"


# instance fields
.field mConfiguredT3tIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public configureRouting(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "t3tIdentifiers":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;>;"
    const/4 v7, 0x0

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "toBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v3, "toBeRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;>;"
    iget-object v5, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 44
    :try_start_e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "t3tIdentifier$iterator":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 45
    .local v0, "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    iget-object v4, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 46
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_2a

    goto :goto_12

    .line 43
    .end local v0    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    .end local v1    # "t3tIdentifier$iterator":Ljava/util/Iterator;
    :catchall_2a
    move-exception v4

    monitor-exit v5

    throw v4

    .line 49
    .restart local v1    # "t3tIdentifier$iterator":Ljava/util/Iterator;
    :cond_2d
    :try_start_2d
    iget-object v4, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 50
    .restart local v0    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 51
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 54
    .end local v0    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    :cond_49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_60

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_60

    .line 55
    const-string/jumbo v4, "SystemCodeRoutingManager"

    const-string/jumbo v6, "Routing table unchanged, not updating"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_2d .. :try_end_5e} :catchall_2a

    monitor-exit v5

    .line 56
    return v7

    .line 59
    :cond_60
    :try_start_60
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 61
    .restart local v0    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    .line 62
    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    .line 61
    invoke-virtual {v4, v6, v7}, Lcom/android/nfc/NfcService;->deregisterT3tIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 64
    .end local v0    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    :cond_7c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 66
    .restart local v0    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    .line 67
    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    .line 66
    invoke-virtual {v4, v6, v7}, Lcom/android/nfc/NfcService;->registerT3tIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 83
    .end local v0    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    :cond_98
    iput-object p1, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;
    :try_end_9a
    .catchall {:try_start_60 .. :try_end_9a} :catchall_2a

    monitor-exit v5

    .line 87
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 89
    const/4 v4, 0x1

    return v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 107
    const-string/jumbo v2, "Routing table:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 109
    :try_start_9
    iget-object v2, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "t3tIdentifier$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 110
    .local v0, "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    const-string/jumbo v4, "/"

    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    iget-object v4, v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_42

    goto :goto_f

    .line 108
    .end local v0    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    .end local v1    # "t3tIdentifier$iterator":Ljava/util/Iterator;
    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "t3tIdentifier$iterator":Ljava/util/Iterator;
    :cond_45
    monitor-exit v3

    .line 106
    return-void
.end method

.method public onNfccRoutingTableCleared()V
    .registers 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_3
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->clearT3tIdentifiersCache()V

    .line 102
    iget-object v0, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    .line 96
    return-void

    .line 99
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method
