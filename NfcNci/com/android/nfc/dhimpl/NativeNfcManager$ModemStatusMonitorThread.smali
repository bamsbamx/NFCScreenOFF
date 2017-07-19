.class final Lcom/android/nfc/dhimpl/NativeNfcManager$ModemStatusMonitorThread;
.super Ljava/lang/Thread;
.source "NativeNfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ModemStatusMonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;


# direct methods
.method private constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$ModemStatusMonitorThread;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Lcom/android/nfc/dhimpl/NativeNfcManager$ModemStatusMonitorThread;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager$ModemStatusMonitorThread;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1135
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "NativeNfcManager"

    const-string/jumbo v1, "starting modem status monitor thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_f
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$ModemStatusMonitorThread;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-wrap1(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    .line 1134
    return-void
.end method
