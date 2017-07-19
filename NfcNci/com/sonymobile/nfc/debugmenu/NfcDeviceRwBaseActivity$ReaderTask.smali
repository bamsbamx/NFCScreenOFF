.class Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;
.super Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;
.source "NfcDeviceRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;)V

    return-void
.end method

.method private read([Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)Z
    .registers 11
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1282
    array-length v4, p1

    move v2, v3

    :goto_4
    if-ge v2, v4, :cond_3d

    aget-object v0, p1, v2

    .line 1285
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->get()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->readValue(J)[B

    move-result-object v1

    .line 1286
    .local v1, "value":[B
    if-nez v1, :cond_28

    .line 1287
    const-string/jumbo v2, "Cannot read [%s]"

    new-array v4, v8, [Ljava/lang/Object;

    .line 1288
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 1287
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->mErrorMessage:Ljava/lang/String;

    .line 1289
    return v3

    .line 1292
    :cond_28
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->isNa()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1293
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v5, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->set([B)V

    .line 1295
    :cond_35
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v5, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->set([B)V

    .line 1282
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1299
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    .end local v1    # "value":[B
    :cond_3d
    return v8
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1241
    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_a

    .line 1242
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1245
    :cond_a
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 1246
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->enable()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1247
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1250
    :cond_1e
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 1251
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->read([Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1252
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1256
    :cond_32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "items"    # [Ljava/lang/Object;

    .prologue
    .line 1238
    check-cast p1, [Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .end local p1    # "items":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->doInBackground([Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getTitleOnReading()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 7
    .param p1, "state"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 1261
    const/4 v0, 0x0

    .line 1263
    .local v0, "msg":Ljava/lang/String;
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_36

    .line 1272
    const-string/jumbo v1, "NfcDeviceRwBaseActivity"

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

    .line 1276
    .end local v0    # "msg":Ljava/lang/String;
    :goto_27
    :pswitch_27
    if-eqz v0, :cond_2e

    .line 1277
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1260
    :cond_2e
    return-void

    .line 1269
    .restart local v0    # "msg":Ljava/lang/String;
    :pswitch_2f
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getMessageStringOnReading()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_27

    .line 1263
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2f
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .param p1, "state"    # [Ljava/lang/Object;

    .prologue
    .line 1260
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "state":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected readValue(J)[B
    .registers 8
    .param p1, "address"    # J

    .prologue
    .line 1303
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_11

    .line 1304
    const-string/jumbo v2, "NfcDeviceRwBaseActivity"

    const-string/jumbo v3, "ReaderTask: address is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/4 v2, 0x0

    return-object v2

    .line 1307
    :cond_11
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->createIdTlv(J)[B

    move-result-object v1

    .line 1308
    .local v1, "idTlv":[B
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v2, v1}, Lcom/sonymobile/nfc/NfcConfig;->readTlvEncodedParameter([B)[B

    move-result-object v0

    .line 1309
    .local v0, "dataTlv":[B
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->checkAndGetConfigurationValue([B[B)[B

    move-result-object v2

    return-object v2
.end method

.method protected setContext()V
    .registers 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;->mContext:Landroid/content/Context;

    .line 1233
    return-void
.end method
