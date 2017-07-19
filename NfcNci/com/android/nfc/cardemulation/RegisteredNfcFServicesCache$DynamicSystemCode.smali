.class Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
.super Ljava/lang/Object;
.source "RegisteredNfcFServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DynamicSystemCode"
.end annotation


# instance fields
.field public final systemCode:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "systemCode"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->uid:I

    .line 87
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->systemCode:Ljava/lang/String;

    .line 85
    return-void
.end method
