.class public Lcom/sonymobile/nfc/cta/CtaDialogFragment;
.super Landroid/app/DialogFragment;
.source "CtaDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/cta/CtaDialogFragment$1;,
        Lcom/sonymobile/nfc/cta/CtaDialogFragment$2;,
        Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EXTRA_TEXT:Ljava/lang/String; = "text"

.field private static final TAG:Ljava/lang/String; = "CtaDialogFragment"


# instance fields
.field private final mAllowClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCallback:Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;

.field private final mDenyClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/cta/CtaDialogFragment;)Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->mCallback:Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/sonymobile/nfc/cta/CtaUtils;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->DBG:Z

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/sonymobile/nfc/cta/CtaDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/cta/CtaDialogFragment$1;-><init>(Lcom/sonymobile/nfc/cta/CtaDialogFragment;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->mDenyClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    new-instance v0, Lcom/sonymobile/nfc/cta/CtaDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/cta/CtaDialogFragment$2;-><init>(Lcom/sonymobile/nfc/cta/CtaDialogFragment;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->mAllowClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 23
    return-void
.end method

.method private createView(Landroid/content/Context;)Landroid/view/View;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 132
    sget-boolean v4, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->DBG:Z

    if-eqz v4, :cond_e

    const-string/jumbo v4, "CtaDialogFragment"

    const-string/jumbo v5, "createView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_e
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 135
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_15

    .line 136
    return-object v6

    .line 139
    :cond_15
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "text"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 141
    .local v1, "text":Ljava/lang/CharSequence;
    const v4, 0x7f030003

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 142
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0d0006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 143
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_35

    .line 144
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_35
    const v4, 0x7f0d0005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 148
    .restart local v2    # "textView":Landroid/widget/TextView;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "NFC"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f09003e

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-object v3
.end method

.method public static newInstance(Ljava/lang/CharSequence;)Lcom/sonymobile/nfc/cta/CtaDialogFragment;
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    new-instance v1, Lcom/sonymobile/nfc/cta/CtaDialogFragment;

    invoke-direct {v1}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;-><init>()V

    .line 49
    .local v1, "fragment":Lcom/sonymobile/nfc/cta/CtaDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    instance-of v0, p1, Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;

    if-eqz v0, :cond_b

    .line 83
    check-cast p1, Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->mCallback:Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;

    .line 79
    :cond_b
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 90
    sget-boolean v0, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->DBG:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "CtaDialogFragment"

    const-string/jumbo v1, "onCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_10
    iget-object v0, p0, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->mCallback:Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;

    if-eqz v0, :cond_19

    .line 93
    iget-object v0, p0, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->mCallback:Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;

    invoke-interface {v0}, Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;->onDeny()V

    .line 88
    :cond_19
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    sget-boolean v3, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->DBG:Z

    if-eqz v3, :cond_d

    const-string/jumbo v3, "CtaDialogFragment"

    const-string/jumbo v4, "onCreateDialog()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_d
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 113
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_48

    .line 114
    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_48

    .line 116
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 119
    const v3, 0x7f090032

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v3, 0x7f090042

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->mDenyClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 120
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    const v3, 0x7f090041

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->mAllowClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 128
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "view":Landroid/view/View;
    :cond_48
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 100
    sget-boolean v1, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->DBG:Z

    if-eqz v1, :cond_10

    const-string/jumbo v1, "CtaDialogFragment"

    const-string/jumbo v2, "onDismiss()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_10
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 103
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_19

    .line 104
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 98
    :cond_19
    return-void
.end method
