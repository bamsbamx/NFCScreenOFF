.class public Lcom/android/nfc/cardemulation/AidRoutingManager;
.super Ljava/lang/Object;
.source "AidRoutingManager.java"


# static fields
.field static final AID_MATCHING_EXACT_ONLY:I = 0x0

.field static final AID_MATCHING_EXACT_OR_PREFIX:I = 0x1

.field static final AID_MATCHING_PREFIX_ONLY:I = 0x2

.field static final DBG:Z

.field static final ROUTE_HOST:I = 0x0

.field static final ROUTE_UICC:I = 0x2

.field static final TAG:Ljava/lang/String; = "AidRoutingManager"


# instance fields
.field mAidMatchingPlatform:I

.field final mAidMatchingSupport:I

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

.field final mLock:Ljava/lang/Object;

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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 83
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetDefaultRouteDestination()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 84
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_45

    const-string/jumbo v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDefaultRoute=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_45
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetDefaultOffHostRouteDestination()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    .line 86
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_6f

    const-string/jumbo v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDefaultOffHostRoute=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_6f
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetAidMatchingMode()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    .line 88
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_99

    const-string/jumbo v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAidMatchingSupport=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_99
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetAidMatchingPlatform()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    .line 90
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_c3

    const-string/jumbo v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAidMatchingPlatform=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_c3
    return-void
.end method

.method private native doGetAidMatchingMode()I
.end method

.method private native doGetAidMatchingPlatform()I
.end method

.method private native doGetDefaultOffHostRouteDestination()I
.end method

.method private native doGetDefaultRouteDestination()I
.end method


# virtual methods
.method clearNfcRoutingTableLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 99
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "aidEntry$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    .local v1, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "aid":Ljava/lang/String;
    const-string/jumbo v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 102
    iget v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    if-nez v3, :cond_53

    .line 103
    const-string/jumbo v3, "AidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Device does not support prefix AIDs but AID ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    const-string/jumbo v5, "] is registered"

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_4b
    :goto_4b
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/nfc/NfcService;->unrouteAids(Ljava/lang/String;)V

    goto :goto_b

    .line 105
    :cond_53
    iget v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_81

    .line 106
    sget-boolean v3, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v3, :cond_76

    const-string/jumbo v3, "AidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unrouting prefix AID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 109
    :cond_81
    iget v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4b

    .line 110
    sget-boolean v3, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v3, :cond_4b

    const-string/jumbo v3, "AidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unrouting prefix AID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 113
    :cond_a5
    sget-boolean v3, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v3, :cond_4b

    const-string/jumbo v3, "AidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unrouting exact AID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 98
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_c4
    return-void
.end method

