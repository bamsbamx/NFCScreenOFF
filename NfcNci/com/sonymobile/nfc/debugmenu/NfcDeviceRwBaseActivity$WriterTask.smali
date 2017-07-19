.class Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;
.super Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;
.source "NfcDeviceRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriterTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;)V

    return-void
.end method

.method private verify([Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)Z
    .registers 11
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .prologue
    const/4 v4, 0x0

    .line 1396
    const/4 v0, 0x0

    .line 1398
    .local v0, "isFailed":Z
    array-length v5, p1

    move v3, v4

    :goto_4
    if-ge v3, v5, :cond_5c

    aget-object v1, p1, v3

    .line 1401
    .local v1, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    iget-object v6, v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-virtual {v6}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->get()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->readValue(J)[B

    move-result-object v2

    .line 1402
    .local v2, "val":[B
    if-nez v2, :cond_3f

    .line 1403
    const/4 v0, 0x1

    .line 1404
    const-string/jumbo v6, "NfcDeviceRwBaseActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "WriterTask: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-virtual {v8}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": Read error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1406
    :cond_3f
    iget-object v6, v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v6, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->set([B)V

    .line 1407
    iget-object v6, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    iget-object v7, v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v7}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->get()[B

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->verifyData([B[B)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 1409
    iget-object v6, v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    sget-object v7, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->N_A:[B

    invoke-virtual {v6, v7}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->set([B)V

    goto :goto_3c

    .line 1411
    :cond_5a
    const/4 v0, 0x1

    goto :goto_3c

    .line 1418
    .end local v1    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    .end local v2    # "val":[B
    :cond_5c
    if-eqz v0, :cond_6a

    .line 1419
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    const v5, 0x7f09012a

    invoke-virtual {v3, v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->mErrorMessage:Ljava/lang/String;

    .line 1420
    return v4

    .line 1422
    :cond_6a
    const/4 v3, 0x1

    return v3
.end method

.method private write([Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)Z
    .registers 13
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .prologue
    const/4 v7, 0x0

    .line 1377
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    .line 1379
    .local v2, "c":Landroid/content/Context;
    array-length v8, p1

    move v6, v7

    :goto_5
    if-ge v6, v8, :cond_52

    aget-object v4, p1, v6

    .line 1382
    .local v4, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    iget-object v9, v4, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-virtual {v9}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->get()J

    move-result-wide v0

    .line 1383
    .local v0, "addr":J
    iget-object v9, v4, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v9}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->get()[B

    move-result-object v3

    .line 1384
    .local v3, "data":[B
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-virtual {v10, v0, v1, v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->createDataTlv(J[B)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/nfc/NfcConfig;->writeTlvEncodedParameter([B)I

    move-result v5

    .line 1385
    .local v5, "result":I
    invoke-static {v5}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 1386
    const v6, 0x7f09012b

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->mErrorMessage:Ljava/lang/String;

    .line 1387
    const-string/jumbo v6, "NfcDeviceRwBaseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "WriterTask: Failed to write for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    return v7

    .line 1379
    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1392
    .end local v0    # "addr":J
    .end local v3    # "data":[B
    .end local v4    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    .end local v5    # "result":I
    :cond_52
    const/4 v6, 0x1

    return v6
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1327
    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_a

    .line 1328
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1331
    :cond_a
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->publishProgress([Ljava/lang/Object;)V

    .line 1332
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->enable()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1333
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1336
    :cond_1e
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->publishProgress([Ljava/lang/Object;)V

    .line 1337
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->write([Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1338
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1341
    :cond_33
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->publishProgress([Ljava/lang/Object;)V

    .line 1342
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->verify([Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1343
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1347
    :cond_48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getTitleOnWriting()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 7
    .param p1, "state"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 1352
    const/4 v0, 0x0

    .line 1354
    .local v0, "msg":Ljava/lang/String;
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 1367
    :pswitch_b
    const-string/jumbo v1, "NfcDeviceRwBaseActivity"

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

    .line 1371
    .end local v0    # "msg":Ljava/lang/String;
    :goto_27
    :pswitch_27
    if-eqz v0, :cond_2e

    .line 1372
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1351
    :cond_2e
    return-void

    .line 1360
    .restart local v0    # "msg":Ljava/lang/String;
    :pswitch_2f
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    const v2, 0x7f090139

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_27

    .line 1364
    .local v0, "msg":Ljava/lang/String;
    :pswitch_39
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_27

    .line 1354
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_27
        :pswitch_b
        :pswitch_2f
        :pswitch_39
    .end packed-switch
.end method
