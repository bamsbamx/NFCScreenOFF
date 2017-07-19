.class Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$4;
.super Ljava/lang/Object;
.source "NfcAntennaSelfTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$isFinished:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;
    .param p2, "val$isFinished"    # Z

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$4;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    iput-boolean p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$4;->val$isFinished:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$4;->val$isFinished:Z

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$4;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->finish()V

    .line 219
    :cond_9
    return-void
.end method
