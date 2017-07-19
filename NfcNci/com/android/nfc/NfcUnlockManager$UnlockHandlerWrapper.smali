.class Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
.super Ljava/lang/Object;
.source "NfcUnlockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcUnlockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnlockHandlerWrapper"
.end annotation


# instance fields
.field final mPollMask:I

.field final mUnlockHandler:Landroid/nfc/INfcUnlockHandler;


# direct methods
.method private constructor <init>(Landroid/nfc/INfcUnlockHandler;I)V
    .registers 3
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "pollMask"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;->mUnlockHandler:Landroid/nfc/INfcUnlockHandler;

    .line 27
    iput p2, p0, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;->mPollMask:I

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Landroid/nfc/INfcUnlockHandler;ILcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;)V
    .registers 4
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "pollMask"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;-><init>(Landroid/nfc/INfcUnlockHandler;I)V

    return-void
.end method
