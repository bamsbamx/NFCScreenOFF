.class Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$5;
.super Ljava/lang/Object;
.source "NfcDeviceRwBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

.field final synthetic val$completeListener:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$editText:Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;Landroid/app/AlertDialog;)V
    .registers 5
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
    .param p2, "val$editText"    # Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;
    .param p3, "val$completeListener"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;
    .param p4, "val$dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$5;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$5;->val$editText:Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;

    iput-object p3, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$5;->val$completeListener:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;

    iput-object p4, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 628
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$5;->val$editText:Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$5;->val$completeListener:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;

    invoke-interface {v1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;->onInputCompleted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 630
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 627
    :cond_17
    return-void
.end method
