.class interface abstract Lcom/android/nfc/P2pEventListener;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/P2pEventListener$Callback;
    }
.end annotation


# virtual methods
.method public abstract isP2pIdle()Z
.end method

.method public abstract onP2pHandoverBusy()V
.end method

.method public abstract onP2pHandoverNotSupported()V
.end method

.method public abstract onP2pInRange()V
.end method

.method public abstract onP2pNfcTapRequested()V
.end method

.method public abstract onP2pOutOfRange()V
.end method

.method public abstract onP2pReceiveComplete(Z)V
.end method

.method public abstract onP2pResumeSend()V
.end method

.method public abstract onP2pSendComplete()V
.end method

.method public abstract onP2pSendConfirmationRequested()V
.end method

.method public abstract onP2pSendDebounce()V
.end method

.method public abstract onP2pTimeoutWaitingForLink()V
.end method
