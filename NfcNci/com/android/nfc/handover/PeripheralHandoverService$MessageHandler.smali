.class Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;
.super Landroid/os/Handler;
.source "PeripheralHandoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/PeripheralHandoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/PeripheralHandoverService;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/handover/PeripheralHandoverService;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 93
    :goto_5
    return-void

    .line 96
    :pswitch_6
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/PeripheralHandoverService;

    iget-object v0, v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const v1, 0x88b8

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->pausePolling(I)V

    goto :goto_5

    .line 94
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
