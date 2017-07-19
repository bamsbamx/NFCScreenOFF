.class public Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
.super Ljava/lang/Object;
.source "NfcDeviceRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ListItem"
.end annotation


# static fields
.field static final N_A_MARK:Ljava/lang/String; = "--"

.field public static final VAL_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field public final mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

.field protected mChecked:Z

.field public final mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

.field public final mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

.field protected mNewItem:Z

.field public final mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;


# direct methods
.method public constructor <init>(J)V
    .registers 12
    .param p1, "addr"    # J

    .prologue
    .line 723
    sget-object v4, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->N_A:[B

    sget-object v5, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->N_A:[B

    sget-object v6, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->N_A:[B

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;-><init>(J[B[B[BZ)V

    .line 722
    return-void
.end method

.method public constructor <init>(J[B[B[BZ)V
    .registers 8
    .param p1, "addr"    # J
    .param p3, "defVal"    # [B
    .param p4, "currVal"    # [B
    .param p5, "newVal"    # [B
    .param p6, "isChecked"    # Z

    .prologue
    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewItem:Z

    .line 728
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;-><init>(J)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    .line 729
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-direct {v0, p3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;-><init>([B)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    .line 730
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-direct {v0, p4}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;-><init>([B)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    .line 731
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-direct {v0, p5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;-><init>([B)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    .line 732
    iput-boolean p6, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mChecked:Z

    .line 727
    return-void
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    .registers 12
    .param p0, "flattenedString"    # Ljava/lang/String;

    .prologue
    .line 782
    :try_start_0
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 783
    .local v9, "itemValues":[Ljava/lang/String;
    if-nez v9, :cond_16

    .line 784
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_f} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_f} :catch_41

    .line 793
    .end local v9    # "itemValues":[Ljava/lang/String;
    :catch_f
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 787
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v9    # "itemValues":[Ljava/lang/String;
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    aget-object v1, v9, v1

    const/16 v10, 0x10

    invoke-static {v1, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 788
    .local v2, "addr":J
    const/4 v1, 0x1

    aget-object v1, v9, v1

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 789
    .local v4, "defVal":[B
    const/4 v1, 0x2

    aget-object v1, v9, v1

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 790
    .local v5, "currVal":[B
    const/4 v1, 0x3

    aget-object v1, v9, v1

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 791
    .local v6, "newVal":[B
    const/4 v1, 0x4

    aget-object v1, v9, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 792
    .local v7, "isChecked":Z
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;-><init>(J[B[B[BZ)V
    :try_end_40
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_17 .. :try_end_40} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_40} :catch_41

    return-object v1

    .line 795
    .end local v2    # "addr":J
    .end local v4    # "defVal":[B
    .end local v5    # "currVal":[B
    .end local v6    # "newVal":[B
    .end local v7    # "isChecked":Z
    .end local v9    # "itemValues":[Ljava/lang/String;
    :catch_41
    move-exception v8

    .line 796
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static stringToByteArray(Ljava/lang/String;)[B
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 801
    if-nez p0, :cond_4

    .line 802
    return-object v2

    .line 805
    :cond_4
    const-string/jumbo v2, "--"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 806
    sget-object v2, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->N_A:[B

    return-object v2

    .line 809
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 810
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    array-length v2, v0

    if-ge v1, v2, :cond_32

    .line 811
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 814
    :cond_32
    return-object v0
.end method


# virtual methods
.method public clearNewFlag()V
    .registers 2

    .prologue
    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewItem:Z

    .line 757
    return-void
.end method

.method public flatten()Ljava/lang/String;
    .registers 5

    .prologue
    .line 772
    const-string/jumbo v0, ","

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 773
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mChecked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 772
    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->joinAsString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChecked()Z
    .registers 2

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mChecked:Z

    return v0
.end method

.method public isNewItem()Z
    .registers 2

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewItem:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 751
    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mChecked:Z

    .line 750
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ListItem = { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
