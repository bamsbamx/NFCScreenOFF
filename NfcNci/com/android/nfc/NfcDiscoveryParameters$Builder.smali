.class public Lcom/android/nfc/NfcDiscoveryParameters$Builder;
.super Ljava/lang/Object;
.source "NfcDiscoveryParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDiscoveryParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mParameters:Lcom/android/nfc/NfcDiscoveryParameters;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-direct {v0}, Lcom/android/nfc/NfcDiscoveryParameters;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcDiscoveryParameters$Builder;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/nfc/NfcDiscoveryParameters;
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->-get2(Lcom/android/nfc/NfcDiscoveryParameters;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 65
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->-get0(Lcom/android/nfc/NfcDiscoveryParameters;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->-get1(Lcom/android/nfc/NfcDiscoveryParameters;)Z

    move-result v0

    .line 64
    if-eqz v0, :cond_21

    .line 66
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t enable LPTD/P2P and reader mode simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_21
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    return-object v0
.end method

.method public setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->-set0(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    .line 55
    return-object p0
.end method

.method public setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->-set1(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    .line 40
    return-object p0
.end method

.method public setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->-set2(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    .line 60
    return-object p0
.end method

.method public setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->-set3(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    .line 46
    if-eqz p1, :cond_d

    .line 47
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters;->-set1(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    .line 50
    :cond_d
    return-object p0
.end method

.method public setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 3
    .param p1, "techMask"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->-set4(Lcom/android/nfc/NfcDiscoveryParameters;I)I

    .line 35
    return-object p0
.end method
