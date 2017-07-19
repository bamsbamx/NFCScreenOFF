.class Lcom/android/nfc/dhimpl/NativeNfcManager$3;
.super Landroid/content/BroadcastReceiver;
.source "NativeNfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/dhimpl/NativeNfcManager;->getBatteryIntent()Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

.field final synthetic val$cond:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Landroid/os/ConditionVariable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;
    .param p2, "val$cond"    # Landroid/os/ConditionVariable;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$3;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    iput-object p2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$3;->val$cond:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$3;->val$cond:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 797
    return-void
.end method
