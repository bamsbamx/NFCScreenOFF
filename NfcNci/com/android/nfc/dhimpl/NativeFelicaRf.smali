.class public Lcom/android/nfc/dhimpl/NativeFelicaRf;
.super Ljava/lang/Object;
.source "NativeFelicaRf.java"

# interfaces
.implements Lcom/android/nfc/FelicaDeviceHost$FelicaRfEndpoint;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeFelicaRf"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native doCancel(I)V
.end method

.method private native doConnect(I)I
.end method

.method private native doDisconnect(I)I
.end method

.method private native doTransceive(I[BI[I)[B
.end method


# virtual methods
.method public cancel(I)V
    .registers 2
    .param p1, "handle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeFelicaRf;->doCancel(I)V

    .line 45
    return-void
.end method

.method public declared-synchronized connect(I)I
    .registers 3
    .param p1, "timeout"    # I

    .prologue
    monitor-enter p0

    .line 53
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeFelicaRf;->doConnect(I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect(I)I
    .registers 3
    .param p1, "handle"    # I

    .prologue
    monitor-enter p0

    .line 60
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeFelicaRf;->doDisconnect(I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transceive(I[BI[I)[B
    .registers 7
    .param p1, "handle"    # I
    .param p2, "command"    # [B
    .param p3, "timeout"    # I
    .param p4, "err"    # [I

    .prologue
    monitor-enter p0

    .line 38
    :try_start_1
    const-string/jumbo v0, "NativeFelicaRf"

    const-string/jumbo v1, "execute doTransceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeFelicaRf;->doTransceive(I[BI[I)[B
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
