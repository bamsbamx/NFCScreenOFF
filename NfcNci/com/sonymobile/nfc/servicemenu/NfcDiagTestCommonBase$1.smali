.class Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$1;
.super Ljava/util/TimerTask;
.source "NfcDiagTestCommonBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->startTagReadingTimeout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    .line 453
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get5(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 452
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_13} :catch_14

    .line 448
    :goto_13
    return-void

    .line 454
    :catch_14
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_13
.end method
