.class public Lcom/android/nfc/cardemulation/AidRoutingSimulator;
.super Lcom/android/nfc/cardemulation/RegisteredAidCache;
.source "AidRoutingSimulator.java"


# static fields
.field static final DBG:Z = false

.field static final MAX_AID_CFG_LEN:I = 0x280

.field static final MAX_AID_ENTRIES:I = 0x40

.field static final ROUTE_HOST:I = 0x0

.field static final ROUTE_NONE:I = -0x1

.field static final TAG:Ljava/lang/String; = "AidRoutingSimulator"


# instance fields
.field final mAidMatchingSupport:I

.field final mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field mAidRoutingTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDefaultOffHostRoute:I

.field mDefaultRoute:I

.field private mIsCheckingForTemporaryRoute:Z

.field mMaxEntriesSize:I

.field mMaxRoutingSize:I

.field mReservedOffHceAids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRouteForAid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mRoutedAids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidRoutingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    .line 82
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    .line 90
    iput-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mReservedOffHceAids:Ljava/util/List;

    .line 99
    iput-object p2, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 100
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    iget v1, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    iput v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultRoute:I

    .line 101
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    iget v1, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    iput v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultOffHostRoute:I

    .line 102
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    iget v1, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    iput v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidMatchingSupport:I

    .line 103
    const/16 v1, 0x280

    iput v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mMaxRoutingSize:I

    .line 104
    const/16 v1, 0x40

    iput v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mMaxEntriesSize:I

    .line 105
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    const v2, 0x7f0c000d

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "reservedOffHceAidsRes":[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mSupportsPrefixes:Z

    if-nez v1, :cond_54

    .line 108
    if-eqz v0, :cond_54

    array-length v1, v0

    if-eqz v1, :cond_54

    .line 109
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mReservedOffHceAids:Ljava/util/List;

    .line 97
    :goto_53
    return-void

    .line 111
    :cond_54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mReservedOffHceAids:Ljava/util/List;

    goto :goto_53
.end method

.method static getAidsLength(Ljava/util/Collection;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "aids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 296
    .local v3, "length":I
    if-eqz p0, :cond_1e

    .line 297
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 299
    .local v2, "bytes":[B
    if-eqz v2, :cond_7

    .line 300
    array-length v4, v2

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    goto :goto_7

    .line 304
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "bytes":[B
    :cond_1e
    return v3
.end method


# virtual methods
.method public configureRouting(Ljava/util/HashMap;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-direct {v6, v15}, Landroid/util/SparseArray;-><init>(I)V

    .line 207
    .local v6, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 209
    .local v14, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "aidEntry$iterator":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 210
    .local v3, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_52

    const/4 v13, 0x0

    .line 211
    .local v13, "route":I
    :goto_33
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    .local v1, "aid":Ljava/lang/String;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6, v13, v15}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 213
    .local v11, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v6, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 210
    .end local v1    # "aid":Ljava/lang/String;
    .end local v11    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "route":I
    :cond_52
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultOffHostRoute:I

    .restart local v13    # "route":I
    goto :goto_33

    .line 218
    .end local v3    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v13    # "route":I
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 220
    :try_start_5e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 221
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    .line 222
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 223
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_dc

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultRoute:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 239
    .local v10, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_dc

    .line 240
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "defaultRouteAid$iterator":Ljava/util/Iterator;
    :cond_8f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_dc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 243
    .local v8, "defaultRouteAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a7
    :goto_a7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 244
    .local v4, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 245
    .restart local v1    # "aid":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 246
    .restart local v13    # "route":I
    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultRoute:I

    if-eq v13, v15, :cond_a7

    .line 251
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultRoute:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V
    :try_end_d8
    .catchall {:try_start_5e .. :try_end_d8} :catchall_d9

    goto :goto_a7

    .line 218
    .end local v1    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "defaultRouteAid":Ljava/lang/String;
    .end local v9    # "defaultRouteAid$iterator":Ljava/util/Iterator;
    .end local v10    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "route":I
    :catchall_d9
    move-exception v15

    monitor-exit v16

    throw v15

    .line 259
    :cond_dc
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_dd
    :try_start_dd
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v12, v15, :cond_162

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 261
    .restart local v13    # "route":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultRoute:I

    if-eq v13, v15, :cond_15e

    .line 262
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 263
    .local v7, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "aid$iterator":Ljava/util/Iterator;
    :cond_103
    :goto_103
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_15e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    .restart local v1    # "aid":Ljava/lang/String;
    const-string/jumbo v15, "*"

    invoke-virtual {v1, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_158

    .line 265
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidMatchingSupport:I

    if-nez v15, :cond_12a

    .line 266
    const-string/jumbo v15, "AidRoutingSimulator"

    const-string/jumbo v17, "This device does not support prefix AIDs."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_103

    .line 267
    :cond_12a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_148

    .line 272
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 271
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v13}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto :goto_103

    .line 273
    :cond_148
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_103

    .line 276
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto :goto_103

    .line 281
    :cond_158
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V
    :try_end_15d
    .catchall {:try_start_dd .. :try_end_15d} :catchall_d9

    goto :goto_103

    .line 259
    .end local v1    # "aid":Ljava/lang/String;
    .end local v2    # "aid$iterator":Ljava/util/Iterator;
    .end local v7    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_15e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_dd

    .end local v13    # "route":I
    :cond_162
    monitor-exit v16

    .line 287
    const/4 v15, 0x1

    return v15
.end method

.method isCheckingForTemporaryRoute()Z
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mIsCheckingForTemporaryRoute:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 167
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isOverflowed(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 308
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 309
    :cond_a
    return v1

    .line 312
    :cond_b
    invoke-static {p1}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->getAidsLength(Ljava/util/Collection;)I

    move-result v2

    iget v3, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mMaxRoutingSize:I

    if-gt v2, v3, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mMaxEntriesSize:I

    if-le v2, v3, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b
.end method

.method public overflow(ILjava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "temporaryRoute"    # I
    .param p4, "defaultPayment"    # Landroid/content/ComponentName;
    .param p5, "foregroundService"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local p3, "disabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v2, -0x1

    if-ne p1, v2, :cond_8

    .line 121
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->overflow(Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v1

    .line 137
    .local v1, "result":Z
    :goto_7
    return v1

    .line 123
    .end local v1    # "result":Z
    :cond_8
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 126
    const/4 v2, 0x1

    :try_start_c
    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mIsCheckingForTemporaryRoute:Z

    .line 127
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultRoute:I

    .line 128
    .local v0, "defaultRoute":I
    iput p1, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultRoute:I

    .line 130
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->overflow(Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v1

    .line 133
    .restart local v1    # "result":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mIsCheckingForTemporaryRoute:Z

    .line 134
    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultRoute:I
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1d

    monitor-exit v3

    goto :goto_7

    .line 123
    .end local v0    # "defaultRoute":I
    .end local v1    # "result":Z
    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public overflow(Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 12
    .param p3, "defaultPayment"    # Landroid/content/ComponentName;
    .param p4, "foregroundService"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local p2, "disabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 143
    :try_start_5
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultRoute:I

    .line 145
    .local v0, "defaultRoute":I
    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDisabledServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 146
    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDisabledServices:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    iput-object p3, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 148
    iput-object p4, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->generateServiceMapLocked(Ljava/util/List;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->generateAidCacheLocked()V

    .line 153
    iget v5, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mDefaultRoute:I

    if-eq v0, v5, :cond_3c

    const/4 v1, 0x1

    .line 155
    .local v1, "isDefaultRouteUpdated":Z
    :goto_20
    iget-boolean v5, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mIsCheckingForTemporaryRoute:Z

    if-nez v5, :cond_26

    if-eqz v1, :cond_3e

    .line 161
    :cond_26
    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-static {v5}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->getAidsLength(Ljava/util/Collection;)I

    move-result v5

    iget v6, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mMaxRoutingSize:I

    if-gt v5, v6, :cond_3a

    .line 162
    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mMaxEntriesSize:I
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_4e

    if-le v5, v6, :cond_4c

    :cond_3a
    :goto_3a
    monitor-exit v4

    .line 161
    return v2

    .line 153
    .end local v1    # "isDefaultRouteUpdated":Z
    :cond_3c
    const/4 v1, 0x0

    .restart local v1    # "isDefaultRouteUpdated":Z
    goto :goto_20

    .line 156
    :cond_3e
    :try_start_3e
    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_4e

    move-result v5

    .line 155
    if-eqz v5, :cond_26

    monitor-exit v4

    .line 158
    return v3

    :cond_4c
    move v2, v3

    .line 162
    goto :goto_3a

    .line 142
    .end local v0    # "defaultRoute":I
    .end local v1    # "isDefaultRouteUpdated":Z
    :catchall_4e
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method protected routeAids(Ljava/lang/String;I)V
    .registers 4
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method updateRoutingLocked()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 173
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 176
    .local v5, "routingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 175
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "aidEntry$iterator":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    .local v2, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, "aid":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 179
    .local v4, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-boolean v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    if-eqz v6, :cond_10

    .line 183
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_10

    .line 185
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v6, :cond_46

    .line 188
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 189
    :cond_46
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v7, :cond_56

    .line 192
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 193
    :cond_56
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_10

    .line 195
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 198
    .end local v0    # "aid":Ljava/lang/String;
    .end local v2    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v4    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_66
    iget-object v6, p0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->mReservedOffHceAids:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .restart local v0    # "aid":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 202
    .end local v0    # "aid":Ljava/lang/String;
    :cond_80
    invoke-virtual {p0, v5}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->configureRouting(Ljava/util/HashMap;)Z

    .line 172
    return-void
.end method
