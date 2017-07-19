.class Lcom/android/nfc/cardemulation/TapAgainDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "TapAgainDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/TapAgainDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/TapAgainDialog;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/TapAgainDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/TapAgainDialog;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog$1;->this$0:Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog$1;->this$0:Lcom/android/nfc/cardemulation/TapAgainDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/nfc/cardemulation/TapAgainDialog;->-set0(Lcom/android/nfc/cardemulation/TapAgainDialog;Z)Z

    .line 50
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog$1;->this$0:Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->finish()V

    .line 48
    return-void
.end method
