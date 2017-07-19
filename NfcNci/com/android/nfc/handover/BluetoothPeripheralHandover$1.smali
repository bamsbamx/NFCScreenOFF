.class Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;
.super Landroid/os/Handler;
.source "BluetoothPeripheralHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/BluetoothPeripheralHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 615
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8c

    .line 614
    :goto_9
    return-void

    .line 617
    :pswitch_a
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    return-void

    .line 619
    :cond_12
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eq v0, v4, :cond_1e

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-ne v0, v4, :cond_3c

    .line 620
    :cond_1e
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v3, v2, v5

    const v3, 0x7f090027

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 622
    return-void

    .line 624
    :cond_3c
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    .line 625
    const v2, 0x7f09002c

    .line 624
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 627
    const-string/jumbo v0, "BluetoothPeripheralHandover"

    const-string/jumbo v1, "Timeout completing BT handover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0, v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_9

    .line 631
    :pswitch_5b
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_9

    .line 634
    :pswitch_61
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 635
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v0, v2, :cond_80

    .line 636
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v1, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 640
    :cond_72
    :goto_72
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v1, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    .line 641
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_9

    .line 637
    :cond_80
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_72

    .line 638
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v2, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    goto :goto_72

    .line 615
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5b
        :pswitch_61
    .end packed-switch
.end method
