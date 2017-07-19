.class Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;
.super Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;
.source "NfcRfTransitionTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderTask"
.end annotation


# static fields
.field protected static final COMMAND_HEADER_SIZE:I = 0x3

.field private static final PAYLOAD_SIZE:I = 0x2

.field private static final PAYLOAD_START_INDEX:I = 0x3

.field private static final RETURN_BUFFER_SIZE:I = 0x7

.field private static final RETURN_DATA_LENGTH_INDEX:I = 0x0

.field private static final RETURN_PAYLOAD_LENGTH_INDEX:I = 0x2

.field private static final RETURN_PAYLOAD_START_INDEX:I = 0x3

.field private static final RETURN_STATUS_INDEX:I = 0x1


# instance fields
.field private final READ_COMMAND:[B

.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;)V

    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->READ_COMMAND:[B

    .line 215
    return-void

    .line 217
    :array_e
    .array-data 1
        0x2ft
        0x14t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_a

    .line 241
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 244
    :cond_a
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->enable()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 246
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 249
    :cond_1e
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->read([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 251
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 255
    :cond_32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "items"    # [Ljava/lang/Object;

    .prologue
    .line 237
    check-cast p1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .end local p1    # "items":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->doInBackground([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleId()I
    .registers 2

    .prologue
    .line 228
    const v0, 0x7f09017b

    return v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 7
    .param p1, "state"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, "msg":Ljava/lang/String;
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 271
    const-string/jumbo v1, "NfcRfTransitionTest"

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

    .line 275
    .end local v0    # "msg":Ljava/lang/String;
    :goto_27
    :pswitch_27
    if-eqz v0, :cond_2e

    .line 276
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 259
    :cond_2e
    return-void

    .line 268
    .restart local v0    # "msg":Ljava/lang/String;
    :pswitch_2f
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    const v2, 0x7f090160

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_27

    .line 262
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
    .line 259
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "state":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected read([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z
    .registers 8
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v3, 0x0

    .line 281
    array-length v4, p1

    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_2e

    aget-object v0, p1, v2

    .line 282
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->readRfTransitionData(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)[B

    move-result-object v1

    .line 283
    .local v1, "value":[B
    if-nez v1, :cond_19

    .line 284
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->mContext:Landroid/content/Context;

    const v4, 0x7f09014f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->mErrorMessage:Ljava/lang/String;

    .line 285
    return v3

    .line 287
    :cond_19
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->isNa()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 288
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v5, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->set([B)V

    .line 290
    :cond_26
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v5, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->set([B)V

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 293
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .end local v1    # "value":[B
    :cond_2e
    const/4 v2, 0x1

    return v2
.end method

.method protected readRfTransitionData(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)[B
    .registers 14
    .param p1, "item"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 299
    const/4 v1, 0x5

    .line 300
    .local v1, "dataLength":I
    new-array v0, v1, [B

    .line 301
    .local v0, "cmdData":[B
    iget-object v6, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->READ_COMMAND:[B

    aget-byte v6, v6, v7

    aput-byte v6, v0, v7

    .line 302
    iget-object v6, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->READ_COMMAND:[B

    aget-byte v6, v6, v9

    aput-byte v6, v0, v9

    .line 303
    aput-byte v8, v0, v8

    .line 304
    const/4 v2, 0x3

    .line 299
    .local v2, "i":I
    :goto_17
    const/4 v6, 0x5

    .line 304
    if-ge v2, v6, :cond_33

    .line 305
    if-ne v2, v10, :cond_27

    .line 306
    iget-object v6, p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v6}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->getFirstByteData()B

    move-result v6

    aput-byte v6, v0, v2

    .line 304
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 307
    :cond_27
    const/4 v6, 0x4

    if-ne v2, v6, :cond_33

    .line 308
    iget-object v6, p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v6}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->getSecondByteData()B

    move-result v6

    aput-byte v6, v0, v2

    goto :goto_24

    .line 321
    :cond_33
    const/4 v6, 0x7

    new-array v4, v6, [B

    .line 322
    .local v4, "ret_buff":[B
    iget-object v6, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v6, v0, v4}, Lcom/sonymobile/nfc/NfcConfig;->sendExtCmdWithRb([B[B)I

    move-result v3

    .line 324
    .local v3, "result":I
    if-eqz v3, :cond_5d

    .line 325
    const-string/jumbo v6, "NfcRfTransitionTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ReadTask: Failed readRfTransitionData "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-object v11

    .line 336
    :cond_5d
    aget-byte v6, v4, v9

    if-nez v6, :cond_78

    .line 337
    aget-byte v6, v4, v8

    new-array v5, v6, [B

    .line 338
    .local v5, "value":[B
    const/4 v2, 0x0

    :goto_66
    aget-byte v6, v4, v8

    if-ge v2, v6, :cond_73

    .line 339
    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v4, v6

    aput-byte v6, v5, v2

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 341
    :cond_73
    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->convertEndian([B)[B

    move-result-object v6

    return-object v6

    .line 343
    .end local v5    # "value":[B
    :cond_78
    const-string/jumbo v6, "NfcRfTransitionTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ReadTask: Failed Status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v4, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-object v11
.end method

.method protected setContext()V
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->mContext:Landroid/content/Context;

    .line 232
    return-void
.end method
