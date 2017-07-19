.class Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_LTR:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

.field public static final INSTANCE_RTL:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 235
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    .line 236
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_LTR:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    .line 201
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2
    .param p1, "lookForRtl"    # Z

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-boolean p1, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    .line 231
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 10
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "haveUnlookedFor":Z
    move v2, p2

    .local v2, "i":I
    add-int v0, p2, p3

    .local v0, "e":I
    :goto_6
    if-ge v2, v0, :cond_28

    .line 208
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    invoke-static {v5}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->-wrap1(I)I

    move-result v5

    packed-switch v5, :pswitch_data_34

    .line 207
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 210
    :pswitch_1a
    iget-boolean v5, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    if-eqz v5, :cond_1f

    .line 211
    return v4

    .line 213
    :cond_1f
    const/4 v1, 0x1

    .line 214
    goto :goto_17

    .line 216
    :pswitch_21
    iget-boolean v5, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    if-nez v5, :cond_26

    .line 217
    return v3

    .line 219
    :cond_26
    const/4 v1, 0x1

    .line 220
    goto :goto_17

    .line 225
    :cond_28
    if-eqz v1, :cond_31

    .line 226
    iget-boolean v5, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    if-eqz v5, :cond_2f

    :goto_2e
    return v3

    :cond_2f
    move v3, v4

    goto :goto_2e

    .line 228
    :cond_31
    const/4 v3, 0x2

    return v3

    .line 208
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_21
    .end packed-switch
.end method
