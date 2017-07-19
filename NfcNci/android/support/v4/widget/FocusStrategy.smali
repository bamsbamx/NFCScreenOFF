.class Landroid/support/v4/widget/FocusStrategy;
.super Ljava/lang/Object;
.source "FocusStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;,
        Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;,
        Landroid/support/v4/widget/FocusStrategy$SequentialComparator;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 10
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rect1"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rect2"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 242
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 243
    .local v0, "rect1InSrcBeam":Z
    invoke-static {p0, p1, p3}, Landroid/support/v4/widget/FocusStrategy;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 246
    .local v1, "rect2InSrcBeam":Z
    if-nez v1, :cond_15

    if-eqz v0, :cond_15

    .line 256
    invoke-static {p0, p1, p3}, Landroid/support/v4/widget/FocusStrategy;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 257
    return v2

    .line 247
    :cond_15
    return v3

    .line 262
    :cond_16
    const/16 v4, 0x11

    if-eq p0, v4, :cond_1e

    const/16 v4, 0x42

    if-ne p0, v4, :cond_1f

    .line 263
    :cond_1e
    return v2

    .line 270
    :cond_1f
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    .line 271
    invoke-static {p0, p1, p3}, Landroid/support/v4/widget/FocusStrategy;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    .line 270
    if-ge v4, v5, :cond_2a

    :goto_29
    return v2

    :cond_2a
    move v2, v3

    goto :goto_29
.end method

.method private static beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7
    .param p0, "direction"    # I
    .param p1, "rect1"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rect2"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 325
    sparse-switch p0, :sswitch_data_2c

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :sswitch_e
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1b

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a

    .line 331
    :sswitch_1d
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2a

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_2a

    move v1, v0

    :cond_2a
    return v1

    .line 325
    nop

    :sswitch_data_2c
    .sparse-switch
        0x11 -> :sswitch_e
        0x21 -> :sswitch_1d
        0x42 -> :sswitch_e
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;
    .registers 14
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroid/support/v4/widget/FocusStrategy$CollectionAdapter",
            "<T",
            "L;",
            "TT;>;",
            "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;TT;",
            "Landroid/graphics/Rect;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "focusables":Ljava/lang/Object;, "TL;"
    .local p1, "collectionAdapter":Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;, "Landroid/support/v4/widget/FocusStrategy$CollectionAdapter<TL;TT;>;"
    .local p2, "adapter":Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;, "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter<TT;>;"
    .local p3, "focused":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 146
    .local v0, "bestCandidateRect":Landroid/graphics/Rect;
    sparse-switch p5, :sswitch_data_60

    .line 160
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 148
    :sswitch_12
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 164
    :goto_1b
    const/4 v1, 0x0

    .line 166
    .local v1, "closest":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0}, Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v2

    .line 167
    .local v2, "count":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 168
    .local v4, "focusableRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .end local v1    # "closest":Ljava/lang/Object;, "TT;"
    .local v5, "i":I
    :goto_26
    if-ge v5, v2, :cond_5f

    .line 169
    invoke-interface {p1, p0, v5}, Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 170
    .local v3, "focusable":Ljava/lang/Object;, "TT;"
    if-ne v3, p3, :cond_51

    .line 168
    :cond_2e
    :goto_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 151
    .end local v2    # "count":I
    .end local v3    # "focusable":Ljava/lang/Object;, "TT;"
    .end local v4    # "focusableRect":Landroid/graphics/Rect;
    .end local v5    # "i":I
    :sswitch_31
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    neg-int v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1b

    .line 154
    :sswitch_3c
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1b

    .line 157
    :sswitch_46
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    neg-int v6, v6

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1b

    .line 175
    .restart local v2    # "count":I
    .restart local v3    # "focusable":Ljava/lang/Object;, "TT;"
    .restart local v4    # "focusableRect":Landroid/graphics/Rect;
    .restart local v5    # "i":I
    :cond_51
    invoke-interface {p2, v3, v4}, Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 176
    invoke-static {p5, p4, v4, v0}, Landroid/support/v4/widget/FocusStrategy;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 177
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 178
    move-object v1, v3

    .restart local v1    # "closest":Ljava/lang/Object;, "TT;"
    goto :goto_2e

    .line 182
    .end local v1    # "closest":Ljava/lang/Object;, "TT;"
    .end local v3    # "focusable":Ljava/lang/Object;, "TT;"
    :cond_5f
    return-object v1

    .line 146
    :sswitch_data_60
    .sparse-switch
        0x11 -> :sswitch_12
        0x21 -> :sswitch_3c
        0x42 -> :sswitch_31
        0x82 -> :sswitch_46
    .end sparse-switch
