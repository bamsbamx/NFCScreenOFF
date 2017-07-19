.class public abstract Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaControllerCallback.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaControllerCallback"

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_4

    .line 29
    return-object v1

    .line 31
    :cond_4
    const-string/jumbo v1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_ca

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 47
    :sswitch_9
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v9

    .line 52
    :sswitch_10
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2c

    .line 57
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 62
    :goto_28
    invoke-virtual {p0, v5, v7}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    return v9

    .line 60
    :cond_2c
    const/4 v7, 0x0

    .local v7, "_arg1":Landroid/os/Bundle;
    goto :goto_28

    .line 67
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    :sswitch_2e
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onSessionDestroyed()V

    .line 69
    return v9

    .line 73
    :sswitch_38
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_50

    .line 76
    sget-object v8, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 81
    :goto_4c
    invoke-virtual {p0, v3}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 82
    return v9

    .line 79
    :cond_50
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    goto :goto_4c

    .line 86
    .end local v3    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :sswitch_52
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6a

    .line 89
    sget-object v8, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaMetadataCompat;

    .line 94
    :goto_66
    invoke-virtual {p0, v1}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 95
    return v9

    .line 92
    :cond_6a
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    goto :goto_66

    .line 99
    .end local v1    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :sswitch_6c
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    sget-object v8, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 102
    .local v6, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {p0, v6}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueChanged(Ljava/util/List;)V

    .line 103
    return v9

    .line 107
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :sswitch_7c
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_94

    .line 110
    sget-object v8, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 115
    :goto_90
    invoke-virtual {p0, v4}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 116
    return v9

    .line 113
    :cond_94
    const/4 v4, 0x0

    .local v4, "_arg0":Ljava/lang/CharSequence;
    goto :goto_90

    .line 120
    .end local v4    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_96
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_ae

    .line 123
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 128
    :goto_aa
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 129
    return v9

    .line 126
    :cond_ae
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_aa

    .line 133
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_b0
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c8

    .line 136
    sget-object v8, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 141
    :goto_c4
    invoke-virtual {p0, v2}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 142
    return v9

    .line 139
    :cond_c8
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    goto :goto_c4

    .line 43
    :sswitch_data_ca
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_38
        0x4 -> :sswitch_52
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_7c
        0x7 -> :sswitch_96
        0x8 -> :sswitch_b0
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
