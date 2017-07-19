.class Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$6;
.super Ljava/lang/Object;
.source "NfcSettingTestMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

.field final synthetic val$endFlg:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;
    .param p2, "val$endFlg"    # Z

    .prologue
    .line 548
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$6;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    iput-boolean p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$6;->val$endFlg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$6;->val$endFlg:Z

    if-eqz v0, :cond_9

    .line 552
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$6;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->finish()V

    .line 550
    :cond_9
    return-void
.end method
