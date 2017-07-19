.class public abstract Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;
.super Landroid/app/Activity;
.source "CtaDialogActivityBase.java"

# interfaces
.implements Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "CtaDialogActivityBase"


# instance fields
.field private mIsUserMadeChoice:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/sonymobile/nfc/cta/CtaUtils;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->DBG:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->mIsUserMadeChoice:Z

    .line 12
    return-void
.end method


# virtual methods
.method protected getDialogText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onAllow()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->mIsUserMadeChoice:Z

    .line 48
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->onUserAllowed()V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget-boolean v2, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->DBG:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "CtaDialogActivityBase"

    const-string/jumbo v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_10
    if-nez p1, :cond_24

    .line 24
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->getDialogText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 25
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->newInstance(Ljava/lang/CharSequence;)Lcom/sonymobile/nfc/cta/CtaDialogFragment;

    move-result-object v0

    .line 26
    .local v0, "dialogFragment":Lcom/sonymobile/nfc/cta/CtaDialogFragment;
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "cta_fragment_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 20
    .end local v0    # "dialogFragment":Lcom/sonymobile/nfc/cta/CtaDialogFragment;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_24
    return-void
.end method

.method public final onDeny()V
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->mIsUserMadeChoice:Z

    .line 54
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->onUserDenied()V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 42
    sget-boolean v0, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->DBG:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "CtaDialogActivityBase"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_10
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 33
    sget-boolean v0, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->DBG:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "CtaDialogActivityBase"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_10
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->mIsUserMadeChoice:Z

    if-eqz v0, :cond_1b

    .line 31
    :cond_1a
    :goto_1a
    return-void

    .line 35
    :cond_1b
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;->onDeny()V

    goto :goto_1a
.end method

.method public onUserAllowed()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method

.method public onUserDenied()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method
