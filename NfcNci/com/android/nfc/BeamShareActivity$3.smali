.class Lcom/android/nfc/BeamShareActivity$3;
.super Ljava/lang/Object;
.source "BeamShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/BeamShareActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/BeamShareActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/BeamShareActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity$3;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$3;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 102
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$3;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 100
    :goto_11
    return-void

    .line 105
    :cond_12
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$3;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$3;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_11
.end method
