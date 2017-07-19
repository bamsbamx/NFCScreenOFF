.class Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;
.super Landroid/os/AsyncTask;
.source "NfcSettingTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECT:I = 0x0

.field private static final DISCONNECT:I = 0x1

.field private static final OFF_AND_DISCONNECT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V

    return-void
.end method

.method private checkSecureElementStatus()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 474
    const/4 v7, 0x0

    .line 477
    .local v7, "supportedSE":[I
    const/4 v6, 0x0

    .line 480
    .local v6, "originalNfcSettingOn":Z
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-virtual {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 481
    .local v3, "SWP_UICC_HANDLE":I
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-virtual {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 482
    .local v2, "SWP_SMX_HANDLE":I
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-virtual {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b000e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 483
    .local v1, "SWP_FN_HANDLE":I
    const/16 v9, 0xfff

    if-eq v2, v9, :cond_89

    move v0, v2

    .line 485
    .local v0, "SWP_ESE_HANDLE":I
    :goto_30
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v9

    if-eqz v9, :cond_8b

    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 490
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Landroid/nfc/NfcAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v6

    .line 491
    .local v6, "originalNfcSettingOn":Z
    if-nez v6, :cond_59

    .line 492
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    .line 496
    :cond_59
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/sonymobile/nfc/NfcConfig;->swpTest(I)I

    move-result v8

    .line 500
    .local v8, "uiccSwpTestResult":I
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/sonymobile/nfc/NfcConfig;->swpTest(I)I

    move-result v4

    .line 504
    .local v4, "eSeSwpTestResult":I
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/nfc/NfcConfig;->getSecureElementList()[I

    move-result-object v7

    .line 505
    .local v7, "supportedSE":[I
    if-eqz v7, :cond_9f

    .line 506
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7a
    array-length v9, v7

    if-ge v5, v9, :cond_a5

    .line 509
    if-nez v8, :cond_95

    aget v9, v7, v5

    if-ne v9, v3, :cond_95

    .line 510
    invoke-static {v12}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-set5(Z)Z

    .line 506
    :cond_86
    :goto_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    .line 483
    .end local v0    # "SWP_ESE_HANDLE":I
    .end local v4    # "eSeSwpTestResult":I
    .end local v5    # "i":I
    .end local v8    # "uiccSwpTestResult":I
    .local v6, "originalNfcSettingOn":Z
    .local v7, "supportedSE":[I
    :cond_89
    move v0, v1

    .restart local v0    # "SWP_ESE_HANDLE":I
    goto :goto_30

    .line 486
    :cond_8b
    const-string/jumbo v9, "NfcSettingTestMode"

    const-string/jumbo v10, "Can not check secure element due to no service connection"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void

    .line 513
    .restart local v4    # "eSeSwpTestResult":I
    .restart local v5    # "i":I
    .local v6, "originalNfcSettingOn":Z
    .local v7, "supportedSE":[I
    .restart local v8    # "uiccSwpTestResult":I
    :cond_95
    if-nez v4, :cond_86

    aget v9, v7, v5

    if-ne v9, v0, :cond_86

    .line 514
    invoke-static {v12}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-set0(Z)Z

    goto :goto_86

    .line 519
    .end local v5    # "i":I
    :cond_9f
    invoke-static {v11}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-set5(Z)Z

    .line 520
    invoke-static {v11}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-set0(Z)Z

    .line 524
    :cond_a5
    if-eqz v6, :cond_ba

    .line 525
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Landroid/nfc/NfcAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 526
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Landroid/nfc/NfcAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 471
    :goto_b9
    return-void

    .line 528
    :cond_ba
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v9}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Landroid/nfc/NfcAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_b9
.end method

.method private setTestMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get8(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Z

    move-result v0

    if-eq v0, p1, :cond_16

    .line 466
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-set4(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Z)Z

    .line 467
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/nfc/NfcConfig;->setTestMode(Z)I

    .line 463
    :cond_16
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # [Ljava/lang/Object;

    .prologue
    .line 425
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "param":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .registers 7
    .param p1, "param"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 426
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_82

    .line 445
    const-string/jumbo v0, "NfcSettingTestMode"

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

    .line 448
    :goto_27
    return-object v4

    .line 428
    :pswitch_28
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    new-instance v1, Lcom/sonymobile/nfc/NfcConfig;

    invoke-direct {v1}, Lcom/sonymobile/nfc/NfcConfig;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-set2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;

    .line 429
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->connect(Landroid/content/Context;)Z

    .line 430
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    const-string/jumbo v1, "polling"

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->getDefaultValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->POLLING_TECH:I

    .line 431
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    const-string/jumbo v1, "p2p_listen"

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->getDefaultValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->P2P_LISTEN_TECH:I

    .line 432
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get0(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 433
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->checkSecureElementStatus()V

    .line 434
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-set1(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Z)Z

    .line 436
    :cond_6b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->setTestMode(Z)V

    goto :goto_27

    .line 439
    :pswitch_70
    invoke-direct {p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->setTestMode(Z)V

    .line 441
    :pswitch_73
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->close()V

    .line 442
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-set2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;

    goto :goto_27

    .line 426
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_28
        :pswitch_73
        :pswitch_70
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "errorMsg"    # Ljava/lang/Object;

    .prologue
    .line 452
    check-cast p1, Ljava/lang/String;

    .end local p1    # "errorMsg":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 453
    if-eqz p1, :cond_8

    .line 454
    const-string/jumbo v1, "NfcSettingTestMode"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 459
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "mode"

    const v2, 0x7f0d0022

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-set3(I)I

    .line 460
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get6()Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get7()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 452
    return-void
.end method
