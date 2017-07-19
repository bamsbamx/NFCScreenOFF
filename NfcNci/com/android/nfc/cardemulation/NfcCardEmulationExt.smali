.class public interface abstract Lcom/android/nfc/cardemulation/NfcCardEmulationExt;
.super Ljava/lang/Object;
.source "NfcCardEmulationExt.java"


# virtual methods
.method public abstract getUsedAidTableSizeInPercent(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerService(ILandroid/content/ComponentName;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterOtherService(ILandroid/content/ComponentName;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
