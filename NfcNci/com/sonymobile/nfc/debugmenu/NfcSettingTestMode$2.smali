.class Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 119
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 123
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->finish()V

    .line 121
    :cond_12
    return-void
.end method
