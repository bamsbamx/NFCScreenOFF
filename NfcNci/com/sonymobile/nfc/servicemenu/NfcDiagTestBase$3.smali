.class Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;
.super Ljava/util/TimerTask;
.source "NfcDiagTestBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->startTagReadingTimeout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get5(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3$1;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    return-void
.end method
