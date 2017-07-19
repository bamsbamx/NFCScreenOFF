.class public Lcom/sonymobile/nfc/cta/CtaHandoverDialog;
.super Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;
.source "CtaHandoverDialog.java"


# static fields
.field public static final BT_TYPE:I = 0x0

.field private static final DBG:Z

.field public static final EXTRA_BROADCAST_INTENT:Ljava/lang/String; = "com.sonymobile.nfc.cta.EXTRA_BROADCAST_INTENT"

.field public static final EXTRA_DENIED_MESSAGE:Ljava/lang/String; = "com.sonymobile.nfc.cta.EXTRA_DENIED_MESSAGE"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "com.sonymobile.nfc.cta.EXTRA_HANDOVER_INTENT"

.field public static final EXTRA_MESSENGER:Ljava/lang/String; = "com.sonymobile.nfc.cta.EXTRA_HANDOVER_MESSENGER"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "com.sonymobile.nfc.cta.EXTRA_HANDOVER_TYPE"

.field private static final TAG:Ljava/lang/String; = "CtaHandoverDialog"

.field public static final WIFI_TYPE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/sonymobile/nfc/cta/CtaUtils;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;->DBG:Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDialogText()Ljava/lang/CharSequence;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.sonymobile.nfc.cta.EXTRA_HANDOVER_TYPE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 37
    .local v1, "type":I
    if-nez v1, :cond_16

    const v0, 0x7f09003b

    .line 39
    .local v0, "rscId":I
    :goto_11
    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 38
    .end local v0    # "rscId":I
    :cond_16
    const v0, 0x7f09003a

    goto :goto_11
.end method

.method public onUserAllowed()V
    .registers 5

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.sonymobile.nfc.cta.EXTRA_HANDOVER_INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 45
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.sonymobile.nfc.cta.EXTRA_BROADCAST_INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 47
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1f

    .line 48
    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    :cond_1f
    if-eqz v1, :cond_25

    .line 51
    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    :goto_24
    return-void

    .line 53
    :cond_25
    const-string/jumbo v2, "CtaHandoverDialog"

    const-string/jumbo v3, "No service Intent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public onUserDenied()V
    .registers 7

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "com.sonymobile.nfc.cta.EXTRA_DENIED_MESSAGE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 60
    .local v0, "deniedMsg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "com.sonymobile.nfc.cta.EXTRA_HANDOVER_MESSENGER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 62
    .local v2, "messenger":Landroid/os/Messenger;
    if-eqz v0, :cond_1e

    if-nez v2, :cond_2c

    .line 63
    :cond_1e
    sget-boolean v3, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;->DBG:Z

    if-eqz v3, :cond_2b

    const-string/jumbo v3, "CtaHandoverDialog"

    const-string/jumbo v4, "no message to be callbacked for user denial"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2b
    return-void

    .line 68
    :cond_2c
    :try_start_2c
    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 58
    :goto_2f
    return-void

    .line 69
    :catch_30
    move-exception v1

    .line 70
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CtaHandoverDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cannot reply. msg id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method
