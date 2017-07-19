.class Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$4;
.super Ljava/lang/Object;
.source "NfcConfigRwBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

.field final synthetic val$completeListener:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$editText:Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;Landroid/app/AlertDialog;)V
    .registers 5
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;
    .param p2, "val$editText"    # Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;
    .param p3, "val$completeListener"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;
    .param p4, "val$dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$4;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$4;->val$editText:Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;

    iput-object p3, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$4;->val$completeListener:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;

    iput-object p4, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$4;->val$editText:Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$4;->val$completeListener:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;

    invoke-interface {v1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;->onInputCompleted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 343
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 340
    :cond_17
    return-void
.end method
