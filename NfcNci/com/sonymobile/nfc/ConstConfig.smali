.class public Lcom/sonymobile/nfc/ConstConfig;
.super Ljava/lang/Object;
.source "ConstConfig.java"


# instance fields
.field public final SE_HANDLE_ESE_FN:I

.field public final SE_HANDLE_ESE_SMX:I

.field public final SE_HANDLE_HOST:I

.field public final SE_HANDLE_UICC:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/ConstConfig;->SE_HANDLE_HOST:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/ConstConfig;->SE_HANDLE_UICC:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/ConstConfig;->SE_HANDLE_ESE_SMX:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/ConstConfig;->SE_HANDLE_ESE_FN:I

    .line 29
    return-void
.end method
