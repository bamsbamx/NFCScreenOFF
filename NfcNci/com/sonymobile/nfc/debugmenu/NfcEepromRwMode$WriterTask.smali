.class Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;
.super Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;
.source "NfcEepromRwMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriterTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;)V

    return-void
.end method

.method private verify([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z
    .registers 11
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v4, 0x0

    .line 498
    const/4 v0, 0x0

    .line 500
    .local v0, "isFailed":Z
    array-length v5, p1

    move v3, v4

    :goto_4
    if-ge v3, v5, :cond_5a

    aget-object v1, p1, v3

    .line 503
    .local v1, "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    iget-object v6, v1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v6}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->get()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->readEepromDataByte(I)[B

    move-result-object v2

    .line 504
    .local v2, "val":[B
    if-nez v2, :cond_3f

    .line 505
    const/4 v0, 0x1

    .line 506
    const-string/jumbo v6, "NfcEepromRwMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "WriterTask: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v8}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": Read error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 508
    :cond_3f
    iget-object v6, v1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v6, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->set([B)V

    .line 509
    iget-object v6, v1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v6}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->get()[B

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 510
    iget-object v6, v1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    sget-object v7, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->N_A:[B

    invoke-virtual {v6, v7}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->set([B)V

    goto :goto_3c

    .line 512
    :cond_58
    const/4 v0, 0x1

    goto :goto_3c

    .line 519
    .end local v1    # "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .end local v2    # "val":[B
    :cond_5a
    if-eqz v0, :cond_68

    .line 520
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    const v5, 0x7f090151

    invoke-virtual {v3, v5}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->mErrorMessage:Ljava/lang/String;

    .line 521
    return v4

    .line 523
    :cond_68
    const/4 v3, 0x1

    return v3
.end method

.method private write([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z
    .registers 13
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v6, 0x0

    .line 478
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    .line 480
    .local v1, "c":Landroid/content/Context;
    array-length v7, p1

    move v5, v6

    :goto_5
    if-ge v5, v7, :cond_57

    aget-object v3, p1, v5

    .line 483
    .local v3, "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    iget-object v8, v3, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v8}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->get()I

    move-result v0

    .line 484
    .local v0, "addr":I
    iget-object v8, v3, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v8}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->get()[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->convertEndian([B)[B

    move-result-object v2

    .line 485
    .local v2, "data":[B
    iget-object v8, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    array-length v9, v2

    .line 486
    shr-int/lit8 v10, v0, 0x8

    invoke-virtual {p0, v10}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->isLongTagField(I)Z

    move-result v10

    .line 485
    invoke-virtual {v8, v0, v9, v2, v10}, Lcom/sonymobile/nfc/NfcConfig;->writeParameterValue(II[BZ)I

    move-result v4

    .line 487
    .local v4, "result":I
    invoke-static {v4}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 488
    const v5, 0x7f090152

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->mErrorMessage:Ljava/lang/String;

    .line 489
    const-string/jumbo v5, "NfcEepromRwMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "WriterTask: Failed to write for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v6

    .line 480
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 494
    .end local v0    # "addr":I
    .end local v2    # "data":[B
    .end local v3    # "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .end local v4    # "result":I
    :cond_57
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 428
    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_a

    .line 429
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 432
    :cond_a
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->publishProgress([Ljava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->enable()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 434
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 437
    :cond_1e
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->publishProgress([Ljava/lang/Object;)V

    .line 438
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->write([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 439
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 442
    :cond_33
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->publishProgress([Ljava/lang/Object;)V

    .line 443
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->verify([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 444
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 448
    :cond_48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected getTitleId()I
    .registers 2

    .prologue
    .line 421
    const v0, 0x7f09015a

    return v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 7
    .param p1, "state"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 453
    const/4 v0, 0x0

    .line 455
    .local v0, "msg":Ljava/lang/String;
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 468
    :pswitch_b
    const-string/jumbo v1, "NfcEepromRwMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WriterTask: Unknown state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "msg":Ljava/lang/String;
    :goto_27
    :pswitch_27
    if-eqz v0, :cond_2e

    .line 473
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 452
    :cond_2e
    return-void

    .line 461
    .restart local v0    # "msg":Ljava/lang/String;
    :pswitch_2f
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    const v2, 0x7f090161

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_27

    .line 465
    .local v0, "msg":Ljava/lang/String;
    :pswitch_39
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    const v2, 0x7f090162

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_27

    .line 455
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_27
        :pswitch_b
        :pswitch_2f
        :pswitch_39
    .end packed-switch
.end method
