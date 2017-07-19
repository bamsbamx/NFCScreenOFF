.class public final Lcom/android/nfc/NfcDiscoveryParameters;
.super Ljava/lang/Object;
.source "NfcDiscoveryParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    }
.end annotation


# static fields
.field static final NFC_POLL_DEFAULT:I = -0x1


# instance fields
.field private mEnableHostRouting:Z

.field private mEnableLowPowerDiscovery:Z

.field private mEnableP2p:Z

.field private mEnableReaderMode:Z

.field private mTechMask:I


# direct methods
.method static synthetic -get0(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/nfc/NfcDiscoveryParameters;I)I
    .registers 2

    iput p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    return p1
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    .line 82
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/nfc/NfcDiscoveryParameters;
    .registers 1

    .prologue
    .line 145
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-direct {v0}, Lcom/android/nfc/NfcDiscoveryParameters;-><init>()V

    return-object v0
.end method

.method public static getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;
    .registers 1

    .prologue
    .line 149
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-direct {v0}, Lcom/android/nfc/NfcDiscoveryParameters;-><init>()V

    return-object v0
.end method

.method public static newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .registers 2

    .prologue
    .line 141
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;-><init>(Lcom/android/nfc/NfcDiscoveryParameters$Builder;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    if-ne p1, p0, :cond_5

    .line 111
    return v1

    .line 114
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/nfc/NfcDiscoveryParameters;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    .line 115
    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    .line 117
    check-cast v0, Lcom/android/nfc/NfcDiscoveryParameters;

    .line 118
    .local v0, "params":Lcom/android/nfc/NfcDiscoveryParameters;
    iget v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    iget v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    if-ne v3, v4, :cond_36

    .line 119
    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    iget-boolean v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    if-ne v3, v4, :cond_36

    .line 120
    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    iget-boolean v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    if-ne v3, v4, :cond_36

    .line 121
    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    iget-boolean v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    if-ne v3, v4, :cond_36

    .line 122
    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    iget-boolean v4, v0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    if-ne v3, v4, :cond_34

    .line 118
    :goto_33
    return v1

    :cond_34
    move v1, v2

    .line 122
    goto :goto_33

    :cond_36
    move v1, v2

    .line 118
    goto :goto_33
.end method

.method public getTechMask()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    return v0
.end method

.method public shouldEnableDiscovery()Z
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public shouldEnableHostRouting()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    return v0
.end method

.method public shouldEnableLowPowerDiscovery()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return v0
.end method

.method public shouldEnableP2p()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return v0
.end method

.method public shouldEnableReaderMode()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6a

    .line 129
    const-string/jumbo v1, "mTechMask: default\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :goto_10
    const-string/jumbo v1, "mEnableLPD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v1, "mEnableReader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v1, "mEnableHostRouting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v1, "mEnableP2p: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 131
    :cond_6a
    const-string/jumbo v1, "mTechMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10
.end method
