.class public Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;
.super Ljava/lang/Object;
.source "NfcConfigRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConfigAddress"
.end annotation


# static fields
.field public static final DATA_SIZE:I = 0x2

.field protected static final FORMAT:Ljava/lang/String; = "%04X"

.field protected static final MAX:I = 0xffff

.field protected static final MIN:I = -0x1

.field protected static final N_A:I = -0x1


# instance fields
.field mValue:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    invoke-static {p1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->throwExceptionIfInvalid(I)V

    .line 544
    iput p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->mValue:I

    .line 542
    return-void
.end method

.method public static isValid(I)Z
    .registers 3
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 575
    const/4 v1, -0x1

    if-gt v1, p0, :cond_a

    const v1, 0xffff

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static throwExceptionIfInvalid(I)V
    .registers 4
    .param p0, "value"    # I

    .prologue
    .line 579
    invoke-static {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_20
    return-void
.end method


# virtual methods
.method public get()I
    .registers 2

    .prologue
    .line 553
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->mValue:I

    return v0
.end method

.method public getFirstByteData()B
    .registers 4

    .prologue
    .line 557
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->mValue:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v0, v1, 0x8

    .line 558
    .local v0, "data":I
    int-to-byte v1, v0

    return v1
.end method

.method public getSecondByteData()B
    .registers 3

    .prologue
    .line 562
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->mValue:I

    and-int/lit16 v0, v1, 0xff

    .line 563
    .local v0, "data":I
    int-to-byte v1, v0

    return v1
.end method

.method public isNa()Z
    .registers 3

    .prologue
    .line 571
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->mValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public set(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 567
    iput p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->mValue:I

    .line 566
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->isNa()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "--"

    :goto_9
    return-object v0

    :cond_a
    const-string/jumbo v0, "%04X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->mValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method
