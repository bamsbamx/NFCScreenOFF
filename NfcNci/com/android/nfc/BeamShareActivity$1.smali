.class Lcom/android/nfc/BeamShareActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BeamShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/BeamShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/BeamShareActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/BeamShareActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/BeamShareActivity;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity$1;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 241
    const-string/jumbo v2, "android.nfc.extra.ADAPTER_STATE"

    .line 242
    const/4 v3, 0x1

    .line 241
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 243
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_25

    .line 244
    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity$1;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v3, p0, Lcom/android/nfc/BeamShareActivity$1;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v3, v3, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    .line 238
    .end local v1    # "state":I
    :cond_25
    return-void
.end method
