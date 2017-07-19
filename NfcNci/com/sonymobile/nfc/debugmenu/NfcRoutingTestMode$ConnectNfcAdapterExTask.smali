.class Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;
.super Landroid/os/AsyncTask;
.source "NfcRoutingTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectNfcAdapterExTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECT:I = 0x0

.field private static final OFF_AND_DISCONNECT:I = 0x2


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    return-void
.end method

.method private checkSecureElementStatus()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 296
    const/4 v2, 0x0

    .line 299
    .local v2, "supportedSE":[I
    const/16 v0, 0x402

    .line 301
    .local v0, "SWP_UICC_HANDLE":I
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v4

    if-eqz v4, :cond_63

    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 306
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v5}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get3(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-set1(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Z)Z

    .line 307
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 308
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    .line 312
    :cond_38
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/nfc/NfcConfig;->swpTest(I)I

    move-result v3

    .line 316
    .local v3, "uiccSwpTestResult":I
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/nfc/NfcConfig;->getSecureElementList()[I

    move-result-object v2

    .line 317
    .local v2, "supportedSE":[I
    if-eqz v2, :cond_6d

    .line 318
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4f
    array-length v4, v2

    if-ge v1, v4, :cond_72

    .line 321
    if-nez v3, :cond_60

    aget v4, v2, v1

    .line 299
    const/16 v5, 0x402

    .line 321
    if-ne v4, v5, :cond_60

    .line 322
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-set6(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Z)Z

    .line 318
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 302
    .end local v1    # "i":I
    .end local v3    # "uiccSwpTestResult":I
    .local v2, "supportedSE":[I
    :cond_63
    const-string/jumbo v4, "NfcRoutingTestMode"

    const-string/jumbo v5, "Can not check secure element due to no service connection"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    .line 327
    .local v2, "supportedSE":[I
    .restart local v3    # "uiccSwpTestResult":I
    :cond_6d
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v4, v6}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-set6(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Z)Z

    .line 331
    :cond_72
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/nfc/NfcConfig;->disable()Z

    .line 332
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    .line 294
    return-void
.end method

.method private setTestMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get12(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Z

    move-result v0

    if-eq v0, p1, :cond_16

    .line 289
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-set5(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Z)Z

    .line 290
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/nfc/NfcConfig;->setTestMode(Z)I

    .line 286
    :cond_16
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # [Ljava/lang/Object;

    .prologue
    .line 230
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "param":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 6
    .param p1, "param"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_4e

    .line 243
    :pswitch_b
    const-string/jumbo v0, "NfcRoutingTestMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid parameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_27
    const/4 v0, 0x0

    return-object v0

    .line 233
    :pswitch_29
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    new-instance v1, Lcom/sonymobile/nfc/NfcConfig;

    invoke-direct {v1}, Lcom/sonymobile/nfc/NfcConfig;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-set0(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;

    .line 234
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->connect(Landroid/content/Context;)Z

    .line 235
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->checkSecureElementStatus()V

    .line 236
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-set4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Z)Z

    .line 237
    invoke-direct {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->setTestMode(Z)V

    goto :goto_27

    .line 240
    :pswitch_4a
    invoke-direct {p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->setTestMode(Z)V

    goto :goto_27

    .line 231
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_b
        :pswitch_4a
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 250
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "param":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f09017e

    const/4 v2, -0x1

    .line 253
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get12(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 254
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 255
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->disable()Z

    .line 257
    :cond_26
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->close()V

    .line 258
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-set0(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;

    .line 281
    :goto_34
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 250
    return-void

    .line 260
    :cond_3a
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get8(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 261
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-set4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Z)Z

    .line 262
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-wrap0(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    .line 263
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-wrap1(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    .line 265
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get9(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)I

    move-result v0

    if-eq v0, v2, :cond_ca

    .line 266
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get10(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)I

    move-result v0

    if-eq v0, v2, :cond_ca

    .line 267
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get11(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)I

    move-result v0

    if-eq v0, v2, :cond_ca

    .line 268
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-wrap4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    .line 273
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-wrap6(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    .line 274
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get13(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-virtual {v1, v3}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get14(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-virtual {v1, v3}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get15(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    const v2, 0x7f09018b

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get15(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    const v2, 0x7f090185

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get15(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    const v2, 0x7f090186

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_34

    .line 270
    :cond_ca
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-wrap2(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    goto :goto_6f
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 219
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 220
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 221
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    const v2, 0x7f09018c

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 223
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 224
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 216
    return-void
.end method
