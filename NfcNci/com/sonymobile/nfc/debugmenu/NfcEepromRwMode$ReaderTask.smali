.class Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;
.super Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;
.source "NfcEepromRwMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;)V

    return-void
.end method

.method private read([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z
    .registers 9
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 315
    array-length v4, p1

    move v2, v3

    :goto_4
    if-ge v2, v4, :cond_3d

    aget-object v0, p1, v2

    .line 318
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->get()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->readEepromDataByte(I)[B

    move-result-object v1

    .line 319
    .local v1, "value":[B
    if-nez v1, :cond_28

    .line 320
    const-string/jumbo v2, "Cannot read [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    .line 321
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 320
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->mErrorMessage:Ljava/lang/String;

    .line 322
    return v3

    .line 325
    :cond_28
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->isNa()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 326
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v5, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->set([B)V

    .line 328
    :cond_35
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v5, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->set([B)V

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 332
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .end local v1    # "value":[B
    :cond_3d
    return v6
.end method


# virtual methods
.method protected checkAndGetConfigurationValue(I[B)[B
    .registers 13
    .param p1, "requestedTag"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v9, 0x0

    .line 360
    if-nez p2, :cond_4

    .line 361
    return-object v9

    .line 365
    :cond_4
    :try_start_4
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 367
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v4, v6, 0xff

    .line 368
    .local v4, "numberOfConfig":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_1b

    .line 369
    const-string/jumbo v6, "NfcEepromRwMode"

    const-string/jumbo v7, "Number of configurations must be 1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-object v9

    .line 374
    :cond_1b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v5, v6, 0xff

    .line 375
    .local v5, "tag":I
    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->isLongTagField(I)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 376
    shl-int/lit8 v6, v5, 0x8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int v5, v6, v7

    .line 380
    :cond_31
    if-eq v5, p1, :cond_59

    .line 381
    const-string/jumbo v6, "NfcEepromRwMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Mismatched tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-object v9

    .line 385
    :cond_59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v3, v6, 0xff

    .line 386
    .local v3, "length":I
    if-eqz v3, :cond_67

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-eq v3, v6, :cond_91

    .line 387
    :cond_67
    const-string/jumbo v6, "NfcEepromRwMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid length: len="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",remaining="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-object v9

    .line 392
    :cond_91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 393
    .local v2, "from":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    add-int v7, v2, v3

    invoke-static {v6, v2, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B
    :try_end_9e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_9e} :catch_a0

    move-result-object v6

    return-object v6

    .line 394
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "from":I
    .end local v3    # "length":I
    .end local v4    # "numberOfConfig":I
    .end local v5    # "tag":I
    :catch_a0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v6, "NfcEepromRwMode"

    const-string/jumbo v7, "Invalid length: NCI TLV structure is invalid."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-object v9
.end method

.method protected varargs doInBackground([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_a

    .line 275
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 278
    :cond_a
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->enable()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 280
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 283
    :cond_1e
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->read([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 285
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 289
    :cond_32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "items"    # [Ljava/lang/Object;

    .prologue
    .line 271
    check-cast p1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .end local p1    # "items":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->doInBackground([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleId()I
    .registers 2

    .prologue
    .line 262
    const v0, 0x7f090159

    return v0
.end method

.method protected isLongTagField(I)Z
    .registers 4
    .param p1, "tag"    # I

    .prologue
    .line 410
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 7
    .param p1, "state"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "msg":Ljava/lang/String;
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 305
    const-string/jumbo v1, "NfcEepromRwMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ReaderTask: Unknown state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v0    # "msg":Ljava/lang/String;
    :goto_27
    :pswitch_27
    if-eqz v0, :cond_2e

    .line 310
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 293
    :cond_2e
    return-void

    .line 302
    .restart local v0    # "msg":Ljava/lang/String;
    :pswitch_2f
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    const v2, 0x7f090160

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_27

    .line 296
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2f
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .param p1, "state"    # [Ljava/lang/Object;

    .prologue
    .line 293
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "state":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected readEepromDataByte(I)[B
    .registers 5
    .param p1, "address"    # I

    .prologue
    .line 336
    if-gez p1, :cond_d

    .line 337
    const-string/jumbo v1, "NfcEepromRwMode"

    const-string/jumbo v2, "BasicRwTask: address is invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v1, 0x0

    return-object v1

    .line 341
    :cond_d
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    shr-int/lit8 v2, p1, 0x8

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->isLongTagField(I)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sonymobile/nfc/NfcConfig;->readParameterValue(IZ)[B

    move-result-object v0

    .line 343
    .local v0, "data":[B
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->checkAndGetConfigurationValue(I[B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->convertEndian([B)[B

    move-result-object v1

    return-object v1
.end method

.method protected setContext()V
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->mContext:Landroid/content/Context;

    .line 266
    return-void
.end method
