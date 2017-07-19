.class public Lcom/android/nfc/dhimpl/NativeFelicaSe;
.super Ljava/lang/Object;
.source "NativeFelicaSe.java"

# interfaces
.implements Lcom/android/nfc/FelicaDeviceHost$FelicaSeEndpoint;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native doCancel(I)V
.end method

.method private native doClose(I)I
.end method

.method private native doOpen()I
.end method

.method private native doTransceive(I[BI[I)[B
.end method


# virtual methods
.method public cancel(I)V
    .registers 2
    .param p1, "handle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeFelicaSe;->doCancel(I)V

    .line 54
    return-void
.end method

.method public close(I)I
    .registers 3
    .param p1, "handle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeFelicaSe;->doClose(I)I

    move-result v0

    return v0
.end method

.method public open()I
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeFelicaSe;->doOpen()I

    move-result v0

    return v0
.end method

.method public transceive(I[BI[I)[B
    .registers 6
    .param p1, "handle"    # I
    .param p2, "command"    # [B
    .param p3, "timeout"    # I
    .param p4, "err"    # [I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeFelicaSe;->doTransceive(I[BI[I)[B

    move-result-object v0

    return-object v0
.end method
