.class public Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringCustomCardView;
.super Landroid/support/v7/widget/CardView;
.source "NfcWifiTetheringCustomCardView.java"


# static fields
.field private static final ELEVATION:I = 0x4


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v0, 0x40800000    # 4.0f

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringCustomCardView;->setMaxCardElevation(F)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringCustomCardView;->setCardElevation(F)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 22
    const v1, 0x7f060005

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringCustomCardView;->setBackgroundColor(I)V

    .line 17
    return-void
.end method
