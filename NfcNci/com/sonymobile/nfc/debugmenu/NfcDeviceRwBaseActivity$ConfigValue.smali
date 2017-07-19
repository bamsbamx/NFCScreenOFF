.class public Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;
.super Ljava/lang/Object;
.source "NfcDeviceRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
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
    .line 893
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->N_A:[B

    .line 891
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "value"    # [B

    .prologue
    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    if-eqz p1, :cond_12

    .line 902
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mValue:[B

    .line 903
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mValue:[B

    array-length v0, v0

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mLength:I

    .line 900
    :cond_12
    return-void
.end method


# virtual methods
.method public byteArrayToString()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 936
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mValue:[B

    if-nez v2, :cond_7

    .line 937
    return-object v4

    .line 940
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mValue:[B

    array-length v5, v4

    move v2, v3

    :goto_10
    if-ge v2, v5, :cond_2d

    aget-byte v0, v4, v2

    .line 942
    .local v0, "b":B
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->getFormatString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 944
    .end local v0    # "b":B
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public get()[B
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 913
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mValue:[B

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mValue:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_5
.end method

.method public getFormatString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 932
    const-string/jumbo v0, "%02X"

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 924
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mLength:I

    return v0
.end method

.method public isNa()Z
    .registers 3

    .prologue
    .line 928
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mValue:[B

    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->N_A:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public set([B)V
    .registers 3
    .param p1, "value"    # [B

    .prologue
    .line 917
    if-eqz p1, :cond_f

    .line 918
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mValue:[B

    .line 919
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mValue:[B

    array-length v0, v0

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->mLength:I

    .line 916
    :cond_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->isNa()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "--"

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->byteArrayToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method