.method public configureRouting(Ljava/util/HashMap;)Z
    .registers 22
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
    .line 121
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v7, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 122
    .local v7, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Ljava/util/HashMap;-><init>(I)V

    .line 124
    .local v15, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "aidEntry$iterator":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 125
    .local v4, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_58

    const/4 v14, 0x0

    .line 126
    .local v14, "route":I
    :goto_35
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "aid":Ljava/lang/String;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v7, v14, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    .line 128
    .local v12, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v7, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 125
    .end local v2    # "aid":Ljava/lang/String;
    .end local v12    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "route":I
    :cond_58
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    .restart local v14    # "route":I
    goto :goto_35

    .line 133
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v14    # "route":I
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 134
    :try_start_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_85

    .line 135
    sget-boolean v16, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v16, :cond_81

    const-string/jumbo v16, "AidRoutingManager"

    const-string/jumbo v18, "Routing table unchanged, not updating"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_64 .. :try_end_81} :catchall_14b

    .line 136
    :cond_81
    const/16 v16, 0x0

    monitor-exit v17

    return v16

    .line 140
    :cond_85
    :try_start_85
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 141
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 142
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v16, v0

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_14e

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 159
    .local v11, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v11, :cond_14e

    .line 160
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "defaultRouteAid$iterator":Ljava/util/Iterator;
    :cond_ba
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_14e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 163
    .local v9, "defaultRouteAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d4
    :goto_d4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_ba

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 164
    .local v5, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    .restart local v2    # "aid":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 166
    .restart local v14    # "route":I
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_d4

    .line 167
    sget-boolean v16, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v16, :cond_139

    .line 168
    const-string/jumbo v16, "AidRoutingManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Adding AID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " for default "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 169
    const-string/jumbo v19, "route, because a conflicting shorter AID will be "

    .line 168
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 170
    const-string/jumbo v19, "added to the routing table"

    .line 168
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_139
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V
    :try_end_14a
    .catchall {:try_start_85 .. :try_end_14a} :catchall_14b

    goto :goto_d4

    .line 133
    .end local v2    # "aid":Ljava/lang/String;
    .end local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "defaultRouteAid":Ljava/lang/String;
    .end local v10    # "defaultRouteAid$iterator":Ljava/util/Iterator;
    .end local v11    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "route":I
    :catchall_14b
    move-exception v16

    monitor-exit v17

    throw v16

    .line 179
    :cond_14e
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_14f
    :try_start_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v13, v0, :cond_29e

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 181
    .restart local v14    # "route":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_29a

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 183
    .local v8, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "aid$iterator":Ljava/util/Iterator;
    :cond_185
    :goto_185
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_29a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .restart local v2    # "aid":Ljava/lang/String;
    const-string/jumbo v16, "*"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_25c

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v16, v0

    if-nez v16, :cond_1b2

    .line 186
    const-string/jumbo v16, "AidRoutingManager"

    const-string/jumbo v18, "This device does not support prefix AIDs."

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_185

    .line 187
    :cond_1b2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v16, v0

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_210

    .line 188
    sget-boolean v16, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v16, :cond_1f3

    const-string/jumbo v16, "AidRoutingManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Routing prefix AID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " to route "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 189
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 188
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1f3
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v16

    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    .line 191
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V

    goto/16 :goto_185

    .line 193
    :cond_210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_185

    .line 194
    sget-boolean v16, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v16, :cond_251

    const-string/jumbo v16, "AidRoutingManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Routing prefix AID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " to route "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 195
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 194
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_251
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v14}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V

    goto/16 :goto_185

    .line 199
    :cond_25c
    sget-boolean v16, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v16, :cond_28f

    const-string/jumbo v16, "AidRoutingManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Routing exact AID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " to route "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 200
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 199
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_28f
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v14}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V
    :try_end_298
    .catchall {:try_start_14f .. :try_end_298} :catchall_14b

    goto/16 :goto_185

    .line 179
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "aid$iterator":Ljava/util/Iterator;
    .end local v8    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_29a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_14f

    .end local v14    # "route":I
    :cond_29e
    monitor-exit v17

    .line 209
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 211
    const/16 v16, 0x1

    return v16
.end method

.method public configureRoutingWithPowerState(Ljava/util/HashMap;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    const-string/jumbo v0, "AidRoutingManager"

    const-string/jumbo v1, "configureRoutingWithPowerState() is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 228
    const-string/jumbo v4, "Routing table:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    Default route: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    if-nez v4, :cond_92

    const-string/jumbo v4, "host"

    :goto_19
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 231
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    :try_start_28
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_99

    .line 232
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 233
    .local v2, "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    Routed to 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    .local v0, "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "        \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_28 .. :try_end_8e} :catchall_8f

    goto :goto_64

    .line 230
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_8f
    move-exception v4

    monitor-exit v5

    throw v4

    .line 229
    .end local v3    # "i":I
    :cond_92
    const-string/jumbo v4, "secure element"

    goto :goto_19

    .line 231
    .restart local v1    # "aid$iterator":Ljava/util/Iterator;
    .restart local v2    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    :cond_96
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_99
    monitor-exit v5

    .line 227
    return-void
.end method

.method public getAidMatchingPlatform()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    return v0
.end method

.method public onNfccRoutingTableCleared()V
    .registers 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 223
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    .line 218
    return-void

    .line 221
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public supportAlwaysPrefixMatching()Z
    .registers 3

    .prologue
    .line 253
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "AidRoutingManager"

    const-string/jumbo v1, "supportAlwaysPrefixMatching() is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public supportsAidPrefixRouting()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 94
    iget v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    if-eq v1, v0, :cond_a

    .line 95
    iget v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 94
    :cond_a
    :goto_a
    return v0

    .line 95
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
