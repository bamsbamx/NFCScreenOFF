.class Landroid/support/v4/media/session/MediaSessionCompatApi18;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi18.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;,
        Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final ACTION_SEEK_TO:J = 0x100L

.field private static final TAG:Ljava/lang/String; = "MediaSessionCompatApi18"

.field private static sIsMbrPendingIntentSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    .line 26
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;)Ljava/lang/Object;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;

    .prologue
    .line 35
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;)V

    return-object v0
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .registers 8
    .param p0, "actions"    # J

    .prologue
    .line 100
    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 101
    .local v0, "transportControlFlags":I
    const-wide/16 v2, 0x100

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_f

    .line 102
    or-int/lit16 v0, v0, 0x100

    .line 104
    :cond_f
    return v0
.end method

.method public static registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 40
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 45
    .local v0, "am":Landroid/media/AudioManager;
    sget-boolean v2, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v2, :cond_10

    .line 47
    :try_start_d
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_10} :catch_18

    .line 55
    :cond_10
    :goto_10
    sget-boolean v2, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-nez v2, :cond_17

    .line 56
    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 39
    :cond_17
    return-void

    .line 48
    :catch_18
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "MediaSessionCompatApi18"

    const-string/jumbo v3, "Unable to register media button event receiver with PendingIntent, falling back to ComponentName."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v2, 0x0

    sput-boolean v2, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    goto :goto_10
.end method

.method public static setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "onPositionUpdateObj"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p0, Landroid/media/RemoteControlClient;

    .line 95
    .end local p0    # "rccObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 94
    .end local p1    # "onPositionUpdateObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 93
    return-void
.end method

.method public static setState(Ljava/lang/Object;IJFJ)V
    .registers 15
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "speed"    # F
    .param p5, "updateTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 73
    .local v0, "currTime":J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_24

    cmp-long v4, p2, v6

    if-lez v4, :cond_24

    .line 74
    const-wide/16 v2, 0x0

    .line 75
    .local v2, "diff":J
    cmp-long v4, p5, v6

    if-lez v4, :cond_23

    .line 76
    sub-long v2, v0, p5

    .line 77
    const/4 v4, 0x0

    cmpl-float v4, p4, v4

    if-lez v4, :cond_23

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p4, v4

    if-eqz v4, :cond_23

    .line 78
    long-to-float v4, v2

    mul-float/2addr v4, p4

    float-to-long v2, v4

    .line 81
    :cond_23
    add-long/2addr p2, v2

    .line 83
    .end local v2    # "diff":J
    :cond_24
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    move-result p1

    .line 84
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 71
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .registers 4
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "actions"    # J

    .prologue
    .line 88
    check-cast p0, Landroid/media/RemoteControlClient;

    .line 89
    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 88
    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 87
    return-void
.end method

.method public static unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 62
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 63
    .local v0, "am":Landroid/media/AudioManager;
    sget-boolean v1, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v1, :cond_11

    .line 64
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 61
    :goto_10
    return-void

    .line 66
    :cond_11
    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_10
.end method
