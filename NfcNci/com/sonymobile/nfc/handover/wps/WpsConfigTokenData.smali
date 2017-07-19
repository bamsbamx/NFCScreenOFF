.class public final Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;
.super Ljava/lang/Object;
.source "WpsConfigTokenData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authenticationType:I

.field public credential:Z

.field public encryptionType:I

.field public macAddress:Ljava/lang/String;

.field public networkIndex:I

.field public networkKey:Ljava/lang/String;

.field public networkKeyShareable:Z

.field public ssid:Ljava/lang/String;

.field public valid:Z

.field public version:I

.field public version2:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData$1;

    invoke-direct {v0}, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData$1;-><init>()V

    .line 57
    sput-object v0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->valid:Z

    .line 27
    const/16 v0, 0x10

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->version:I

    .line 30
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->credential:Z

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkIndex:I

    .line 36
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->ssid:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->authenticationType:I

    .line 42
    iput v1, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->encryptionType:I

    .line 45
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKey:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->macAddress:Ljava/lang/String;

    .line 52
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKeyShareable:Z

    .line 55
    iput v1, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->version2:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .registers 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->valid:Z

    .line 27
    const/16 v0, 0x10

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->version:I

    .line 30
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->credential:Z

    .line 33
    iput v1, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkIndex:I

    .line 36
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->ssid:Ljava/lang/String;

    .line 39
    iput v4, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->authenticationType:I

    .line 42
    iput v4, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->encryptionType:I

    .line 45
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKey:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->macAddress:Ljava/lang/String;

    .line 52
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKeyShareable:Z

    .line 55
    iput v4, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->version2:I

    .line 73
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->ssid:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    .line 89
    :goto_2b
    :pswitch_2b
    const/16 v0, 0x8

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->encryptionType:I

    .line 90
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 91
    iput v1, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->encryptionType:I

    .line 99
    :cond_39
    :goto_39
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKey:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKey:Ljava/lang/String;

    if-eqz v0, :cond_85

    iget v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->authenticationType:I

    if-ne v0, v1, :cond_4d

    .line 101
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 107
    :cond_4d
    :goto_4d
    const-string/jumbo v0, "FF:FF:FF:FF:FF:FF"

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->macAddress:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKeyShareable:Z

    .line 113
    const/16 v0, 0x20

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->version2:I

    .line 71
    return-void

    .line 78
    :pswitch_59
    iput v1, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->authenticationType:I

    goto :goto_2b

    .line 81
    :pswitch_5c
    iput v5, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->authenticationType:I

    goto :goto_2b

    .line 84
    :pswitch_5f
    const/16 v0, 0x20

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->authenticationType:I

    goto :goto_2b

    .line 92
    :cond_64
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 93
    const/4 v0, 0x4

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->encryptionType:I

    goto :goto_39

    .line 94
    :cond_70
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 95
    const/16 v0, 0x8

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->encryptionType:I

    goto :goto_39

    .line 102
    :cond_7d
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 103
    :cond_85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKey:Ljava/lang/String;

    goto :goto_4d

    .line 76
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_59
        :pswitch_5c
        :pswitch_2b
        :pswitch_2b
        :pswitch_5f
    .end packed-switch
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->valid:Z

    .line 27
    const/16 v0, 0x10

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->version:I

    .line 30
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->credential:Z

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkIndex:I

    .line 36
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->ssid:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->authenticationType:I

    .line 42
    iput v1, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->encryptionType:I

    .line 45
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKey:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->macAddress:Ljava/lang/String;

    .line 52
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKeyShareable:Z

    .line 55
    iput v1, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->version2:I

    .line 117
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->readFromParcel(Landroid/os/Parcel;)V

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4d

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->valid:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->version:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4f

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->credential:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkIndex:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->ssid:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->authenticationType:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->encryptionType:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKey:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->macAddress:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_51

    :goto_44
    iput-boolean v1, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKeyShareable:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->version2:I

    .line 138
    return-void

    :cond_4d
    move v0, v2

    .line 139
    goto :goto_9

    :cond_4f
    move v0, v2

    .line 141
    goto :goto_18

    :cond_51
    move v1, v2

    .line 148
    goto :goto_44
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->valid:Z

    if-eqz v0, :cond_42

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->credential:Z

    if-eqz v0, :cond_44

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->authenticationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->encryptionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKeyShareable:Z

    if-eqz v0, :cond_46

    :goto_39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->version2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return-void

    :cond_42
    move v0, v2

    .line 125
    goto :goto_7

    :cond_44
    move v0, v2

    .line 127
    goto :goto_14

    :cond_46
    move v1, v2

    .line 134
    goto :goto_39
.end method
