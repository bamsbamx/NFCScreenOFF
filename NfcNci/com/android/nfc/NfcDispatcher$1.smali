.class Lcom/android/nfc/NfcDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcDispatcher;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/NfcDispatcher;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$1;->this$0:Lcom/android/nfc/NfcDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 905
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    .line 906
    const/high16 v2, -0x80000000

    .line 905
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 907
    .local v0, "state":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_17

    .line 908
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$1;->this$0:Lcom/android/nfc/NfcDispatcher;

    invoke-static {v1}, Lcom/android/nfc/NfcDispatcher;->-get0(Lcom/android/nfc/NfcDispatcher;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 904
    :cond_17
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 898
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 900
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcDispatcher$1;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    .line 897
    :cond_10
    return-void
.end method
