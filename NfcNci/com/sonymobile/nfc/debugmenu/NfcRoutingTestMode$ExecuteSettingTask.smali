.class Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;
.super Landroid/os/AsyncTask;
.source "NfcRoutingTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecuteSettingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field protected static final SETTING_TEST_FAILURE:I = 0xff

.field protected static final SETTING_TEST_SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 10
    .param p1, "isClear"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 342
    const/16 v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 346
    .local v7, "result":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 351
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get3(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 352
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    .line 355
    :cond_30
    const/16 v1, 0x400

    .line 356
    .local v1, "routeSeValue":I
    const/16 v2, 0x400

    .line 357
    .local v2, "techSeValue":I
    const/4 v3, 0x0

    .line 359
    .local v3, "ceValue":I
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get6(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)I

    move-result v0

    const v5, 0x7f0d0074

    if-ne v0, v5, :cond_42

    .line 360
    const/16 v1, 0x402

    .line 362
    :cond_42
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get7(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)I

    move-result v0

    const v5, 0x7f0d0077

    if-ne v0, v5, :cond_4f

    .line 363
    const/16 v2, 0x402

    .line 366
    :cond_4f
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get0(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 367
    const/4 v3, 0x1

    .line 369
    :cond_5c
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 370
    or-int/lit8 v3, v3, 0x2

    .line 372
    :cond_6a
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 373
    or-int/lit8 v3, v3, 0x4

    .line 376
    :cond_78
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/nfc/NfcConfig;->renewRouting(IIIIIZ)I

    move-result v0

    if-nez v0, :cond_ae

    .line 377
    const-string/jumbo v0, "NfcRoutingTestMode"

    const-string/jumbo v5, "renewRouting success"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 379
    const/4 v1, -0x1

    .line 380
    const/4 v2, -0x1

    .line 381
    const/4 v3, -0x1

    .line 383
    :cond_9a
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-wrap3(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;III)V

    .line 384
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 347
    .end local v1    # "routeSeValue":I
    .end local v2    # "techSeValue":I
    .end local v3    # "ceValue":I
    :cond_a4
    const-string/jumbo v0, "NfcRoutingTestMode"

    const-string/jumbo v4, "Cannot perform Setting test due to no service connection"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-object v7

    .line 388
    .restart local v1    # "routeSeValue":I
    .restart local v2    # "techSeValue":I
    .restart local v3    # "ceValue":I
    :cond_ae
    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "isClear"    # [Ljava/lang/Object;

    .prologue
    .line 341
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "isClear":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Integer;)V
    .registers 8
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    .line 398
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_27

    .line 399
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    const v3, 0x7f090104

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "message":Ljava/lang/String;
    const v0, 0x108009b

    .line 405
    .local v0, "icon":I
    :goto_13
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    const v4, 0x7f090098

    invoke-virtual {v3, v4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-wrap5(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 407
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-wrap6(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    .line 392
    return-void

    .line 402
    .end local v0    # "icon":I
    .end local v1    # "message":Ljava/lang/String;
    :cond_27
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    const v3, 0x7f090105

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    .restart local v1    # "message":Ljava/lang/String;
    const v0, 0x1080027

    .restart local v0    # "icon":I
    goto :goto_13
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 392
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
