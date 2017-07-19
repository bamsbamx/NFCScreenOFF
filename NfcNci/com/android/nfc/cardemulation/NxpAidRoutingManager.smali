.class public Lcom/android/nfc/cardemulation/NxpAidRoutingManager;
.super Lcom/android/nfc/cardemulation/AidRoutingManager;
.source "NxpAidRoutingManager.java"


# static fields
.field static final AID_MATCHING_K:I = 0x2

.field static final AID_MATCHING_L:I = 0x1

.field static final TAG:Ljava/lang/String; = "NxpAidRoutingManager"


# instance fields
.field final mActivityManager:Landroid/app/ActivityManager;

.field mIsOffHostLocked:Z

.field mPowerForAid:Ljava/util/HashMap;
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
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mIsOffHostLocked:Z

    .line 79
    sget-boolean v1, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "NxpAidRoutingManager"

    const-string/jumbo v2, "NxpAidRoutingManager instantiated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1a
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 81
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 78
    return-void
.end method

.method private commit(Ljava/util/Hashtable;Z)V
    .registers 10
    .param p2, "isOffHostLocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 236
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 237
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 239
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->clearRouting()V

    .line 241
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/AidElement;

    .line 243
    .local v0, "element":Lcom/android/nfc/cardemulation/AidElement;
    if-eqz p2, :cond_4d

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getRouteLocation()I

    move-result v3

    if-eqz v3, :cond_4d

    .line 244
    sget-boolean v3, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v3, :cond_16

    const-string/jumbo v3, "NxpAidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skipped off-host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 247
    :cond_4d
    sget-boolean v3, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v3, :cond_5b

    const-string/jumbo v3, "NxpAidRoutingManager"

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_5b
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    .line 249
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getAid()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getRouteLocation()I

    move-result v5

    .line 251
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getPowerState()I

    move-result v6

    .line 248
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;II)V

    goto :goto_16

    .line 255
    .end local v0    # "element":Lcom/android/nfc/cardemulation/AidElement;
    :cond_6f
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 234
    return-void
.end method

.method private getTopClass()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "topClass":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 286
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 287
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 289
    .end local v1    # "topClass":Ljava/lang/String;
    :cond_1d
    return-object v1
.end method

.method private isProcessingTapAgain()Z
    .registers 3

    .prologue
    .line 279
    const-class v1, Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "appChooserActivityClassName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->getTopClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method clearNfcRoutingTableLocked()V
    .registers 2

    .prologue
    .line 85
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->clearRouting()V

    .line 86
    iget-object v0, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 87
    iget-object v0, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 84
    return-void
.end method

