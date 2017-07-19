.class Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredNfcFServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 129
    const-string/jumbo v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 130
    .local v3, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    if-eq v3, v5, :cond_3d

    .line 133
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 134
    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 135
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 136
    .local v2, "replaced":Z
    :cond_28
    :goto_28
    if-nez v2, :cond_3d

    .line 137
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 138
    .local v1, "currentUser":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v1, v4, :cond_3d

    .line 139
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 128
    .end local v1    # "currentUser":I
    .end local v2    # "replaced":Z
    :cond_3d
    return-void

    .line 134
    :cond_3e
    const/4 v2, 0x1

    goto :goto_28
.end method
