.class Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3$1;
.super Ljava/lang/Object;
.source "NfcDiagTestBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3$1;->this$1:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3$1;->this$1:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;

    iget-object v1, v1, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3$1;->this$1:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;

    iget-object v2, v2, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    .line 687
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3$1;->this$1:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;

    iget-object v3, v3, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get7(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 686
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 682
    :goto_19
    return-void

    .line 688
    :catch_1a
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_19
.end method
