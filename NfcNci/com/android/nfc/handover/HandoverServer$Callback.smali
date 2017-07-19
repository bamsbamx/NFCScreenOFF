.class public interface abstract Lcom/android/nfc/handover/HandoverServer$Callback;
.super Ljava/lang/Object;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onHandoverBusy()V
.end method

.method public abstract onHandoverRequestReceived()V
.end method