.end method

.method public static findNextFocusInRelativeDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;
    .registers 13
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "direction"    # I
    .param p5, "isLayoutRtl"    # Z
    .param p6, "wrap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Landroid/support/v4/widget/FocusStrategy$CollectionAdapter",
            "<T",
            "L;",
            "TT;>;",
            "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;TT;IZZ)TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "focusables":Ljava/lang/Object;, "TL;"
    .local p1, "collectionAdapter":Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;, "Landroid/support/v4/widget/FocusStrategy$CollectionAdapter<TL;TT;>;"
    .local p2, "adapter":Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;, "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter<TT;>;"
    .local p3, "focused":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0}, Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;->size(Ljava/lang/Object;)I

    move-result v1

    .line 41
    .local v1, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .local v3, "sortedFocusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_16

    .line 43
    invoke-interface {p1, p0, v2}, Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 46
    :cond_16
    new-instance v0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;

    invoke-direct {v0, p5, p2}, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;-><init>(ZLandroid/support/v4/widget/FocusStrategy$BoundsAdapter;)V

    .line 47
    .local v0, "comparator":Landroid/support/v4/widget/FocusStrategy$SequentialComparator;, "Landroid/support/v4/widget/FocusStrategy$SequentialComparator<TT;>;"
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 49
    packed-switch p4, :pswitch_data_34

    .line 55
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 51
    :pswitch_2a
    invoke-static {p3, v3, p6}, Landroid/support/v4/widget/FocusStrategy;->getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 53
    :pswitch_2f
    invoke-static {p3, v3, p6}, Landroid/support/v4/widget/FocusStrategy;->getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 49
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2a
    .end packed-switch
.end method

.method private static getNextFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .registers 8
    .param p2, "wrap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .local p0, "focused":Ljava/lang/Object;, "TT;"
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 65
    .local v0, "count":I
    if-nez p0, :cond_12

    const/4 v2, -0x1

    :goto_9
    add-int/lit8 v1, v2, 0x1

    .line 66
    .local v1, "position":I
    if-ge v1, v0, :cond_17

    .line 67
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 65
    .end local v1    # "position":I
    :cond_12
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_9

    .line 68
    .restart local v1    # "position":I
    :cond_17
    if-eqz p2, :cond_20

    if-lez v0, :cond_20

    .line 69
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 71
    :cond_20
    return-object v4
.end method

