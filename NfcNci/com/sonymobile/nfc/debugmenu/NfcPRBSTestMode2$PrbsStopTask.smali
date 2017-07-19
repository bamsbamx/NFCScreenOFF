.class Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;
.super Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestBaseTask;
.source "NfcPRBSTestMode2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrbsStopTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestBaseTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;


# direct methods
.method public constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;
    .param p2, "isUiRequired"    # Z

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    .line 415
    const v0, 0x7f09010d

    invoke-virtual {p1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestBaseTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Ljava/lang/String;Z)V

    .line 414
    return-void
.end method


# virtual methods
.method protected bridge synthetic onBackgroundTask([Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3
    .param p1, "ign"    # [Ljava/lang/Object;

    .prologue
    .line 419
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "ign":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;->onBackgroundTask([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs onBackgroundTask([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 4
    .param p1, "ign"    # [Ljava/lang/Void;

    .prologue
    .line 421
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->prbsTestStop()I

    move-result v0

    .line 423
    .local v0, "result":I
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->loadOriginalNfcSetting()V

    .line 425
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method
