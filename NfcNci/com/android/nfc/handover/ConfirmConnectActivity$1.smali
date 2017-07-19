.class Lcom/android/nfc/handover/ConfirmConnectActivity$1;
.super Ljava/lang/Object;
.source "ConfirmConnectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/handover/ConfirmConnectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/handover/ConfirmConnectActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$1;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "allowIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$1;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    iget-object v2, v2, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$1;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-virtual {v1, v0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$1;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    .line 59
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$1;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-virtual {v1}, Lcom/android/nfc/handover/ConfirmConnectActivity;->finish()V

    .line 54
    return-void
.end method
