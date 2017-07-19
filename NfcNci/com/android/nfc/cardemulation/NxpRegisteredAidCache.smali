.class public Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;
.super Lcom/android/nfc/cardemulation/RegisteredAidCache;
.source "NxpRegisteredAidCache.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NxpRegisteredAidCache"


# instance fields
.field mHostAIDPowerState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidRoutingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    .line 61
    sget-boolean v0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "NxpRegisteredAidCache"

    const-string/jumbo v1, "NxpRegisteredAidCache instantiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_10
    const/16 v0, 0x43

    iput v0, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mHostAIDPowerState:I

    .line 59
    return-void
.end method


# virtual methods
.method generateServiceMapLocked(Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v12, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v12}, Ljava/util/TreeMap;->clear()V

    .line 71
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "service$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 72
    .local v7, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    sget-boolean v12, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->DBG:Z

    if-eqz v12, :cond_37

    const-string/jumbo v12, "NxpRegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "generateServiceMap component: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_37
    iget-object v12, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mDisabledServices:Ljava/util/List;

    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 74
    .local v11, "serviceDisabled":Z
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getPrefixAids()Ljava/util/List;

    move-result-object v6

    .line 75
    .local v6, "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_4d
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_81

    .line 77
    const-string/jumbo v12, "NxpRegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Aid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " is not valid."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 80
    :cond_81
    const-string/jumbo v12, "*"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_90

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v12

    if-eqz v12, :cond_d1

    .line 83
    :cond_90
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v12

    if-eqz v12, :cond_a2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_a2

    invoke-static {v0}, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f4

    .line 101
    :cond_a2
    if-eqz v11, :cond_147

    .line 102
    const-string/jumbo v12, "other"

    invoke-virtual {v7, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 101
    if-eqz v12, :cond_147

    .line 103
    sget-boolean v12, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->DBG:Z

    if-eqz v12, :cond_4d

    const-string/jumbo v12, "NxpRegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "This AID is disabled : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 81
    :cond_d1
    const-string/jumbo v12, "NxpRegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Prefix AID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ignored on device that doesn\'t support it."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 85
    :cond_f4
    const/4 v2, 0x0

    .line 86
    .local v2, "foundPrefix":Z
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "prefixAid$iterator":Ljava/util/Iterator;
    :cond_f9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_143

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 87
    .local v4, "prefixAid":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f9

    .line 89
    const-string/jumbo v12, "NxpRegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Ignoring exact AID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " because prefix AID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 90
    const-string/jumbo v14, " is already registered"

    .line 89
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v2, 0x1

    .line 95
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "prefixAid":Ljava/lang/String;
    :cond_143
    if-eqz v2, :cond_a2

    goto/16 :goto_4d

    .line 107
    .end local v2    # "foundPrefix":Z
    .end local v5    # "prefixAid$iterator":Ljava/util/Iterator;
    :cond_147
    new-instance v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    invoke-direct {v9, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 108
    .local v9, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    iput-object v7, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 109
    invoke-virtual {v7, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    .line 111
    iget-object v12, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v12}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getAidMatchingPlatform()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_163

    .line 112
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v12

    if-eqz v12, :cond_182

    .line 115
    :cond_163
    :goto_163
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 117
    iget-object v12, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v13, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a0

    .line 119
    iget-object v12, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v13, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 120
    .local v10, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4d

    .line 112
    .end local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :cond_182
    const-string/jumbo v12, "*"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_163

    .line 113
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_163

    .line 123
    :cond_1a0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .restart local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v12, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v13, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v12, v13, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4d

    .line 68
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v6    # "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v9    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v11    # "serviceDisabled":Z
    :cond_1b1
    return-void
.end method

.method public onRoutingTableChanged()V
    .registers 3

    .prologue
    .line 188
    sget-boolean v0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NxpRegisteredAidCache"

    const-string/jumbo v1, "onRoutingTableChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_d
    iget-object v0, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_10
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->generateAidCacheLocked()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_15

    monitor-exit v0

    .line 187
    return-void

    .line 189
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method updateRoutingLocked()V
    .registers 15

    .prologue
    .line 132
    iget-boolean v11, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mNfcEnabled:Z

    if-nez v11, :cond_12

    .line 133
    sget-boolean v11, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->DBG:Z

    if-eqz v11, :cond_11

    const-string/jumbo v11, "NxpRegisteredAidCache"

    const-string/jumbo v12, "Not updating routing table because NFC is off."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_11
    return-void

    .line 136
    :cond_12
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 139
    .local v9, "routingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    iget-object v11, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    .line 138
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "aidEntry$iterator":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_dd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 140
    .local v2, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "aid":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 142
    .local v7, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-boolean v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    if-nez v11, :cond_62

    .line 143
    sget-boolean v11, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->DBG:Z

    if-eqz v11, :cond_20

    const-string/jumbo v11, "NxpRegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Not routing AID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " on request."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 146
    :cond_62
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_20

    .line 148
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v11, :cond_af

    .line 151
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    iget-object v12, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 152
    .local v4, "isDefaultPayment":Z
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    iget-object v12, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 153
    .local v5, "isForeground":Z
    const/4 v10, 0x1

    .line 155
    .local v10, "weight":I
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v11

    if-eqz v11, :cond_ad

    const/4 v8, 0x0

    .line 156
    .local v8, "route":I
    :goto_90
    if-eqz v5, :cond_93

    .line 157
    const/4 v10, 0x4

    .line 159
    :cond_93
    if-eqz v4, :cond_97

    .line 160
    add-int/lit8 v10, v10, 0x2

    .line 162
    :cond_97
    const/16 v6, 0xc3

    .line 163
    .local v6, "powerState":I
    if-nez v8, :cond_a3

    iget-object v11, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    iget v11, v11, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    if-eqz v11, :cond_a3

    .line 164
    iget v6, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mHostAIDPowerState:I

    .line 166
    :cond_a3
    new-instance v1, Lcom/android/nfc/cardemulation/AidElement;

    invoke-direct {v1, v0, v10, v8, v6}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;III)V

    .line 167
    .local v1, "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_20

    .line 155
    .end local v1    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v6    # "powerState":I
    .end local v8    # "route":I
    :cond_ad
    const/4 v8, -0x1

    .restart local v8    # "route":I
    goto :goto_90

    .line 168
    .end local v4    # "isDefaultPayment":Z
    .end local v5    # "isForeground":Z
    .end local v8    # "route":I
    .end local v10    # "weight":I
    :cond_af
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c6

    .line 171
    new-instance v1, Lcom/android/nfc/cardemulation/AidElement;

    iget v11, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mHostAIDPowerState:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v1, v0, v12, v13, v11}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;III)V

    .line 172
    .restart local v1    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_20

    .line 173
    .end local v1    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    :cond_c6
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_20

    .line 175
    new-instance v1, Lcom/android/nfc/cardemulation/AidElement;

    iget v11, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mHostAIDPowerState:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v1, v0, v12, v13, v11}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;III)V

    .line 176
    .restart local v1    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_20

    .line 179
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v2    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v7    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_dd
    iget-object v11, p0, Lcom/android/nfc/cardemulation/NxpRegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v11, v9}, Lcom/android/nfc/cardemulation/AidRoutingManager;->configureRoutingWithPowerState(Ljava/util/HashMap;)Z

    .line 131
    return-void
.end method
