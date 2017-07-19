.class Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$1;
.super Landroid/os/Handler;
.source "NfcSettingTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    .line 113
    const-string/jumbo v0, "NfcSettingTestMode"

    const-string/jumbo v1, "Invalid Message ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_f
    :goto_f
    return-void

    .line 101
    :pswitch_10
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    iget-boolean v0, v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->hasP2pCeCombLimitation:Z

    if-eqz v0, :cond_f

    .line 104
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getSeValue()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    move-result-object v1

    iget v1, v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_UICC:I

    if-ne v0, v1, :cond_f

    .line 105
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getCeValue()I

    move-result v0

    if-ne v0, v2, :cond_f

    .line 106
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get3(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/P2pPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->disableP2pTech(II)V

    .line 108
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get3(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/P2pPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->updateP2pSummary()V

    goto :goto_f

    .line 99
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
