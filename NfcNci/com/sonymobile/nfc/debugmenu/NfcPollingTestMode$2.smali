.class Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$2;
.super Ljava/lang/Object;
.source "NfcPollingTestMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method
