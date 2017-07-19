.class public Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.super Ljava/lang/Object;
.source "NativeLlcpSocket.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$LlcpSocket;


# instance fields
.field private mHandle:I

.field private mLocalMiu:I

.field private mLocalRw:I

.field private mSap:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native doClose()Z
.end method

.method private native doConnect(I)Z
.end method

.method private native doConnectBy(Ljava/lang/String;)Z
.end method

.method private native doGetRemoteSocketMiu()I
.end method

.method private native doGetRemoteSocketRw()I
.end method

.method private native doReceive([B)I
.end method

.method private native doSend([B)Z
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeLlcpSocket;->doClose()Z

    move-result v0

    if-nez v0, :cond_c

    .line 55
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 53
    :cond_c
    return-void
.end method

.method public connectToSap(I)V
    .registers 3
    .param p1, "sap"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeLlcpSocket;->doConnect(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 39
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 37
    :cond_c
    return-void
.end method

.method public connectToService(Ljava/lang/String;)V
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeLlcpSocket;->doConnectBy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 47
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 45
    :cond_c
    return-void
.end method

.method public getLocalMiu()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpSocket;->mLocalMiu:I

    return v0
.end method

.method public getLocalRw()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpSocket;->mLocalRw:I

    return v0
.end method

.method public getLocalSap()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpSocket;->mSap:I

    return v0
.end method

.method public getRemoteMiu()I
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeLlcpSocket;->doGetRemoteSocketMiu()I

    move-result v0

    return v0
.end method

.method public getRemoteRw()I
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeLlcpSocket;->doGetRemoteSocketRw()I

    move-result v0

    return v0
.end method

.method public receive([B)I
    .registers 4
    .param p1, "recvBuff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeLlcpSocket;->doReceive([B)I

    move-result v0

    .line 71
    .local v0, "receiveLength":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 72
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 74
    :cond_d
    return v0
.end method

.method public send([B)V
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeLlcpSocket;->doSend([B)Z

    move-result v0

    if-nez v0, :cond_c

    .line 63
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 61
    :cond_c
    return-void
.end method
