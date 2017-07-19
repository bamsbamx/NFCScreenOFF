.class Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$3;
.super Ljava/lang/Object;
.source "NfcAntennaSelfTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

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
    .line 214
    const/4 v0, 0x1

    return v0
.end method
