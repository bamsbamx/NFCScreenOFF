.class Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;
.super Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;
.source "NfcPRBSTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrbsStartTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask",
        "<",
        "Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;


# direct methods
.method public constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    .line 302
    const v0, 0x7f09010c

    invoke-virtual {p1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Ljava/lang/String;Z)V

    .line 301
    return-void
.end method


# virtual methods
.method protected varargs onBackgroundTask([Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;)Ljava/lang/Integer;
    .registers 6
    .param p1, "params"    # [Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;

    .prologue
    .line 307
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 309
    .local v0, "param":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->saveOriginalNfcSetting()V

    .line 310
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-set0(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Z)Z

    .line 312
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-get0(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 314
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    move-result v1

    if-nez v1, :cond_40

    .line 315
    const-string/jumbo v1, "NfcPRBSTestMode"

    const-string/jumbo v2, "Failed to enable NFC. NFC hardware must be broken."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const v1, 0xf001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 321
    :cond_40
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;->getTechnology()I

    move-result v2

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;->getBitrate()I

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
    .line 306
    check-cast p1, [Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;->onBackgroundTask([Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
