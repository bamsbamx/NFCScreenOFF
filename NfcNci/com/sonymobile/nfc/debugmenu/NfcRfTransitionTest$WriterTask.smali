.class Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;
.super Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;
.source "NfcRfTransitionTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriterTask"
.end annotation


# static fields
.field private static final PAYLOAD_NUM:B = 0x1t

.field private static final PAYLOAD_NUM_SIZE:I = 0x1

.field private static final PAYLOAD_START_INDEX:I = 0x4


# instance fields
.field private final ADDRESS:[B

.field private final WRITE_COMMAND:[B

.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    .prologue
    const/4 v1, 0x2

    .line 351
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;)V

    .line 352
    new-array v0, v1, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->ADDRESS:[B

    .line 353
    new-array v0, v1, [B

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->WRITE_COMMAND:[B

    .line 351
    return-void

    .line 352
    :array_16
    .array-data 1
        -0x60t
        0xdt
    .end array-data

    .line 353
    nop

    :array_1c
    .array-data 1
        0x20t
        0x2t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;)V

    return-void
.end method

.method private write([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z
    .registers 15
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 413
    array-length v9, p1

    move v7, v8

    :goto_4
    if-ge v7, v9, :cond_c9

    aget-object v3, p1, v7

    .line 416
    .local v3, "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->ADDRESS:[B

    array-length v10, v10

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x2

    .line 418
    iget-object v11, v3, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v11}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->getLength()I

    move-result v11

    .line 416
    add-int v1, v10, v11

    .line 419
    .local v1, "dataLength":I
    new-array v0, v1, [B

    .line 420
    .local v0, "cmdData":[B
    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->WRITE_COMMAND:[B

    aget-byte v10, v10, v8

    aput-byte v10, v0, v8

    .line 421
    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->WRITE_COMMAND:[B

    aget-byte v10, v10, v12

    aput-byte v10, v0, v12

    .line 422
    add-int/lit8 v10, v1, -0x3

    int-to-byte v10, v10

    const/4 v11, 0x2

    aput-byte v10, v0, v11

    .line 423
    const/4 v10, 0x3

    aput-byte v12, v0, v10

    .line 424
    const/4 v2, 0x4

    .local v2, "i":I
    :goto_31
    if-ge v2, v1, :cond_93

    .line 425
    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->ADDRESS:[B

    array-length v10, v10

    add-int/lit8 v10, v10, 0x4

    if-ge v2, v10, :cond_45

    .line 426
    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->ADDRESS:[B

    add-int/lit8 v11, v2, -0x4

    aget-byte v10, v10, v11

    aput-byte v10, v0, v2

    .line 424
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 427
    :cond_45
    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->ADDRESS:[B

    array-length v10, v10

    add-int/lit8 v10, v10, 0x4

    if-ne v2, v10, :cond_58

    .line 428
    iget-object v10, v3, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v10}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->getLength()I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    goto :goto_42

    .line 429
    :cond_58
    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->ADDRESS:[B

    array-length v10, v10

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v10, v10, 0x1

    if-ne v2, v10, :cond_6a

    .line 430
    iget-object v10, v3, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v10}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->getFirstByteData()B

    move-result v10

    aput-byte v10, v0, v2

    goto :goto_42

    .line 431
    :cond_6a
    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->ADDRESS:[B

    array-length v10, v10

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v10, v10, 0x2

    if-ne v2, v10, :cond_7c

    .line 432
    iget-object v10, v3, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v10}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->getSecondByteData()B

    move-result v10

    aput-byte v10, v0, v2

    goto :goto_42

    .line 434
    :cond_7c
    iget-object v10, v3, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v10}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->get()[B

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->convertEndian([B)[B

    move-result-object v6

    .line 435
    .local v6, "value":[B
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_87
    array-length v10, v6

    if-ge v4, v10, :cond_93

    .line 436
    add-int v10, v2, v4

    aget-byte v11, v6, v4

    aput-byte v11, v0, v10

    .line 435
    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    .line 442
    .end local v4    # "j":I
    .end local v6    # "value":[B
    :cond_93
    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v10, v0}, Lcom/sonymobile/nfc/NfcConfig;->sendExtCmd([B)I

    move-result v5

    .line 444
    .local v5, "result":I
    if-eqz v5, :cond_c5

    .line 445
    iget-object v7, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->mContext:Landroid/content/Context;

    const v9, 0x7f090152

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->mErrorMessage:Ljava/lang/String;

    .line 446
    const-string/jumbo v7, "NfcRfTransitionTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "WriterTask: Failed to write for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return v8

    .line 413
    :cond_c5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 450
    .end local v0    # "cmdData":[B
    .end local v1    # "dataLength":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .end local v5    # "result":I
    :cond_c9
    return v12
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 367
    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_a

    .line 368
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 371
    :cond_a
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->publishProgress([Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->enable()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 373
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 376
    :cond_1e
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->publishProgress([Ljava/lang/Object;)V

    .line 377
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->write([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 378
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 381
    :cond_33
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->publishProgress([Ljava/lang/Object;)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->read([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 383
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 387
    :cond_47
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected getTitleId()I
    .registers 2

    .prologue
    .line 360
    const v0, 0x7f09017c

    return v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 7
    .param p1, "state"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 392
    const/4 v0, 0x0

    .line 394
    .local v0, "msg":Ljava/lang/String;
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 403
    :pswitch_b
    const-string/jumbo v1, "NfcRfTransitionTest"

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

    .line 407
    .end local v0    # "msg":Ljava/lang/String;
    :goto_27
    :pswitch_27
    if-eqz v0, :cond_2e

    .line 408
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 391
    :cond_2e
    return-void

    .line 400
    .restart local v0    # "msg":Ljava/lang/String;
    :pswitch_2f
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    const v2, 0x7f090161

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_27

    .line 394
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_b
        :pswitch_2f
    .end packed-switch
.end method
