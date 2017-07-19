.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field private static final MSG_ADJUST_VOLUME:I = 0x2

.field private static final MSG_COMMAND:I = 0x1

.field private static final MSG_CUSTOM_ACTION:I = 0x14

.field private static final MSG_FAST_FORWARD:I = 0x10

.field private static final MSG_MEDIA_BUTTON:I = 0x15

.field private static final MSG_NEXT:I = 0xe

.field private static final MSG_PAUSE:I = 0xc

.field private static final MSG_PLAY:I = 0x7

.field private static final MSG_PLAY_MEDIA_ID:I = 0x8

.field private static final MSG_PLAY_SEARCH:I = 0x9

.field private static final MSG_PLAY_URI:I = 0xa

.field private static final MSG_PREPARE:I = 0x3

.field private static final MSG_PREPARE_MEDIA_ID:I = 0x4

.field private static final MSG_PREPARE_SEARCH:I = 0x5

.field private static final MSG_PREPARE_URI:I = 0x6

.field private static final MSG_PREVIOUS:I = 0xf

.field private static final MSG_RATE:I = 0x13

.field private static final MSG_REWIND:I = 0x11

.field private static final MSG_SEEK_TO:I = 0x12

.field private static final MSG_SET_VOLUME:I = 0x16

.field private static final MSG_SKIP_TO_ITEM:I = 0xb

.field private static final MSG_STOP:I = 0xd


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2002
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .line 2003
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2002
    return-void
.end method

