.class public Lcom/android/nfc/P2pEventManager;
.super Ljava/lang/Object;
.source "P2pEventManager.java"

# interfaces
.implements Lcom/android/nfc/P2pEventListener;
.implements Lcom/android/nfc/beam/SendUi$Callback;


# static fields
.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "NfcP2pEventManager"

.field static final VIBRATION_PATTERN:[J


# instance fields
.field final mCallback:Lcom/android/nfc/P2pEventListener$Callback;

.field final mContext:Landroid/content/Context;

.field mInDebounce:Z

.field mNdefReceived:Z

.field mNdefSent:Z

.field final mNfcService:Lcom/android/nfc/NfcService;

.field final mNotificationManager:Landroid/app/NotificationManager;

.field final mSendUi:Lcom/android/nfc/beam/SendUi;

.field mSending:Z

.field final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    .line 34
    return-void

    .line 38
    nop

    :array_a
    .array-data 8
        0x0
        0x64
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/P2pEventListener$Callback;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 55
    iput-object p1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    .line 57
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    .line 58
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    .line 59
    const-string/jumbo v2, "notification"

    .line 58
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 62
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v1, 0xf

    .line 64
    .local v0, "uiModeType":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3d

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    .line 53
    :goto_3c
    return-void

    .line 70
    :cond_3d
    new-instance v1, Lcom/android/nfc/beam/SendUi;

    invoke-direct {v1, p1, p0}, Lcom/android/nfc/beam/SendUi;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/SendUi$Callback;)V

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    goto :goto_3c
.end method


# virtual methods
.method public isP2pIdle()Z
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->isSendUiInIdleState()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 232
    :cond_c
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public onCanceled()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 196
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pCanceled()V

    .line 194
    return-void
.end method

.method public onP2pHandoverBusy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 144
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 145
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/nfc/beam/SendUi;->finishAndToast(ILjava/lang/String;)V

    .line 146
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 147
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 142
    return-void
.end method

.method public onP2pHandoverNotSupported()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 134
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 135
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    .line 136
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v3, v1}, Lcom/android/nfc/beam/SendUi;->finishAndToast(ILjava/lang/String;)V

    .line 137
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 138
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 132
    return-void
.end method

.method public onP2pInRange()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 76
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 78
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 79
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 80
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 81
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 83
    :cond_1b
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_24

    .line 84
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->takeScreenshot()V

    .line 75
    :cond_24
    return-void
.end method

.method public onP2pNfcTapRequested()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 91
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 95
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 96
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_23

    .line 97
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->takeScreenshot()V

    .line 98
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->showPreSend(Z)V

    .line 89
    :cond_23
    return-void
.end method

.method public onP2pOutOfRange()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    if-eqz v0, :cond_d

    .line 172
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 173
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 175
    :cond_d
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    if-eqz v0, :cond_18

    .line 178
    :cond_15
    :goto_15
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 170
    return-void

    .line 175
    :cond_18
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_15

    .line 176
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v2}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    goto :goto_15
.end method

.method public onP2pReceiveComplete(Z)V
    .registers 6
    .param p1, "playSound"    # Z

    .prologue
    const/4 v3, 0x1

    .line 152
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 153
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 154
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 156
    :cond_17
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_21

    .line 164
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 166
    :cond_21
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 151
    return-void
.end method

.method public onP2pResumeSend()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 217
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 218
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    if-eqz v0, :cond_1b

    .line 219
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_1b

    .line 220
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showStartSend()V

    .line 223
    :cond_1b
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 215
    return-void
.end method

.method public onP2pSendComplete()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 122
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 123
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 124
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_17

    .line 125
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v3}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 127
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 128
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 121
    return-void
.end method

.method public onP2pSendConfirmationRequested()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 112
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 113
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_18

    .line 114
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v3}, Lcom/android/nfc/beam/SendUi;->showPreSend(Z)V

    .line 110
    :goto_17
    return-void

    .line 116
    :cond_18
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    goto :goto_17
.end method

.method public onP2pSendDebounce()V
    .registers 4

    .prologue
    .line 201
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 202
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 203
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v1, :cond_1e

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 205
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/nfc/P2pEventManager$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/P2pEventManager$1;-><init>(Lcom/android/nfc/P2pEventManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1e
    return-void
.end method

.method public onP2pTimeoutWaitingForLink()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_a

    .line 105
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 103
    :cond_a
    return-void
.end method

.method public onSendConfirmed()V
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    if-nez v0, :cond_12

    .line 184
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_d

    .line 185
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showStartSend()V

    .line 187
    :cond_d
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    .line 189
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 182
    return-void
.end method
