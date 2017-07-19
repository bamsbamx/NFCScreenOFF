.class Lcom/sonymobile/nfc/UrlConfirmationDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "UrlConfirmationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/UrlConfirmationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/UrlConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/UrlConfirmationDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/UrlConfirmationDialog;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog$1;->this$0:Lcom/sonymobile/nfc/UrlConfirmationDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.sonymobile.intent.action.NFC_NEW_CONFIRMATION_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 132
    const-class v1, Lcom/sonymobile/nfc/UrlConfirmationDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string/jumbo v2, "class.name"

    .line 132
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 134
    iget-object v1, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog$1;->this$0:Lcom/sonymobile/nfc/UrlConfirmationDialog;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->finish()V

    .line 128
    :cond_25
    return-void
.end method
