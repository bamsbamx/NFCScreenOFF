.class Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    .prologue
    .line 470
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;)V
    .registers 3
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;-><init>(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->-get0(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 474
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->-get0(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnected()V

    .line 476
    :cond_11
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    .line 472
    return-void
.end method

.method public onConnectionFailed()V
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->-get0(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 490
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->-get0(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnectionFailed()V

    .line 492
    :cond_11
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    .line 488
    return-void
.end method

.method public onConnectionSuspended()V
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->-get0(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 482
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->-get0(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;->onConnectionSuspended()V

    .line 484
    :cond_11
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionSuspended()V

    .line 480
    return-void
.end method
