.class Lcom/android/nfc/NfcUnlockManager$Singleton;
.super Ljava/lang/Object;
.source "NfcUnlockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcUnlockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/nfc/NfcUnlockManager;


# direct methods
.method static synthetic -get0()Lcom/android/nfc/NfcUnlockManager;
    .registers 1

    sget-object v0, Lcom/android/nfc/NfcUnlockManager$Singleton;->INSTANCE:Lcom/android/nfc/NfcUnlockManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 91
    new-instance v0, Lcom/android/nfc/NfcUnlockManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcUnlockManager;-><init>(Lcom/android/nfc/NfcUnlockManager;)V

    sput-object v0, Lcom/android/nfc/NfcUnlockManager$Singleton;->INSTANCE:Lcom/android/nfc/NfcUnlockManager;

    .line 90
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