.method public configureRoutingWithPowerState(Ljava/util/HashMap;)Z
    .registers 29
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
    .line 92
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mDefaultRoute:I

    .line 94
    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isHceDebugMode()Z

    move-result v23

    if-eqz v23, :cond_114

    .line 95
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mDefaultRoute:I

    .line 96
    sget-boolean v23, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v23, :cond_40

    const-string/jumbo v23, "NxpAidRoutingManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "HCE Debug mode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mDefaultRoute:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_40
    :goto_40
    new-instance v21, Ljava/util/Hashtable;

    const/16 v23, 0x32

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 103
    .local v21, "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    new-instance v8, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v23

    move/from16 v0, v23

    invoke-direct {v8, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 104
    .local v8, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v22, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Ljava/util/HashMap;-><init>(I)V

    .line 105
    .local v22, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v23

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 107
    .local v19, "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "aidEntry$iterator":Ljava/util/Iterator;
    :cond_74
    :goto_74
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_148

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 108
    .local v5, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/AidElement;

    .line 109
    .local v13, "elem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v13}, Lcom/android/nfc/cardemulation/AidElement;->getRouteLocation()I

    move-result v20

    .line 110
    .local v20, "route":I
    invoke-virtual {v13}, Lcom/android/nfc/cardemulation/AidElement;->getPowerState()I

    move-result v18

    .line 111
    .local v18, "power":I
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_a1

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mDefaultOffHostRoute:I

    move/from16 v20, v0

    .line 113
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/nfc/cardemulation/AidElement;->setRouteLocation(I)V

    .line 115
    :cond_a1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    .local v3, "aid":Ljava/lang/String;
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    move/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    .line 117
    .local v14, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    move/from16 v0, v20

    invoke-virtual {v8, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-boolean v23, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v23, :cond_74

    const-string/jumbo v23, "NxpAidRoutingManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "#######Routing AID "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " to route "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 122
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 121
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 122
    const-string/jumbo v25, " with power "

    .line 121
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 97
    .end local v3    # "aid":Ljava/lang/String;
    .end local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .end local v7    # "aidEntry$iterator":Ljava/util/Iterator;
    .end local v8    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v14    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "power":I
    .end local v19    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v20    # "route":I
    .end local v21    # "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .end local v22    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_114
    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isUiccDebugMode()Z

    move-result v23

    if-eqz v23, :cond_40

    .line 98
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mDefaultRoute:I

    .line 99
    sget-boolean v23, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v23, :cond_40

    const-string/jumbo v23, "NxpAidRoutingManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "UICC Debug mode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mDefaultRoute:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    .line 127
    .restart local v7    # "aidEntry$iterator":Ljava/util/Iterator;
    .restart local v8    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v19    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v21    # "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .restart local v22    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 129
    :try_start_14f
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/nfc/NfcService;->isOffHostLocked()Z

    move-result v17

    .line 130
    .local v17, "isOffHostLocked":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mIsOffHostLocked:Z

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a5

    const/16 v16, 0x1

    .line 131
    .local v16, "isLockedStatusUnchanged":Z
    :goto_165
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mIsOffHostLocked:Z

    .line 135
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/nfc/NfcService;->isForceUpdateRoutingTable()Z

    move-result v23

    if-nez v23, :cond_1bd

    if-eqz v16, :cond_1bd

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 135
    if-eqz v23, :cond_1bd

    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->isProcessingTapAgain()Z

    move-result v23

    if-eqz v23, :cond_1a8

    .line 138
    sget-boolean v23, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v23, :cond_19a

    const-string/jumbo v23, "NxpAidRoutingManager"

    const-string/jumbo v25, "Routing table unchanged, but commit the routing"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_19a
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/nfc/NfcService;->commitRouting()V
    :try_end_1a1
    .catchall {:try_start_14f .. :try_end_1a1} :catchall_1ba

    .line 143
    :cond_1a1
    :goto_1a1
    const/16 v23, 0x0

    monitor-exit v24

    return v23

    .line 130
    .end local v16    # "isLockedStatusUnchanged":Z
    :cond_1a5
    const/16 v16, 0x0

    .restart local v16    # "isLockedStatusUnchanged":Z
    goto :goto_165

    .line 141
    :cond_1a8
    :try_start_1a8
    sget-boolean v23, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v23, :cond_1a1

    const-string/jumbo v23, "NxpAidRoutingManager"

    const-string/jumbo v25, "Routing table unchanged, not updating"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b9
    .catchall {:try_start_1a8 .. :try_end_1b9} :catchall_1ba

    goto :goto_1a1

    .line 127
    .end local v16    # "isLockedStatusUnchanged":Z
    .end local v17    # "isOffHostLocked":Z
    :catchall_1ba
    move-exception v23

    monitor-exit v24

    throw v23

    .line 147
    .restart local v16    # "isLockedStatusUnchanged":Z
    .restart local v17    # "isOffHostLocked":Z
    :cond_1bd
    :try_start_1bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 148
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 149
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    .line 150
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v23, v0

    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_1ec

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidMatchingPlatform:I

    move/from16 v23, v0

    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_2a2

    .line 167
    :cond_1ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mDefaultRoute:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    .line 168
    .local v12, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v12, :cond_2a2

    .line 169
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "defaultRouteAid$iterator":Ljava/util/Iterator;
    :cond_208
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2a2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 172
    .local v10, "defaultRouteAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_222
    :goto_222
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_208

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 173
    .local v6, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 175
    .restart local v20    # "route":I
    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_222

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mDefaultRoute:I

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_222

    .line 176
    sget-boolean v23, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v23, :cond_289

    const-string/jumbo v23, "NxpAidRoutingManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Adding AID "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " for default "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 177
    const-string/jumbo v26, "route, because a conflicting shorter AID will be added"

    .line 176
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 178
    const-string/jumbo v26, "to the routing table"

    .line 176
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_289
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/AidElement;

    .line 180
    .restart local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mDefaultRoute:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/nfc/cardemulation/AidElement;->setRouteLocation(I)V

    .line 181
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_222

    .line 190
    .end local v3    # "aid":Ljava/lang/String;
    .end local v6    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "defaultRouteAid":Ljava/lang/String;
    .end local v11    # "defaultRouteAid$iterator":Ljava/util/Iterator;
    .end local v12    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v20    # "route":I
    :cond_2a2
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v15, v0, :cond_412

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    .line 192
    .restart local v20    # "route":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mDefaultRoute:I

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_40e

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 194
    .local v9, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "aid$iterator":Ljava/util/Iterator;
    :cond_2dd
    :goto_2dd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_40e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 195
    .restart local v3    # "aid":Ljava/lang/String;
    const-string/jumbo v23, "*"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3cc

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v23, v0

    if-nez v23, :cond_30a

    .line 197
    const-string/jumbo v23, "NxpAidRoutingManager"

    const-string/jumbo v25, "This device does not support prefix AIDs."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2dd

    .line 198
    :cond_30a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v23, v0

    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_36f

    .line 199
    sget-boolean v23, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v23, :cond_34b

    const-string/jumbo v23, "NxpAidRoutingManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Routing prefix AID "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " to route "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 200
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 199
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_34b
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/AidElement;

    .line 203
    .restart local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/nfc/cardemulation/AidElement;->setAid(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2dd

    .line 207
    .end local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    :cond_36f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_2dd

    .line 208
    const-string/jumbo v23, "NxpAidRoutingManager"

    const-string/jumbo v25, "Routing AID in AID_MATCHING_EXACT_OR_PREFIX"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-boolean v23, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v23, :cond_3bd

    const-string/jumbo v23, "NxpAidRoutingManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Routing prefix AID "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " to route "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 210
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 209
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_3bd
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/AidElement;

    .line 212
    .restart local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2dd

    .line 216
    .end local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    :cond_3cc
    sget-boolean v23, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->DBG:Z

    if-eqz v23, :cond_3ff

    const-string/jumbo v23, "NxpAidRoutingManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Routing exact AID "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " to route "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 217
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 216
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_3ff
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/AidElement;

    .line 219
    .restart local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40c
    .catchall {:try_start_1bd .. :try_end_40c} :catchall_1ba

    goto/16 :goto_2dd

    .line 190
    .end local v3    # "aid":Ljava/lang/String;
    .end local v4    # "aid$iterator":Ljava/util/Iterator;
    .end local v9    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    :cond_40e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2a3

    .end local v20    # "route":I
    :cond_412
    monitor-exit v24

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->commit(Ljava/util/Hashtable;Z)V

    .line 231
    const/16 v23, 0x1

    return v23
.end method

.method public getAidMatchMode()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidMatchingSupport:I

    return v0
.end method

.method public getAidMatchingPlatform()I
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidMatchingPlatform:I

    return v0
.end method

.method public supportAlwaysPrefixMatching()Z
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 269
    iget v0, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidMatchingPlatform:I

    if-ne v0, v1, :cond_7

    .line 270
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_7
    iput v1, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingManager;->mAidMatchingPlatform:I

    .line 273
    const/4 v0, 0x1

    return v0
.end method
