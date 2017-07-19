.class public Lcom/android/nfc/dhimpl/NativeFelicaRfTarget;
.super Ljava/lang/Object;
.source "NativeFelicaRfTarget.java"

# interfaces
.implements Lcom/android/nfc/FelicaDeviceHost$FelicaRfTargetEndpoint;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native doSendResponse([B)V
.end method


# virtual methods
.method public sendResponse([B)V
    .registers 2
    .param p1, "response"    # [B

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeFelicaRfTarget;->doSendResponse([B)V

    .line 33
    return-void
.end method
