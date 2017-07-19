.class public Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
.super Ljava/lang/Object;
.source "NfcConfigRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ListItem"
.end annotation


# static fields
.field static final N_A_MARK:Ljava/lang/String; = "--"

.field public static final VAL_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field public final mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

.field protected mChecked:Z

.field public final mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

.field public final mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

.field protected mNewItem:Z

.field public final mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;


# direct methods
.method public constructor <init>(I)V
    .registers 8
    .param p1, "addr"    # I

    .prologue
    .line 436
    sget-object v2, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->N_A:[B

    sget-object v3, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->N_A:[B

    sget-object v4, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->N_A:[B

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;-><init>(I[B[B[BZ)V

    .line 435
    return-void
.end method

.method public constructor <init>(I[B[B[BZ)V
    .registers 7
    .param p1, "addr"    # I
    .param p2, "defVal"    # [B
    .param p3, "currVal"    # [B
    .param p4, "newVal"    # [B
    .param p5, "isChecked"    # Z

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewItem:Z

    .line 440
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-direct {v0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    .line 441
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-direct {v0, p2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;-><init>([B)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    .line 442
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-direct {v0, p3}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;-><init>([B)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    .line 443
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-direct {v0, p4}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;-><init>([B)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    .line 444
    iput-boolean p5, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mChecked:Z

    .line 439
    return-void
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .registers 11
    .param p0, "flattenedString"    # Ljava/lang/String;

    .prologue
    .line 494
    :try_start_0
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 495
    .local v8, "itemValues":[Ljava/lang/String;
    if-nez v8, :cond_16

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_f} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_f} :catch_41

    .line 505
    .end local v8    # "itemValues":[Ljava/lang/String;
    :catch_f
    move-exception v6

    .line 506
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 499
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v8    # "itemValues":[Ljava/lang/String;
    :cond_16
    const/4 v0, 0x0

    :try_start_17
    aget-object v0, v8, v0

    const/16 v9, 0x10

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 500
    .local v1, "addr":I
    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 501
    .local v2, "defVal":[B
    const/4 v0, 0x2

    aget-object v0, v8, v0

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 502
    .local v3, "currVal":[B
    const/4 v0, 0x3

    aget-object v0, v8, v0

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 503
    .local v4, "newVal":[B
    const/4 v0, 0x4

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 504
    .local v5, "isChecked":Z
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;-><init>(I[B[B[BZ)V
    :try_end_40
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_17 .. :try_end_40} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_40} :catch_41

    return-object v0

    .line 507
    .end local v1    # "addr":I
    .end local v2    # "defVal":[B
    .end local v3    # "currVal":[B
    .end local v4    # "newVal":[B
    .end local v5    # "isChecked":Z
    .end local v8    # "itemValues":[Ljava/lang/String;
    :catch_41
    move-exception v7

    .line 508
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static stringToByteArray(Ljava/lang/String;)[B
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 513
    if-nez p0, :cond_4

    .line 514
    return-object v2

    .line 517
    :cond_4
    const-string/jumbo v2, "--"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 518
    sget-object v2, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->N_A:[B

    return-object v2

    .line 521
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 522
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    array-length v2, v0

    if-ge v1, v2, :cond_32

    .line 523
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

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 526
    :cond_32
    return-object v0
.end method


# virtual methods
.method public clearNewFlag()V
    .registers 2

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewItem:Z

    .line 469
    return-void
.end method

.method public flatten()Ljava/lang/String;
    .registers 5

    .prologue
    .line 484
    const-string/jumbo v0, ","

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 485
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mChecked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 484
    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->joinAsString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChecked()Z
    .registers 2

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mChecked:Z

    return v0
.end method

.method public isNewItem()Z
    .registers 2

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewItem:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 463
    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mChecked:Z

    .line 462
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ListItem = { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->flatten()Ljava/lang/String;

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
