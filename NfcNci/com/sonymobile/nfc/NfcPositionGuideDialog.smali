.class public Lcom/sonymobile/nfc/NfcPositionGuideDialog;
.super Landroid/app/Activity;
.source "NfcPositionGuideDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;
    }
.end annotation


# static fields
.field private static final BUTTON_TEXT_ID:I = 0x7f09005b

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NfcPositionGuideDialog"

.field private static final TITLE_TEXT_ID:I = 0x7f090059


# instance fields
.field mDialogFragment:Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/sonymobile/nfc/NfcPositionGuideDialog;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_14
    sput-boolean v0, Lcom/sonymobile/nfc/NfcPositionGuideDialog;->DBG:Z

    .line 23
    return-void

    .line 25
    :cond_17
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget-boolean v0, Lcom/sonymobile/nfc/NfcPositionGuideDialog;->DBG:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "NfcPositionGuideDialog"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_10
    if-nez p1, :cond_25

    .line 39
    new-instance v0, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcPositionGuideDialog;->mDialogFragment:Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;

    .line 40
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcPositionGuideDialog;->mDialogFragment:Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;

    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcPositionGuideDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "NfcPositionGuideDialog"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 35
    :cond_25
    return-void
.end method
