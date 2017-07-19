.class public interface abstract Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/DeviceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NfcDepEndpoint"
.end annotation


# static fields
.field public static final MODE_INVALID:S = 0xffs

.field public static final MODE_P2P_INITIATOR:S = 0x1s

.field public static final MODE_P2P_TARGET:S


# virtual methods
.method public abstract connect()Z
.end method

.method public abstract disconnect()Z
.end method

.method public abstract getGeneralBytes()[B
.end method

.method public abstract getHandle()I
.end method

.method public abstract getLlcpVersion()B
.end method

.method public abstract getMode()I
.end method

.method public abstract receive()[B
.end method

.method public abstract send([B)Z
.end method

.method public abstract transceive([B)[B
.end method
