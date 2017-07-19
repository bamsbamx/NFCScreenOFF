.class Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserServices"
.end annotation


# instance fields
.field final dynamicAids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;",
            ">;"
        }
    .end annotation
.end field

.field final services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    .line 133
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 132
    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;-><init>()V

    return-void
.end method
