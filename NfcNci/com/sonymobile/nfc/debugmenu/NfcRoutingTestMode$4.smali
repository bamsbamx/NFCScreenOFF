.class Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$4;
.super Ljava/lang/Object;
.source "NfcRoutingTestMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$4;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 187
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$4;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;)V

    .line 188
    .local v0, "settingTask":Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    return-void
.end method
