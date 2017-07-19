.class Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
.super Ljava/lang/Object;
.source "PrbsPropertyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Constraint"
.end annotation


# instance fields
.field public final bitrate:I

.field public final modulation:Z

.field public final type:I


# direct methods
.method public constructor <init>(ZII)V
    .registers 4
    .param p1, "modulation"    # Z
    .param p2, "type"    # I
    .param p3, "bitrate"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->modulation:Z

    .line 75
    iput p2, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->type:I

    .line 76
    iput p3, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->bitrate:I

    .line 73
    return-void
.end method
