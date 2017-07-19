.class public Lcom/android/nfc/dhimpl/NativeP2pDevice;
.super Ljava/lang/Object;
.source "NativeP2pDevice.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$NfcDepEndpoint;


# instance fields
.field private mGeneralBytes:[B

.field private mHandle:I

.field private mLlcpVersion:B

.field private mMode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native doConnect()Z
.end method

.method private native doDisconnect()Z
.end method

.method private native doReceive()[B
.end method

.method private native doSend([B)Z
.end method


# virtual methods
.method public connect()Z
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeP2pDevice;->doConnect()Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeP2pDevice;->doDisconnect()Z

    move-result v0

    return v0
.end method

.method public native doTransceive([B)[B
.end method

.method public getGeneralBytes()[B
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeP2pDevice;->mGeneralBytes:[B

    return-object v0
.end method

.method public getHandle()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeP2pDevice;->mHandle:I

    return v0
.end method

.method public getLlcpVersion()B
    .registers 2

    .prologue
    .line 81
    iget-byte v0, p0, Lcom/android/nfc/dhimpl/NativeP2pDevice;->mLlcpVersion:B

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeP2pDevice;->mMode:I

    return v0
.end method

.method public receive()[B
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeP2pDevice;->doReceive()[B

    move-result-object v0

    return-object v0
.end method

.method public send([B)Z
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeP2pDevice;->doSend([B)Z

    move-result v0

    return v0
.end method

.method public transceive([B)[B
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeP2pDevice;->doTransceive([B)[B

    move-result-object v0

    return-object v0
.end method
