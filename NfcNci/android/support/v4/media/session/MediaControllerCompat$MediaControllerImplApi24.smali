.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi24;
.super Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplApi24"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionToken"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1524
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 1523
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Landroid/support/v4/media/session/MediaSessionCompat;

    .prologue
    .line 1519
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 1518
    return-void
.end method


# virtual methods
.method public getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1529
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi24;->mControllerObj:Ljava/lang/Object;

    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getTransportControls(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1530
    .local v0, "controlsObj":Ljava/lang/Object;
    if-eqz v0, :cond_e

    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;-><init>(Ljava/lang/Object;)V

    :cond_e
    return-object v1
.end method
