.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;
.super Landroid/support/v4/media/session/IMediaSession$Stub;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaSessionStub"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 1731
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-direct {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;)V
    .registers 5
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1821
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    .line 1820
    return-void
.end method

.method public fastForward()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1896
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;I)V

    .line 1895
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 1944
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get7(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1945
    :try_start_7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/Bundle;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1944
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFlags()J
    .registers 5

    .prologue
    .line 1790
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get7(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1791
    :try_start_7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get5(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    move-result v0

    int-to-long v2, v0

    monitor-exit v1

    return-wide v2

    .line 1790
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .registers 3

    .prologue
    .line 1782
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get7(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1783
    :try_start_7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get13(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/app/PendingIntent;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1782
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .registers 2

    .prologue
    .line 1922
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get8(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1771
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get9(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .registers 2

    .prologue
    .line 1927
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap0(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1932
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get7(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1933
    :try_start_7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get10(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/util/List;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1932
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1939
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get11(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .registers 2

    .prologue
    .line 1952
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get12(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1777
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get15(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .registers 9

    .prologue
    .line 1802
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get7(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1803
    :try_start_7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get17(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    move-result v1

    .line 1804
    .local v1, "volumeType":I
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    move-result v2

    .line 1805
    .local v2, "stream":I
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get16(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/VolumeProviderCompat;

    move-result-object v6

    .line 1806
    .local v6, "vp":Landroid/support/v4/media/VolumeProviderCompat;
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2f

    .line 1807
    invoke-virtual {v6}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v3

    .line 1808
    .local v3, "controlType":I
    invoke-virtual {v6}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v4

    .line 1809
    .local v4, "max":I
    invoke-virtual {v6}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_45

    move-result v5

    .local v5, "current":I
    :goto_28
    monitor-exit v7

    .line 1816
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    return-object v0

    .line 1811
    .end local v3    # "controlType":I
    .end local v4    # "max":I
    .end local v5    # "current":I
    :cond_2f
    const/4 v3, 0x2

    .line 1812
    .restart local v3    # "controlType":I
    :try_start_30
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get0(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 1813
    .restart local v4    # "max":I
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get0(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_45

    move-result v5

    .restart local v5    # "current":I
    goto :goto_28

    .line 1802
    .end local v1    # "volumeType":I
    .end local v2    # "stream":I
    .end local v3    # "controlType":I
    .end local v4    # "max":I
    .end local v5    # "current":I
    .end local v6    # "vp":Landroid/support/v4/media/VolumeProviderCompat;
    :catchall_45
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public isTransportControlEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1957
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get5(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public next()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1886
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;I)V

    .line 1885
    return-void
.end method

.method public pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1876
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;I)V

    .line 1875
    return-void
.end method

.method public play()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1851
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;I)V

    .line 1850
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1856
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1855
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1861
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0x9

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1860
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1866
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1865
    return-void
.end method

.method public prepare()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1831
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;I)V

    .line 1830
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1836
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1835
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1841
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1840
    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1846
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1845
    return-void
.end method

.method public previous()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1891
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;I)V

    .line 1890
    return-void
.end method

.method public rate(Landroid/support/v4/media/RatingCompat;)V
    .registers 4
    .param p1, "rating"    # Landroid/support/v4/media/RatingCompat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1911
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0x13

    invoke-static {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;)V

    .line 1910
    return-void
.end method

.method public registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/support/v4/media/session/IMediaControllerCallback;

    .prologue
    .line 1752
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1754
    :try_start_8
    invoke-interface {p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 1758
    :goto_b
    return-void

    .line 1755
    :catch_c
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_b

    .line 1760
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1749
    return-void
.end method

.method public rewind()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1901
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;I)V

    .line 1900
    return-void
.end method

.method public seekTo(J)V
    .registers 6
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1906
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;)V

    .line 1905
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .registers 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .prologue
    .line 1734
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .line 1735
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;

    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->-get0(Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1734
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;)V

    .line 1733
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1917
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0x14

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1916
    return-void
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "mediaButton"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1741
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get5(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 1742
    .local v0, "handlesMediaButtons":Z
    :cond_c
    if-eqz v0, :cond_15

    .line 1743
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v2, 0x15

    invoke-static {v1, v2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;)V

    .line 1745
    :cond_15
    return v0
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .registers 5
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1826
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    .line 1825
    return-void
.end method

.method public skipToQueueItem(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 1871
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;)V

    .line 1870
    return-void
.end method

.method public stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1881
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;I)V

    .line 1880
    return-void
.end method

.method public unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/support/v4/media/session/IMediaControllerCallback;

    .prologue
    .line 1765
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1764
    return-void
.end method
