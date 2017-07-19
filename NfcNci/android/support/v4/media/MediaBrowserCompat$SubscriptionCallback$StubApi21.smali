.class Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .prologue
    .line 573
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;)V
    .registers 3
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;-><init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void
.end method


# virtual methods
.method applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .registers 9
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 617
    if-nez p1, :cond_5

    .line 618
    return-object v4

    .line 620
    :cond_5
    const-string/jumbo v4, "android.media.browse.extra.PAGE"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 621
    .local v1, "page":I
    const-string/jumbo v4, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 622
    .local v2, "pageSize":I
    if-ne v1, v5, :cond_18

    if-ne v2, v5, :cond_18

    .line 623
    return-object p1

    .line 625
    :cond_18
    mul-int v0, v2, v1

    .line 626
    .local v0, "fromIndex":I
    add-int v3, v0, v2

    .line 627
    .local v3, "toIndex":I
    if-ltz v1, :cond_21

    const/4 v4, 0x1

    if-ge v2, v4, :cond_24

    .line 628
    :cond_21
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v4

    .line 627
    :cond_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_21

    .line 630
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_34

    .line 631
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 633
    :cond_34
    invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    const/4 v5, 0x0

    .line 576
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-static {v6}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->-get1(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    if-nez v6, :cond_15

    .line 577
    .local v5, "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    :goto_9
    if-nez v5, :cond_23

    .line 578
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 579
    invoke-virtual {p0, p2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->parcelListToItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 578
    invoke-virtual {v6, p1, v7}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 575
    :cond_14
    return-void

    .line 576
    .end local v5    # "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    :cond_15
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-static {v6}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->-get1(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    move-object v5, v6

    goto :goto_9

    .line 581
    .restart local v5    # "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    :cond_23
    invoke-virtual {p0, p2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->parcelListToItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 582
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 583
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;>;"
    invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v4

    .line 584
    .local v4, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_14

    .line 585
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 586
    .local v3, "options":Landroid/os/Bundle;
    if-nez v3, :cond_46

    .line 587
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v6, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 584
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 589
    :cond_46
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 590
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v7

    .line 589
    invoke-virtual {v6, p1, v7, v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_43
.end method

.method public onError(Ljava/lang/String;)V
    .registers 3
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 598
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method parcelListToItemList(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    const/4 v3, 0x0

    .line 603
    if-nez p1, :cond_4

    .line 604
    return-object v3

    .line 606
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "parcel$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    .line 608
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 609
    sget-object v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_d

    .line 612
    .end local v1    # "parcel":Landroid/os/Parcel;
    :cond_2c
    return-object v0
.end method
