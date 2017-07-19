.class public Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;
.super Ljava/lang/Object;
.source "NfcConfigRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConfigValue"
.end annotation


# static fields
.field protected static final FORMAT:Ljava/lang/String; = "%02X"

.field public static final LENGTH_DATA_SIZE:I = 0x1

.field public static final N_A:[B


# instance fields
.field protected mLength:I

.field protected mValue:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 590
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->N_A:[B

    .line 588
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "value"    # [B

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    if-eqz p1, :cond_12

    .line 599
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->mValue:[B

    .line 600
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->mValue:[B

    array-length v0, v0

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->mLength:I

    .line 597
    :cond_12
    return-void
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .registers 9
    .param p0, "bytes"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 629
    if-nez p0, :cond_5

    .line 630
    return-object v2

    .line 633
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_c
    if-ge v2, v4, :cond_28

    aget-byte v0, p0, v2

    .line 635
    .local v0, "b":B
    const-string/jumbo v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 637
    .end local v0    # "b":B
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public get()[B
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 610
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->mValue:[B

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->mValue:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_5
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 621
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->mLength:I

    return v0
.end method

.method public isNa()Z
    .registers 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->mValue:[B

    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->N_A:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public set([B)V
    .registers 3
    .param p1, "value"    # [B

    .prologue
    .line 614
    if-eqz p1, :cond_f

    .line 615
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->mValue:[B

    .line 616
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->mValue:[B

    array-length v0, v0

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->mLength:I

    .line 613
    :cond_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->isNa()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "--"

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->mValue:[B

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method
