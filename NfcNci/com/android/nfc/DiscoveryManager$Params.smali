.class public Lcom/android/nfc/DiscoveryManager$Params;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/DiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# static fields
.field public static final COMPOSITION_AND:I = 0x0

.field public static final COMPOSITION_OVERRIDE:I = 0x1

.field public static final NFA_PROTOCOL_MASK_ISO_DEP:I = 0x8

.field public static final NFA_PROTOCOL_MASK_NFC_DEP:I = 0x10

.field public static final NFA_PROTOCOL_MASK_T1T:I = 0x1

.field public static final NFA_PROTOCOL_MASK_T2T:I = 0x2

.field public static final NFA_PROTOCOL_MASK_T3T:I = 0x4

.field public static final NFA_TECHNOLOGY_MASK_A:I = 0x1

.field public static final NFA_TECHNOLOGY_MASK_B:I = 0x2

.field public static final NFA_TECHNOLOGY_MASK_F:I = 0x4

.field public static final NFA_TECHNOLOGY_MASK_ISO15693:I = 0x8

.field public static final NFA_TECHNOLOGY_MASK_KOVIO:I = 0x20

.field public static final PRM_COMPOSITION_MODE:Ljava/lang/String; = "compositionMode"

.field public static final PRM_IS_DISC_CTRL_DISABLED:Ljava/lang/String; = "isDiscCtrlDisabled"

.field public static final PRM_IS_EFFECTIVE_ON_POLLING_DISABLED:Ljava/lang/String; = "isEffectiveOnPollingDisabled"

.field public static final PRM_IS_HCE_ALLOWED:Ljava/lang/String; = "isHceAllowed"

.field public static final PRM_LISTEN_MASK:Ljava/lang/String; = "listenMask"

.field public static final PRM_LISTEN_MODE:Ljava/lang/String; = "listenMode"

.field public static final PRM_P2P_LISTEN_MASK:Ljava/lang/String; = "p2pListenMask"

.field public static final PRM_POLL_MASK:Ljava/lang/String; = "pollMask"

.field public static final PRM_SE_MASK:Ljava/lang/String; = "seMask"

.field public static final SE_MASK_ALL:I = 0xf

.field public static final SE_MASK_DH:I = 0x1

.field public static final SE_MASK_ESE_FN:I = 0x8

.field public static final SE_MASK_ESE_SMX:I = 0x4

.field private static final SE_MASK_RECONFIG:I = -0x80000000

.field public static final SE_MASK_UICC:I = 0x2


# instance fields
.field public final compositionMode:Ljava/lang/Integer;

.field public final isDiscCtrlDisabled:Ljava/lang/Boolean;

.field public final isEffectiveOnPollingDisabled:Ljava/lang/Boolean;

.field public final isHceAllowed:Ljava/lang/Boolean;

.field public final listenMask:Ljava/lang/Integer;

.field public final listenMode:Ljava/lang/Integer;

.field public final p2pListenMask:Ljava/lang/Integer;

.field public final pollMask:Ljava/lang/Integer;

.field public final priority:I

.field public final protoRoutingEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/DiscoveryManager$Routing;",
            ">;"
        }
    .end annotation
.end field

.field public final readerModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field public final seMask:Ljava/lang/Integer;

