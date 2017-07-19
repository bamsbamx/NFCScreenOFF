.class public Lcom/android/nfc/LlcpException;
.super Ljava/lang/Exception;
.source "LlcpException.java"


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "error"    # I

    .prologue
    .line 37
    invoke-static {p1}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
