.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .prologue
    .line 1264
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekTo(J)V
    .registers 6
    .param p1, "pos"    # J

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;)V

    .line 1272
    return-void
.end method

.method public onSetRating(Ljava/lang/Object;)V
    .registers 5
    .param p1, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 1267
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .line 1268
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    .line 1267
    const/16 v2, 0x13

    invoke-static {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;)V

    .line 1266
    return-void
.end method