.field public final techRoutingEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/DiscoveryManager$Routing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/HashMap;)V
    .registers 8
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 217
    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->techRoutingEntries:Ljava/util/HashMap;

    .line 220
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 219
    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->protoRoutingEntries:Ljava/util/HashMap;

    .line 294
    const/4 v1, 0x3

    if-eq p1, v1, :cond_19

    .line 295
    if-gez p1, :cond_1f

    .line 296
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 295
    :cond_1f
    const/4 v1, 0x7

    if-ge p1, v1, :cond_19

    .line 299
    iput p1, p0, Lcom/android/nfc/DiscoveryManager$Params;->priority:I

    .line 300
    iput-object v4, p0, Lcom/android/nfc/DiscoveryManager$Params;->readerModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 302
    const-string/jumbo v1, "pollMask"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->pollMask:Ljava/lang/Integer;

    .line 303
    const-string/jumbo v1, "p2pListenMask"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->p2pListenMask:Ljava/lang/Integer;

    .line 304
    const-string/jumbo v1, "listenMask"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->listenMask:Ljava/lang/Integer;

    .line 305
    const-string/jumbo v1, "seMask"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->seMask:Ljava/lang/Integer;

    .line 306
    const-string/jumbo v1, "listenMode"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->listenMode:Ljava/lang/Integer;

    .line 307
    const-string/jumbo v1, "isHceAllowed"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 308
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_a4

    .line 309
    iput-object v4, p0, Lcom/android/nfc/DiscoveryManager$Params;->isHceAllowed:Ljava/lang/Boolean;

    .line 313
    :goto_6a
    const-string/jumbo v1, "isDiscCtrlDisabled"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 314
    .restart local v0    # "value":Ljava/lang/Integer;
    if-nez v0, :cond_b4

    .line 315
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->isDiscCtrlDisabled:Ljava/lang/Boolean;

    .line 319
    :goto_7b
    const-string/jumbo v1, "isEffectiveOnPollingDisabled"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 320
    .restart local v0    # "value":Ljava/lang/Integer;
    if-nez v0, :cond_c4

    .line 321
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->isEffectiveOnPollingDisabled:Ljava/lang/Boolean;

    .line 325
    :goto_8c
    const-string/jumbo v1, "compositionMode"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 326
    .restart local v0    # "value":Ljava/lang/Integer;
    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_d4

    .line 327
    :cond_9d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    .line 293
    :goto_a3
    return-void

    .line 311
    :cond_a4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_b2

    move v1, v2

    :goto_ab
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->isHceAllowed:Ljava/lang/Boolean;

    goto :goto_6a

    :cond_b2
    move v1, v3

    goto :goto_ab

    .line 317
    :cond_b4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_c2

    move v1, v2

    :goto_bb
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->isDiscCtrlDisabled:Ljava/lang/Boolean;

    goto :goto_7b

    :cond_c2
    move v1, v3

    goto :goto_bb

    .line 323
    :cond_c4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_d2

    move v1, v2

    :goto_cb
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->isEffectiveOnPollingDisabled:Ljava/lang/Boolean;

    goto :goto_8c

    :cond_d2
    move v1, v3

    goto :goto_cb

    .line 329
    :cond_d4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    goto :goto_a3
.end method

.method public constructor <init>(Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .registers 6
    .param p1, "params"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 217
    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->techRoutingEntries:Ljava/util/HashMap;

    .line 220
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 219
    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->protoRoutingEntries:Ljava/util/HashMap;

    .line 259
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->priority:I

    .line 260
    iput-object p1, p0, Lcom/android/nfc/DiscoveryManager$Params;->readerModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "pm":I
    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->readerModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v1, v1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_22

    .line 264
    const/4 v0, 0x1

    .line 266
    :cond_22
    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->readerModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v1, v1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2c

    .line 267
    or-int/lit8 v0, v0, 0x2

    .line 269
    :cond_2c
    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->readerModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v1, v1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_36

    .line 270
    or-int/lit8 v0, v0, 0x20

    .line 272
    :cond_36
    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->readerModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v1, v1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_40

    .line 273
    or-int/lit8 v0, v0, 0x4

    .line 275
    :cond_40
    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->readerModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v1, v1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4a

    .line 276
    or-int/lit8 v0, v0, 0x8

    .line 278
    :cond_4a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->pollMask:Ljava/lang/Integer;

    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->p2pListenMask:Ljava/lang/Integer;

    .line 280
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->listenMask:Ljava/lang/Integer;

    .line 281
    iput-object v3, p0, Lcom/android/nfc/DiscoveryManager$Params;->seMask:Ljava/lang/Integer;

    .line 282
    iput-object v3, p0, Lcom/android/nfc/DiscoveryManager$Params;->isHceAllowed:Ljava/lang/Boolean;

    .line 283
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->isDiscCtrlDisabled:Ljava/lang/Boolean;

    .line 284
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->isEffectiveOnPollingDisabled:Ljava/lang/Boolean;

    .line 285
    iput-object v3, p0, Lcom/android/nfc/DiscoveryManager$Params;->listenMode:Ljava/lang/Integer;

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    .line 258
    return-void
.end method


# virtual methods
.method public addProtoRouting(IIII)V
    .registers 8
    .param p1, "seId"    # I
    .param p2, "switchOn"    # I
    .param p3, "switchOff"    # I
    .param p4, "batteryOff"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/nfc/DiscoveryManager$Params;->protoRoutingEntries:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/nfc/DiscoveryManager$Routing;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/nfc/DiscoveryManager$Routing;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public addTechRouting(IIII)V
    .registers 8
    .param p1, "seId"    # I
    .param p2, "switchOn"    # I
    .param p3, "switchOff"    # I
    .param p4, "batteryOff"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/nfc/DiscoveryManager$Params;->techRoutingEntries:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/nfc/DiscoveryManager$Routing;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/nfc/DiscoveryManager$Routing;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-void
.end method

.method public getProtoRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;
    .registers 4
    .param p1, "seId"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/nfc/DiscoveryManager$Params;->protoRoutingEntries:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DiscoveryManager$Routing;

    return-object v0
.end method

.method public getTechRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;
    .registers 4
    .param p1, "seId"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/nfc/DiscoveryManager$Params;->techRoutingEntries:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DiscoveryManager$Routing;

    return-object v0
.end method