.method private onMediaButtonEvent(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .registers 13
    .param p1, "ke"    # Landroid/view/KeyEvent;
    .param p2, "cb"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .prologue
    const-wide/16 v8, 0x0

    .line 2108
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_b

    .line 2109
    :cond_a
    return-void

    .line 2111
    :cond_b
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get14(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    if-nez v3, :cond_1d

    const-wide/16 v4, 0x0

    .line 2112
    .local v4, "validActions":J
    :goto_15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_b6

    .line 2107
    :cond_1c
    :goto_1c
    return-void

    .line 2111
    .end local v4    # "validActions":J
    :cond_1d
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get14(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v4

    .restart local v4    # "validActions":J
    goto :goto_15

    .line 2115
    :sswitch_28
    const-wide/16 v6, 0x4

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1c

    .line 2116
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_1c

    .line 2121
    :sswitch_33
    const-wide/16 v6, 0x2

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1c

    .line 2122
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_1c

    .line 2126
    :sswitch_3e
    const-wide/16 v6, 0x20

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1c

    .line 2127
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto :goto_1c

    .line 2131
    :sswitch_49
    const-wide/16 v6, 0x10

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1c

    .line 2132
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto :goto_1c

    .line 2136
    :sswitch_54
    const-wide/16 v6, 0x1

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1c

    .line 2137
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto :goto_1c

    .line 2141
    :sswitch_5f
    const-wide/16 v6, 0x40

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1c

    .line 2142
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto :goto_1c

    .line 2146
    :sswitch_6a
    const-wide/16 v6, 0x8

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1c

    .line 2147
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto :goto_1c

    .line 2152
    :sswitch_75
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get14(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    if-eqz v3, :cond_a6

    .line 2153
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get14(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_a4

    const/4 v2, 0x1

    .line 2154
    .local v2, "isPlaying":Z
    :goto_8b
    const-wide/16 v6, 0x204

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_a8

    const/4 v1, 0x1

    .line 2156
    .local v1, "canPlay":Z
    :goto_93
    const-wide/16 v6, 0x202

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_aa

    const/4 v0, 0x1

    .line 2158
    .local v0, "canPause":Z
    :goto_9b
    if-eqz v2, :cond_ac

    if-eqz v0, :cond_ac

    .line 2159
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto/16 :goto_1c

    .line 2153
    .end local v0    # "canPause":Z
    .end local v1    # "canPlay":Z
    .end local v2    # "isPlaying":Z
    :cond_a4
    const/4 v2, 0x0

    .restart local v2    # "isPlaying":Z
    goto :goto_8b

    .line 2152
    .end local v2    # "isPlaying":Z
    :cond_a6
    const/4 v2, 0x0

    .restart local v2    # "isPlaying":Z
    goto :goto_8b

    .line 2154
    :cond_a8
    const/4 v1, 0x0

    .restart local v1    # "canPlay":Z
    goto :goto_93

    .line 2156
    :cond_aa
    const/4 v0, 0x0

    .restart local v0    # "canPause":Z
    goto :goto_9b

    .line 2160
    :cond_ac
    if-nez v2, :cond_1c

    if-eqz v1, :cond_1c

    .line 2161
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto/16 :goto_1c

    .line 2112
    nop

    :sswitch_data_b6
    .sparse-switch
        0x4f -> :sswitch_75
        0x55 -> :sswitch_75
        0x56 -> :sswitch_54
        0x57 -> :sswitch_3e
        0x58 -> :sswitch_49
        0x59 -> :sswitch_6a
        0x5a -> :sswitch_5f
        0x7e -> :sswitch_28
        0x7f -> :sswitch_33
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 2026
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    .line 2027
    .local v0, "cb":Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    if-nez v0, :cond_a

    .line 2028
    return-void

    .line 2030
    :cond_a
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_f6

    .line 2025
    :cond_f
    :goto_f
    return-void

    .line 2032
    :pswitch_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;

    .line 2033
    .local v1, "cmd":Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;
    iget-object v4, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->command:Ljava/lang/String;

    iget-object v5, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->extras:Landroid/os/Bundle;

    iget-object v6, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_f

    .line 2036
    .end local v1    # "cmd":Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;
    :pswitch_1e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/KeyEvent;

    .line 2037
    .local v3, "keyEvent":Landroid/view/KeyEvent;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2038
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2040
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 2041
    invoke-direct {p0, v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onMediaButtonEvent(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    goto :goto_f

    .line 2045
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "keyEvent":Landroid/view/KeyEvent;
    :pswitch_3a
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    goto :goto_f

    .line 2048
    :pswitch_3e
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f

    .line 2051
    :pswitch_4a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f

    .line 2054
    :pswitch_56
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_f

    .line 2057
    :pswitch_62
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_f

    .line 2060
    :pswitch_66
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f

    .line 2063
    :pswitch_72
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f

    .line 2066
    :pswitch_7e
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_f

    .line 2069
    :pswitch_8a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    goto/16 :goto_f

    .line 2072
    :pswitch_97
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto/16 :goto_f

    .line 2075
    :pswitch_9c
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto/16 :goto_f

    .line 2078
    :pswitch_a1
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto/16 :goto_f

    .line 2081
    :pswitch_a6
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto/16 :goto_f

    .line 2084
    :pswitch_ab
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto/16 :goto_f

    .line 2087
    :pswitch_b0
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto/16 :goto_f

    .line 2090
    :pswitch_b5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    goto/16 :goto_f

    .line 2093
    :pswitch_c2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    goto/16 :goto_f

    .line 2096
    :pswitch_cb
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_f

    .line 2099
    :pswitch_d8
    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    goto/16 :goto_f

    .line 2102
    :pswitch_e7
    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    goto/16 :goto_f

    .line 2030
    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_10
        :pswitch_d8
        :pswitch_3a
        :pswitch_3e
        :pswitch_4a
        :pswitch_56
        :pswitch_62
        :pswitch_66
        :pswitch_72
        :pswitch_7e
        :pswitch_8a
        :pswitch_97
        :pswitch_9c
        :pswitch_a1
        :pswitch_a6
        :pswitch_ab
        :pswitch_b0
        :pswitch_b5
        :pswitch_c2
        :pswitch_cb
        :pswitch_1e
        :pswitch_e7
    .end packed-switch
.end method

.method public post(I)V
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 2017
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    .line 2016
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2013
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2012
    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    .line 2021
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2020
    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2007
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2008
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2009
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2006
    return-void
.end method
