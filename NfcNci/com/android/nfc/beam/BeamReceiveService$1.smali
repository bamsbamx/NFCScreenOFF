.class Lcom/android/nfc/beam/BeamReceiveService$1;
.super Landroid/content/BroadcastReceiver;
.source "BeamReceiveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/BeamReceiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/beam/BeamReceiveService;


# direct methods
.method constructor <init>(Lcom/android/nfc/beam/BeamReceiveService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/beam/BeamReceiveService;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/nfc/beam/BeamReceiveService$1;->this$0:Lcom/android/nfc/beam/BeamReceiveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 46
    const-string/jumbo v2, "android.bluetooth.adapter.extra.STATE"

    .line 47
    const/high16 v3, -0x80000000

    .line 46
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 48
    .local v1, "state":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1a

    .line 43
    .end local v1    # "state":I
    :cond_1a
    return-void
.end method
