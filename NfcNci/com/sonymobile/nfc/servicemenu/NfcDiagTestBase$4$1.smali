.class Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4$1;
.super Ljava/lang/Object;
.source "NfcDiagTestBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4$1;->this$1:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;

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
    .line 828
    const/4 v0, 0x1

    return v0
.end method
