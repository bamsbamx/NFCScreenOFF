.class public Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;
.super Ljava/lang/Object;
.source "NativeLlcpServiceSocket.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$LlcpServerSocket;


# instance fields
.field private mHandle:I

.field private mLocalLinearBufferLength:I

.field private mLocalMiu:I

.field private mLocalRw:I

.field private mSap:I

.field private mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native doAccept(III)Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.end method

.method private native doClose()Z
.end method


# virtual methods
.method public accept()Lcom/android/nfc/DeviceHost$LlcpSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget v1, p0, Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;->mLocalMiu:I

    iget v2, p0, Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;->mLocalRw:I

    iget v3, p0, Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;->mLocalLinearBufferLength:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;->doAccept(III)Lcom/android/nfc/dhimpl/NativeLlcpSocket;

    move-result-object v0

    .line 42
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-nez v0, :cond_12

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 43
    :cond_12
    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;->doClose()Z

    move-result v0

    if-nez v0, :cond_c

    .line 50
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 48
    :cond_c
    return-void
.end method
