.class Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;
.super Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestBaseTask;
.source "NfcPRBSTestMode2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrbsStartTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestBaseTask",
        "<",
        "Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;


# direct methods
.method public constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    .line 387
    const v0, 0x7f09010c

    invoke-virtual {p1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestBaseTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Ljava/lang/String;Z)V

    .line 386
    return-void
.end method


# virtual methods
.method protected varargs onBackgroundTask([Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;)Ljava/lang/Integer;
    .registers 6
    .param p1, "params"    # [Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;

    .prologue
    .line 392
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 394
    .local v0, "param":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->saveOriginalNfcSetting()V

    .line 395
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-set0(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Z)Z

    .line 397
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get3(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 399
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    move-result v1

    if-nez v1, :cond_40

    .line 400
    const-string/jumbo v1, "NfcPRBSTestMode2"

    const-string/jumbo v2, "Failed to enable NFC. NFC hardware must be broken."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const v1, 0xf001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 406
    :cond_40
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;->getTechnology()I

    move-result v2

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;->getBitrate()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/nfc/NfcConfig;->prbsTestStart(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onBackgroundTask([Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 391
    check-cast p1, [Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;->onBackgroundTask([Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
