.class public Lcom/sonymobile/nfc/NfcFwdlDialog;
.super Ljava/lang/Object;
.source "NfcFwdlDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/NfcFwdlDialog$1;
    }
.end annotation


# static fields
.field private static final COMPLETE_TIMEOUT_MS:J = 0x1388L

.field private static final DBG:Z = false

.field private static final MSG_COMPLETE_TIMEOUT:I = 0x1

.field private static final MSG_PROGRESS_TIMEOUT:I = 0x0

.field private static final PROGRESS_TIMEOUT_MS:J = 0x15f90L

.field private static final RESULT_CODE_TIMEOUT:Ljava/lang/String; = "-1"

.field private static final TAG:Ljava/lang/String; = "NfcFwdlDialog"


# instance fields
.field private mCompleteDialog:Landroid/app/Dialog;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/Dialog;


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/nfc/NfcFwdlDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/NfcFwdlDialog;->dismissCompleteDialog()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mProgressDialog:Landroid/app/Dialog;

    .line 49
    iput-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mCompleteDialog:Landroid/app/Dialog;

    .line 53
    new-instance v0, Lcom/sonymobile/nfc/NfcFwdlDialog$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/NfcFwdlDialog$1;-><init>(Lcom/sonymobile/nfc/NfcFwdlDialog;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private composeErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "resultCode"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f09021e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    if-nez p1, :cond_16

    .line 207
    const-string/jumbo p1, "-1"

    .line 210
    :cond_16
    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createCompleteDialog(ZLjava/lang/String;)Landroid/app/Dialog;
    .registers 9
    .param p1, "result"    # Z
    .param p2, "resultCode"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f09021d

    const v3, 0x7f09021a

    .line 139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f080011

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 141
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_42

    .line 144
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 146
    const v1, 0x7f09021c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 148
    new-instance v1, Lcom/sonymobile/nfc/NfcFwdlDialog$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/NfcFwdlDialog$2;-><init>(Lcom/sonymobile/nfc/NfcFwdlDialog;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    new-instance v1, Lcom/sonymobile/nfc/NfcFwdlDialog$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/NfcFwdlDialog$3;-><init>(Lcom/sonymobile/nfc/NfcFwdlDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    :goto_3d
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 167
    :cond_42
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 169
    invoke-direct {p0, p2}, Lcom/sonymobile/nfc/NfcFwdlDialog;->composeErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    new-instance v1, Lcom/sonymobile/nfc/NfcFwdlDialog$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/NfcFwdlDialog$4;-><init>(Lcom/sonymobile/nfc/NfcFwdlDialog;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    new-instance v1, Lcom/sonymobile/nfc/NfcFwdlDialog$5;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/NfcFwdlDialog$5;-><init>(Lcom/sonymobile/nfc/NfcFwdlDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3d
.end method

.method private createProgressDialog()Landroid/app/ProgressDialog;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 130
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f080011

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 131
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 132
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f09021a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f09021b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 135
    return-object v0
.end method

.method private dismissCompleteDialog()V
    .registers 3

    .prologue
    .line 188
    monitor-enter p0

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mCompleteDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    .line 190
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mCompleteDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mCompleteDialog:Landroid/app/Dialog;

    .line 193
    :cond_d
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    .line 187
    return-void

    .line 188
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setWindowParams(Landroid/view/Window;)V
    .registers 3
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 198
    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 199
    const v0, 0x400080

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 197
    return-void
.end method


# virtual methods
.method public beginProgress()V
    .registers 5

    .prologue
    .line 87
    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mProgressDialog:Landroid/app/Dialog;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-eqz v0, :cond_7

    monitor-exit p0

    .line 90
    return-void

    .line 93
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/sonymobile/nfc/NfcFwdlDialog;->createProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mProgressDialog:Landroid/app/Dialog;

    .line 94
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/NfcFwdlDialog;->setWindowParams(Landroid/view/Window;)V

    .line 95
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    .line 84
    return-void

    .line 87
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endProgress(ZLjava/lang/String;)V
    .registers 5
    .param p1, "result"    # Z
    .param p2, "resultCode"    # Ljava/lang/String;

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mProgressDialog:Landroid/app/Dialog;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    if-nez v0, :cond_7

    monitor-exit p0

    .line 116
    return-void

    .line 119
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mProgressDialog:Landroid/app/Dialog;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/nfc/NfcFwdlDialog;->createCompleteDialog(ZLjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mCompleteDialog:Landroid/app/Dialog;

    .line 124
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mCompleteDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/NfcFwdlDialog;->setWindowParams(Landroid/view/Window;)V

    .line 125
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog;->mCompleteDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_2b

    monitor-exit p0

    .line 110
    return-void

    .line 113
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
