.class Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$2;
.super Ljava/lang/Object;
.source "NfcAntennaSelfTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->showHexValueInputDialog(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

.field final synthetic val$completeListener:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;

.field final synthetic val$editText:Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;
    .param p2, "val$editText"    # Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;
    .param p3, "val$completeListener"    # Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$2;->val$editText:Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;

    iput-object p3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$2;->val$completeListener:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 192
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$2;->val$editText:Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$2;->val$completeListener:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    .end local v0    # "text":Ljava/lang/String;
    :goto_12
    invoke-interface {v1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;->onInputCompleted(Ljava/lang/String;)V

    .line 191
    return-void

    .line 193
    .restart local v0    # "text":Ljava/lang/String;
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method
