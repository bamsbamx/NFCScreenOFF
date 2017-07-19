.class public interface abstract Lcom/android/nfc/FelicaDeviceHost$FelicaRfEndpoint;
.super Ljava/lang/Object;
.source "FelicaDeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/FelicaDeviceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FelicaRfEndpoint"
.end annotation


# virtual methods
.method public abstract cancel(I)V
.end method

.method public abstract connect(I)I
.end method

.method public abstract disconnect(I)I
.end method

.method public abstract transceive(I[BI[I)[B
.end method
