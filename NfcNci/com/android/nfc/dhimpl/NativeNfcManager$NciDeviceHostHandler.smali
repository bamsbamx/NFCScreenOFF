.class final Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;
.super Landroid/os/Handler;
.source "NativeNfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NciDeviceHostHandler"
.end annotation


# static fields
.field private static final MSG_FWDL_END:I = 0x2

.field private static final MSG_FWDL_START:I = 0x1

.field private static final MSG_SSR_TIMEOUT:I = 0x0

.field private static final SSR_TIMEOUT_MS:J = 0xea60L


# instance fields
.field private mNfcFwdlDialog:Lcom/sonymobile/nfc/NfcFwdlDialog;

.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;


# direct methods
.method private constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->mNfcFwdlDialog:Lcom/sonymobile/nfc/NfcFwdlDialog;

    .line 1056
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1067
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_5e

    .line 1091
    const-string/jumbo v3, "NativeNfcManager"

    const-string/jumbo v4, "Unknown message received."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_f
    :goto_f
    return-void

    .line 1069
    :pswitch_10
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-static {v3}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get3(Lcom/android/nfc/dhimpl/NativeNfcManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 1070
    .local v0, "isModemRestarting":Z
    if-eqz v0, :cond_f

    .line 1071
    const-string/jumbo v3, "NativeNfcManager"

    const-string/jumbo v4, "SSR doesn\'t complete! Restarting NFC..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/nfc/NfcService;->enableDisableNfc(Z)V

    goto :goto_f

    .line 1076
    .end local v0    # "isModemRestarting":Z
    :pswitch_2f
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->mNfcFwdlDialog:Lcom/sonymobile/nfc/NfcFwdlDialog;

    if-nez v3, :cond_f

    .line 1077
    new-instance v3, Lcom/sonymobile/nfc/NfcFwdlDialog;

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-static {v4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get1(Lcom/android/nfc/dhimpl/NativeNfcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/nfc/NfcFwdlDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->mNfcFwdlDialog:Lcom/sonymobile/nfc/NfcFwdlDialog;

    .line 1078
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->mNfcFwdlDialog:Lcom/sonymobile/nfc/NfcFwdlDialog;

    invoke-virtual {v3}, Lcom/sonymobile/nfc/NfcFwdlDialog;->beginProgress()V

    goto :goto_f

    .line 1082
    :pswitch_46
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->mNfcFwdlDialog:Lcom/sonymobile/nfc/NfcFwdlDialog;

    if-eqz v3, :cond_f

    .line 1083
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1084
    .local v2, "resultCode":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5c

    const/4 v1, 0x1

    .line 1086
    .local v1, "result":Z
    :goto_54
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->mNfcFwdlDialog:Lcom/sonymobile/nfc/NfcFwdlDialog;

    invoke-virtual {v3, v1, v2}, Lcom/sonymobile/nfc/NfcFwdlDialog;->endProgress(ZLjava/lang/String;)V

    .line 1087
    iput-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->mNfcFwdlDialog:Lcom/sonymobile/nfc/NfcFwdlDialog;

    goto :goto_f

    .line 1084
    .end local v1    # "result":Z
    :cond_5c
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_54

    .line 1067
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_2f
        :pswitch_46
    .end packed-switch
.end method
