.class public Lcom/android/nfc/cardemulation/NxpAidRoutingSimulator;
.super Lcom/android/nfc/cardemulation/AidRoutingSimulator;
.source "NxpAidRoutingSimulator.java"


# static fields
.field static final MAX_AID_CFG_LEN:I = 0xa0

.field static final MAX_AID_ENTRIES:I = 0x14

.field static final TAG:Ljava/lang/String; = "NxpAidRoutingSimulator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidRoutingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    .line 36
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingSimulator;->mMaxRoutingSize:I

    .line 37
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingSimulator;->mMaxEntriesSize:I

    .line 33
    return-void
.end method


# virtual methods
.method public configureRouting(Ljava/util/HashMap;)Z
    .registers 4
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
    .line 42
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v0

    .line 44
    .local v0, "currentDefaultRoute":I
    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isHceDebugMode()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingSimulator;->mDefaultRoute:I

    const/4 v0, 0x0

    .line 52
    :cond_12
    :goto_12
    iget v1, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingSimulator;->mDefaultRoute:I

    if-eq v0, v1, :cond_1e

    .line 54
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/NxpAidRoutingSimulator;->isCheckingForTemporaryRoute()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 55
    iput v0, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingSimulator;->mDefaultRoute:I

    .line 59
    :cond_1e
    invoke-super {p0, p1}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->configureRouting(Ljava/util/HashMap;)Z

    move-result v1

    return v1

    .line 47
    :cond_23
    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isUiccDebugMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 48
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingSimulator;->mDefaultRoute:I

    const/4 v0, 0x2

    goto :goto_12
.end method

.method protected routeAids(Ljava/lang/String;I)V
    .registers 6
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I

    .prologue
    .line 64
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "cuttedAid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v0    # "cuttedAid":Ljava/lang/String;
    :goto_19
    return-void

    .line 68
    :cond_1a
    iget-object v1, p0, Lcom/android/nfc/cardemulation/NxpAidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method
