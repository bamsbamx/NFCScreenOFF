.class public interface abstract Lcom/android/nfc/DeviceHost$TagEndpoint;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/DeviceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TagEndpoint"
.end annotation


# virtual methods
.method public abstract checkNdef([I)Z
.end method

.method public abstract connect(I)Z
.end method

.method public abstract disconnect()Z
.end method

.method public abstract findAndReadNdef()Landroid/nfc/NdefMessage;
.end method

.method public abstract formatNdef([B)Z
.end method

.method public abstract getConnectedTechnology()I
.end method

.method public abstract getHandle()I
.end method

.method public abstract getTechExtras()[Landroid/os/Bundle;
.end method

.method public abstract getTechList()[I
.end method

.method public abstract getUid()[B
.end method

.method public abstract isNdefFormatable()Z
.end method

.method public abstract isPresent()Z
.end method

.method public abstract makeReadOnly()Z
.end method

.method public abstract presenceCheck()Z
.end method

.method public abstract readNdef()[B
.end method

.method public abstract reconnect()Z
.end method

.method public abstract removeTechnology(I)V
.end method

.method public abstract startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V
.end method

.method public abstract transceive([BZ[I)[B
.end method

.method public abstract writeNdef([B)Z
.end method
