.class Lcom/sonymobile/nfc/NfcNotificationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/NfcNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/NfcNotificationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/NfcNotificationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/NfcNotificationManager;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sonymobile/nfc/NfcNotificationManager$1;->this$0:Lcom/sonymobile/nfc/NfcNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.sonymobile.nfc.action.NOTIFICATION_CANCEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 146
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcNotificationManager$1;->this$0:Lcom/sonymobile/nfc/NfcNotificationManager;

    const-string/jumbo v2, "com.sonymobile.nfc.extra.DIALOG_ID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonymobile/nfc/NfcNotificationManager;->-wrap1(Lcom/sonymobile/nfc/NfcNotificationManager;I)V

    .line 143
    :cond_1a
    return-void
.end method
