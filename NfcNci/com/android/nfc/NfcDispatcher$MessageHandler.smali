.class Lcom/android/nfc/NfcDispatcher$MessageHandler;
.super Landroid/os/Handler;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/nfc/NfcDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/NfcDispatcher;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$MessageHandler;->this$0:Lcom/android/nfc/NfcDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcDispatcher;Lcom/android/nfc/NfcDispatcher$MessageHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/NfcDispatcher;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcDispatcher$MessageHandler;-><init>(Lcom/android/nfc/NfcDispatcher;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 884
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_16

    .line 881
    :goto_6
    return-void

    .line 887
    :pswitch_7
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$MessageHandler;->this$0:Lcom/android/nfc/NfcDispatcher;

    invoke-static {v1}, Lcom/android/nfc/NfcDispatcher;->-get0(Lcom/android/nfc/NfcDispatcher;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    .line 884
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
