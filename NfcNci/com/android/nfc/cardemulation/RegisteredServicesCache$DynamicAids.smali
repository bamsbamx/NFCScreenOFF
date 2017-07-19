.class Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DynamicAids"
.end annotation


# instance fields
.field public final aidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final uid:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    .line 122
    iput p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->uid:I

    .line 121
    return-void
.end method
