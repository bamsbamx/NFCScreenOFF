.class Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
.super Ljava/lang/Object;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredAidCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultServiceInfo"
.end annotation


# instance fields
.field foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

.field paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
