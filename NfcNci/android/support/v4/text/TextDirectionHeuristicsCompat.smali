.class public final Landroid/support/v4/text/TextDirectionHeuristicsCompat;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;,
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;,
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;,
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;,
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;,
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final LOCALE:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field private static final STATE_FALSE:I = 0x1

.field private static final STATE_TRUE:I = 0x0

.field private static final STATE_UNKNOWN:I = 0x2


# direct methods
.method static synthetic -wrap0(I)I
    .registers 2
    .param p0, "directionality"    # I

    .prologue
    invoke-static {p0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->isRtlTextOrFormat(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)I
    .registers 2
    .param p0, "directionality"    # I

    .prologue
    invoke-static {p0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->isRtlText(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 34
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    invoke-direct {v0, v2, v3, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;ZLandroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;)V

    .line 33
    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 40
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    invoke-direct {v0, v2, v4, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;ZLandroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;)V

    .line 39
    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 48
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;ZLandroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;)V

    .line 47
    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 56
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v4, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;ZLandroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;)V

    .line 55
    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 63
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;ZLandroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;)V

    .line 62
    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->ANYRTL_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 69
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;->INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    .line 68
    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LOCALE:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isRtlText(I)I
    .registers 2
    .param p0, "directionality"    # I

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_a

    .line 86
    const/4 v0, 0x2

    return v0

    .line 81
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 84
    :pswitch_7
    const/4 v0, 0x0

    return v0

    .line 79
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static isRtlTextOrFormat(I)I
    .registers 2
    .param p0, "directionality"    # I

    .prologue
    .line 91
    sparse-switch p0, :sswitch_data_a

    .line 102
    const/4 v0, 0x2

    return v0

    .line 95
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 100
    :sswitch_7
    const/4 v0, 0x0

    return v0

    .line 91
    nop

    :sswitch_data_a
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0xe -> :sswitch_5
        0xf -> :sswitch_5
        0x10 -> :sswitch_7
        0x11 -> :sswitch_7
    .end sparse-switch
.end method
