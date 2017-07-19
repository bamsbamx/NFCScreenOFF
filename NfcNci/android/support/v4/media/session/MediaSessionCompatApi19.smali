.class Landroid/support/v4/media/session/MediaSessionCompatApi19;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi19.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;,
        Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;
    }
.end annotation


# static fields
.field private static final ACTION_SET_RATING:J = 0x80L

.field private static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field private static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field private static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addNewMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V
    .registers 5
    .param p0, "metadata"    # Landroid/os/Bundle;
    .param p1, "editor"    # Landroid/media/RemoteControlClient$MetadataEditor;

    .prologue
    .line 68
    if-nez p0, :cond_3

    .line 69
    return-void

    .line 71
    :cond_3
    const-string/jumbo v0, "android.media.metadata.YEAR"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 73
    const-string/jumbo v0, "android.media.metadata.YEAR"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 72
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 75
    :cond_18
    const-string/jumbo v0, "android.media.metadata.RATING"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 77
    const-string/jumbo v0, "android.media.metadata.RATING"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 76
    const/16 v1, 0x65

    invoke-virtual {p1, v1, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 79
    :cond_2d
    const-string/jumbo v0, "android.media.metadata.USER_RATING"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 81
    const-string/jumbo v0, "android.media.metadata.USER_RATING"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 80
    const v1, 0x10000001

    invoke-virtual {p1, v1, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 67
    :cond_43
    return-void
.end method

.method public static createMetadataUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;)Ljava/lang/Object;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;

    .prologue
    .line 39
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;)V

    return-object v0
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .registers 8
    .param p0, "actions"    # J

    .prologue
    .line 60
    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 61
    .local v0, "transportControlFlags":I
    const-wide/16 v2, 0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_f

    .line 62
    or-int/lit16 v0, v0, 0x200

    .line 64
    :cond_f
    return v0
.end method

.method public static setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V
    .registers 10
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "metadata"    # Landroid/os/Bundle;
    .param p2, "actions"    # J

    .prologue
    .line 43
    check-cast p0, Landroid/media/RemoteControlClient;

    .line 44
    .end local p0    # "rccObj":Ljava/lang/Object;
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 45
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 46
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->addNewMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 47
    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1c

    .line 48
    const v1, 0x10000001

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V

    .line 50
    :cond_1c
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 42
    return-void
.end method

.method public static setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "onMetadataUpdateObj"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p0, Landroid/media/RemoteControlClient;

    .line 55
    .end local p0    # "rccObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    .line 54
    .end local p1    # "onMetadataUpdateObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    .line 53
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .registers 4
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "actions"    # J

    .prologue
    .line 34
    check-cast p0, Landroid/media/RemoteControlClient;

    .line 35
    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 34
    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 33
    return-void
.end method
