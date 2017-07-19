.class Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcRoutingTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 102
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->finish()V

    .line 100
    :cond_12
    return-void
.end method
