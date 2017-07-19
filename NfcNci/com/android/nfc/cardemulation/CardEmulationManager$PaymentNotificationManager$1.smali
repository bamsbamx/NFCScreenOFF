.class Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CardEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager$1;->this$1:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1036
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v1, :cond_22

    const-string/jumbo v1, "CardEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_22
    const-string/jumbo v1, "com.sonymobile.nfc.action.SYNC_UIM_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1039
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager$1;->this$1:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    invoke-static {v1}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->-wrap0(Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;)V

    .line 1035
    :cond_30
    return-void
.end method