.method private static getPreviousFocusable(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .registers 7
    .param p2, "wrap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .local p0, "focused":Ljava/lang/Object;, "TT;"
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    .local v0, "count":I
    if-nez p0, :cond_11

    move v2, v0

    :goto_8
    add-int/lit8 v1, v2, -0x1

    .line 81
    .local v1, "position":I
    if-ltz v1, :cond_16

    .line 82
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 80
    .end local v1    # "position":I
    :cond_11
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_8

    .line 83
    .restart local v1    # "position":I
    :cond_16
    if-eqz p2, :cond_21

    if-lez v0, :cond_21

    .line 84
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 86
    :cond_21
    return-object v3
.end method

.method private static getWeightedDistanceFor(II)I
    .registers 4
    .param p0, "majorAxisDistance"    # I
    .param p1, "minorAxisDistance"    # I

    .prologue
    .line 282
    mul-int/lit8 v0, p0, 0xd

    mul-int/2addr v0, p0

    .line 283
    mul-int v1, p1, p1

    .line 282
    add-int/2addr v0, v1

    return v0
.end method

.method private static isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 10
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "candidate"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currentBest"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 202
    invoke-static {p1, p2, p0}, Landroid/support/v4/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 203
    return v3

    .line 208
    :cond_9
    invoke-static {p1, p3, p0}, Landroid/support/v4/widget/FocusStrategy;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v4

    if-nez v4, :cond_10

    .line 209
    return v2

    .line 213
    :cond_10
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 214
    return v2

    .line 218
    :cond_17
    invoke-static {p0, p1, p3, p2}, Landroid/support/v4/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 219
    return v3

    .line 225
    :cond_1e
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    .line 226
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    .line 224
    invoke-static {v4, v5}, Landroid/support/v4/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v0

    .line 228
    .local v0, "candidateDist":I
    invoke-static {p0, p1, p3}, Landroid/support/v4/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    .line 229
    invoke-static {p0, p1, p3}, Landroid/support/v4/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    .line 227
    invoke-static {v4, v5}, Landroid/support/v4/widget/FocusStrategy;->getWeightedDistanceFor(II)I

    move-result v1

    .line 230
    .local v1, "currentBestDist":I
    if-ge v0, v1, :cond_39

    :goto_38
    return v2

    :cond_39
    move v2, v3

    goto :goto_38
.end method

.method private static isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 7
    .param p0, "srcRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "destRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    sparse-switch p2, :sswitch_data_66

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :sswitch_e
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_1a

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_21

    .line 299
    :cond_1a
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_22

    :goto_20
    move v1, v0

    .line 298
    :cond_21
    return v1

    :cond_22
    move v0, v1

    .line 299
    goto :goto_20

    .line 301
    :sswitch_24
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_30

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_37

    .line 302
    :cond_30
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_38

    :goto_36
    move v1, v0

    .line 301
    :cond_37
    return v1

    :cond_38
    move v0, v1

    .line 302
    goto :goto_36

    .line 304
    :sswitch_3a
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_46

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_4d

    .line 305
    :cond_46
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_4e

    :goto_4c
    move v1, v0

    .line 304
    :cond_4d
    return v1

    :cond_4e
    move v0, v1

    .line 305
    goto :goto_4c

    .line 307
    :sswitch_50
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_5c

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_63

    .line 308
    :cond_5c
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_64

    :goto_62
    move v1, v0

    .line 307
    :cond_63
    return v1

    :cond_64
    move v0, v1

    .line 308
    goto :goto_62

    .line 296
    :sswitch_data_66
    .sparse-switch
        0x11 -> :sswitch_e
        0x21 -> :sswitch_3a
        0x42 -> :sswitch_24
        0x82 -> :sswitch_50
    .end sparse-switch
.end method

.method private static isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7
    .param p0, "direction"    # I
    .param p1, "src"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dest"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    sparse-switch p0, :sswitch_data_32

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :sswitch_e
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    .line 346
    :sswitch_17
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d

    .line 348
    :sswitch_20
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_27

    :goto_26
    return v0

    :cond_27
    move v0, v1

    goto :goto_26

    .line 350
    :sswitch_29
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_30

    :goto_2f
    return v0

    :cond_30
    move v0, v1

    goto :goto_2f

    .line 342
    :sswitch_data_32
    .sparse-switch
        0x11 -> :sswitch_e
        0x21 -> :sswitch_20
        0x42 -> :sswitch_17
        0x82 -> :sswitch_29
    .end sparse-switch
.end method

.method private static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dest"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 364
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/FocusStrategy;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dest"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 369
    sparse-switch p0, :sswitch_data_24

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :sswitch_c
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    .line 373
    :sswitch_12
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    .line 375
    :sswitch_18
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 377
    :sswitch_1e
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 369
    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_c
        0x21 -> :sswitch_18
        0x42 -> :sswitch_12
        0x82 -> :sswitch_1e
    .end sparse-switch
.end method

.method private static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dest"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 391
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/FocusStrategy;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dest"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 397
    sparse-switch p0, :sswitch_data_24

    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :sswitch_c
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0

    .line 401
    :sswitch_12
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    .line 403
    :sswitch_18
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0

    .line 405
    :sswitch_1e
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 397
    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_c
        0x21 -> :sswitch_18
        0x42 -> :sswitch_12
        0x82 -> :sswitch_1e
    .end sparse-switch
.end method

.method private static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 6
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dest"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 422
    sparse-switch p0, :sswitch_data_3c

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :sswitch_c
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 428
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 427
    sub-int/2addr v0, v1

    .line 426
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    .line 433
    :sswitch_24
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 434
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 433
    sub-int/2addr v0, v1

    .line 432
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    .line 422
    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_c
        0x21 -> :sswitch_24
        0x42 -> :sswitch_c
        0x82 -> :sswitch_24
    .end sparse-switch
.end method
