.class public Lcom/android/nfc/cardemulation/DefaultRemovedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "DefaultRemovedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.NFC_PAYMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const v1, 0x10302d2

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->setTheme(I)V

    .line 33
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 37
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f090081

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 38
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 39
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 40
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 41
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->setupAlert()V

    .line 31
    return-void
.end method
