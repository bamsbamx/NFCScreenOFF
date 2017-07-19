.class final Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData$1;
.super Ljava/lang/Object;
.source "WpsConfigTokenData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    new-instance v0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;-><init>(Landroid/os/Parcel;Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 64
    new-array v0, p1, [Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData$1;->newArray(I)[Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;

    move-result-object v0

    return-object v0
.end method
