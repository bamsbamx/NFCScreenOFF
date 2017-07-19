.class public interface abstract Lcom/android/nfc/P2pEventListener$Callback;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onP2pCanceled()V
.end method

.method public abstract onP2pSendConfirmed()V
.end method
