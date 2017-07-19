.class Lcom/android/nfc/cardemulation/RegisteredServicesCache$2;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$2;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 154
    const-string/jumbo v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 155
    .local v3, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    sget-boolean v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v4, :cond_2b

    const-string/jumbo v4, "RegisteredServicesCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Intent action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2b
    if-eq v3, v7, :cond_5b

    .line 158
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 159
    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 160
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 161
    .local v2, "replaced":Z
    :cond_46
    :goto_46
    if-nez v2, :cond_5e

    .line 162
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 163
    .local v1, "currentUser":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v1, v4, :cond_5b

    .line 164
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$2;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 153
    .end local v1    # "currentUser":I
    .end local v2    # "replaced":Z
    :cond_5b
    :goto_5b
    return-void

    .line 159
    :cond_5c
    const/4 v2, 0x1

    goto :goto_46

    .line 169
    .restart local v2    # "replaced":Z
    :cond_5e
    sget-boolean v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v4, :cond_5b

    const-string/jumbo v4, "RegisteredServicesCache"

    const-string/jumbo v5, "Ignoring package intent due to package being replaced."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method
