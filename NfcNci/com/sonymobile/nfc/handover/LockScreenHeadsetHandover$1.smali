.class Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$1;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenHeadsetHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$1;->this$0:Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v4, -0x80000000

    .line 316
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 320
    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 321
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$1;->this$0:Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

    .line 322
    const-string/jumbo v3, "android.bluetooth.device.extra.BOND_STATE"

    .line 321
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->-wrap1(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;Landroid/bluetooth/BluetoothDevice;I)V

    .line 315
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_24
    :goto_24
    return-void

    .line 323
    :cond_25
    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 324
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$1;->this$0:Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

    .line 325
    const-string/jumbo v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 324
    invoke-static {v2, v3}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->-wrap0(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;I)V

    goto :goto_24
.end method
