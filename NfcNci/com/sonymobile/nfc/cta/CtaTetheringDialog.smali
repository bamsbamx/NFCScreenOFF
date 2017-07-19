.class public Lcom/sonymobile/nfc/cta/CtaTetheringDialog;
.super Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;
.source "CtaTetheringDialog.java"


# static fields
.field public static final EXTRA_NFC:I = 0x1

.field public static final EXTRA_TYPE:Ljava/lang/String; = "com.sonymobile.nfc.cta.EXTRA_TETHERING_TYPE"

.field public static final EXTRA_WIFI:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDialogText()Ljava/lang/CharSequence;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaTetheringDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.sonymobile.nfc.cta.EXTRA_TETHERING_TYPE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 24
    .local v1, "type":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1f

    .line 27
    const v2, 0x7f090040

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/cta/CtaTetheringDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 30
    :cond_1f
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_39

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_2f
    const v2, 0x7f09003a

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/cta/CtaTetheringDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 35
    :cond_39
    return-object v0
.end method

.method public onUserAllowed()V
    .registers 2

    .prologue
    .line 40
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/cta/CtaTetheringDialog;->setResult(I)V

    .line 39
    return-void
.end method

.method public onUserDenied()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/cta/CtaTetheringDialog;->setResult(I)V

    .line 44
    return-void
.end method
