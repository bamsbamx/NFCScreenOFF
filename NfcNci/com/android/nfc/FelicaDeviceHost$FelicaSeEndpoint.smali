.class public interface abstract Lcom/android/nfc/FelicaDeviceHost$FelicaSeEndpoint;
.super Ljava/lang/Object;
.source "FelicaDeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/FelicaDeviceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FelicaSeEndpoint"
.end annotation


# virtual methods
.method public abstract cancel(I)V
.end method

.method public abstract close(I)I
.end method

.method public abstract open()I
.end method

.method public abstract transceive(I[BI[I)[B
.end method
