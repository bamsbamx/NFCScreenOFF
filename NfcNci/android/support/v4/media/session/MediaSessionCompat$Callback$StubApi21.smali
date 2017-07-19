.class Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .prologue
    .line 739
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;)V
    .registers 3
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 743
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 742
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 813
    const-string/jumbo v4, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 814
    const-string/jumbo v4, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 815
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 816
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 812
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_20
    return-void

    .line 817
    :cond_21
    const-string/jumbo v4, "android.support.v4.media.session.action.PREPARE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 818
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    goto :goto_20

    .line 819
    :cond_30
    const-string/jumbo v4, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 820
    const-string/jumbo v4, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "mediaId":Ljava/lang/String;
    const-string/jumbo v4, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 822
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v4, v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_20

    .line 823
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "mediaId":Ljava/lang/String;
    :cond_4d
    const-string/jumbo v4, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 824
    const-string/jumbo v4, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, "query":Ljava/lang/String;
    const-string/jumbo v4, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 826
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v4, v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_20

    .line 827
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "query":Ljava/lang/String;
    :cond_6a
    const-string/jumbo v4, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 828
    const-string/jumbo v4, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 829
    .restart local v3    # "uri":Landroid/net/Uri;
    const-string/jumbo v4, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 830
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_20

    .line 832
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_89
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v4, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_20
.end method

.method public onFastForward()V
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    .line 787
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    .line 748
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 773
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    .line 772
    return-void
.end method

.method public onPlay()V
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    .line 752
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 757
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 763
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 762
    return-void
.end method

.method public onRewind()V
    .registers 2

    .prologue
    .line 793
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    .line 792
    return-void
.end method

.method public onSeekTo(J)V
    .registers 4
    .param p1, "pos"    # J

    .prologue
    .line 803
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    .line 802
    return-void
.end method

.method public onSetRating(Ljava/lang/Object;)V
    .registers 4
    .param p1, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 808
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    .line 807
    return-void
.end method

.method public onSkipToNext()V
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    .line 777
    return-void
.end method

.method public onSkipToPrevious()V
    .registers 2

    .prologue
    .line 783
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    .line 782
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .registers 4
    .param p1, "id"    # J

    .prologue
    .line 768
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    .line 767
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    .line 797
    return-void
.end method
