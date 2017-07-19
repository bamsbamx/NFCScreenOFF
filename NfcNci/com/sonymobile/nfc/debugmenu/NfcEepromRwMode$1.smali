.class Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$1;
.super Ljava/lang/Object;
.source "NfcEepromRwMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->setSettingsFilePath()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;Landroid/widget/EditText;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;
    .param p2, "val$editText"    # Landroid/widget/EditText;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 236
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    invoke-static {v2, v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->-set0(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    iget-object v2, v2, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "settings_file"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    const v3, 0x7f09014c

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;

    invoke-virtual {v2, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->showCompleteDialog(Ljava/lang/String;)V

    .line 235
    return-void
.end method
