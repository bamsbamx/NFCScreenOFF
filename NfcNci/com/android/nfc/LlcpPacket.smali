.class public Lcom/android/nfc/LlcpPacket;
.super Ljava/lang/Object;
.source "LlcpPacket.java"


# instance fields
.field private mDataBuffer:[B

.field private mRemoteSap:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataBuffer()[B
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/nfc/LlcpPacket;->mDataBuffer:[B

    return-object v0
.end method

.method public getRemoteSap()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/android/nfc/LlcpPacket;->mRemoteSap:I

    return v0
.end method
