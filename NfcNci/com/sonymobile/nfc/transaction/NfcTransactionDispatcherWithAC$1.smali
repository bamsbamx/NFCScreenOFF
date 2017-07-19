.class Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcTransactionDispatcherWithAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "com.sonymobile.nfc.action.AID_AUTHORIZATION_RSP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e3

    .line 131
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->-get0()Z

    move-result v12

    if-eqz v12, :cond_1c

    const-string/jumbo v12, "NfcTransactionDispatcherWithAC"

    const-string/jumbo v13, "Received ACTION_AID_AUTHORIZATION_RSP"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1c
    const-string/jumbo v12, "com.sonymobile.nfc.extra.AID_PARAM_KEY"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 135
    .local v6, "key":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;

    invoke-static {v12}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->-get1(Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;)Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->unregister(J)[B

    move-result-object v8

    .line 136
    .local v8, "param":[B
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-eqz v12, :cond_45

    if-nez v8, :cond_45

    .line 137
    const-string/jumbo v12, "NfcTransactionDispatcherWithAC"

    const-string/jumbo v13, "authentication timed out. discard the transaction event."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 142
    :cond_45
    const-string/jumbo v12, "com.sonymobile.nfc.extra.SECURE_ELEMENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, "seName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;

    invoke-virtual {v12}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->getCurrentSeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6c

    .line 144
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->-get0()Z

    move-result v12

    if-eqz v12, :cond_6b

    const-string/jumbo v12, "NfcTransactionDispatcherWithAC"

    const-string/jumbo v13, "SE has been already changed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_6b
    return-void

    .line 149
    :cond_6c
    const-string/jumbo v12, "com.sonymobile.nfc.extra.AUTHORIZATION_PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "packages":[Ljava/lang/String;
    if-eqz v5, :cond_7a

    array-length v12, v5

    if-nez v12, :cond_8a

    .line 151
    :cond_7a
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->-get0()Z

    move-result v12

    if-eqz v12, :cond_89

    const-string/jumbo v12, "NfcTransactionDispatcherWithAC"

    const-string/jumbo v13, "No authorized package"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_89
    return-void

    .line 154
    :cond_8a
    const/4 v12, 0x0

    aget-object v4, v5, v12

    .line 155
    .local v4, "grantedPackage":Ljava/lang/String;
    const-string/jumbo v12, "com.android.nfc_extras.extra.AID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 157
    .local v2, "aid":[B
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->-get0()Z

    move-result v12

    if-eqz v12, :cond_b7

    const-string/jumbo v12, "NfcTransactionDispatcherWithAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "packages length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_b7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;

    iget-boolean v12, v12, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->mEnableMultiEvtTransaction:Z

    if-nez v12, :cond_106

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;

    invoke-virtual {v12, v2, v8, v4}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->createIntent([B[BLjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 162
    .local v11, "targetIntent":Landroid/content/Intent;
    if-eqz v11, :cond_e3

    .line 164
    :try_start_c9
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->-get0()Z

    move-result v12

    if-eqz v12, :cond_d8

    const-string/jumbo v12, "NfcTransactionDispatcherWithAC"

    const-string/jumbo v13, "Starting the target Intent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_d8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;

    iget-object v12, v12, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c9 .. :try_end_e3} :catch_e4

    .line 129
    .end local v2    # "aid":[B
    .end local v4    # "grantedPackage":Ljava/lang/String;
    .end local v5    # "packages":[Ljava/lang/String;
    .end local v6    # "key":J
    .end local v8    # "param":[B
    .end local v10    # "seName":Ljava/lang/String;
    .end local v11    # "targetIntent":Landroid/content/Intent;
    :cond_e3
    :goto_e3
    return-void

    .line 166
    .restart local v2    # "aid":[B
    .restart local v4    # "grantedPackage":Ljava/lang/String;
    .restart local v5    # "packages":[Ljava/lang/String;
    .restart local v6    # "key":J
    .restart local v8    # "param":[B
    .restart local v10    # "seName":Ljava/lang/String;
    .restart local v11    # "targetIntent":Landroid/content/Intent;
    :catch_e4
    move-exception v3

    .line 167
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->-get0()Z

    move-result v12

    if-eqz v12, :cond_e3

    const-string/jumbo v12, "NfcTransactionDispatcherWithAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Activity not found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 172
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    .end local v11    # "targetIntent":Landroid/content/Intent;
    :cond_106
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->-get0()Z

    move-result v12

    if-eqz v12, :cond_131

    const-string/jumbo v12, "NfcTransactionDispatcherWithAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Creating Intent with aid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "and param: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;

    const/4 v13, 0x0

    invoke-virtual {v12, v2, v8, v13}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->createIntent([B[BLjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 174
    .restart local v11    # "targetIntent":Landroid/content/Intent;
    if-eqz v11, :cond_e3

    .line 175
    const/4 v12, 0x0

    array-length v13, v5

    :goto_13e
    if-ge v12, v13, :cond_e3

    aget-object v9, v5, v12

    .line 176
    .local v9, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->-get0()Z

    move-result v14

    if-eqz v14, :cond_162

    const-string/jumbo v14, "NfcTransactionDispatcherWithAC"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Broadcasting Intent with packageName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_162
    invoke-virtual {v11, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;

    iget-object v14, v14, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v14, v11, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 175
    add-int/lit8 v12, v12, 0x1

    goto :goto_13e
.end method
