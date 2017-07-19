.class Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredServicesCache;
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
    .line 802
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 805
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.sonymobile.nfc.action.UPDATE_ROUTING_TABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 807
    sget-boolean v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "RegisteredServicesCache"

    const-string/jumbo v2, "BroadcastReceiver/ACTION_UPDATE_ROUTING_TABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_1a
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 804
    :cond_23
    return-void
.end method
