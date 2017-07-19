.class Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;
.super Ljava/lang/Object;
.source "PrbsPropertyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;,
        Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;
    }
.end annotation


# static fields
.field public static final BITRATE_106K:I = 0x1

.field public static final BITRATE_212K:I = 0x2

.field public static final BITRATE_424K:I = 0x4

.field public static final BITRATE_848K:I = 0x8

.field public static final BITRATE_NA:I = 0x0

.field public static final TYPE_A:I = 0x1

.field public static final TYPE_B:I = 0x2

.field public static final TYPE_F:I = 0x4

.field public static final TYPE_NA:I


# instance fields
.field private mBitrate:I

.field mConstraints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;

.field private mModulation:Z

.field private mType:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mContext:Landroid/content/Context;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mConstraints:Ljava/util/ArrayList;

    .line 138
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->setupConstraint()V

    .line 139
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mConstraints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 140
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mConstraints:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;

    .line 141
    .local v0, "c":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    iget-boolean v1, v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->modulation:Z

    iput-boolean v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    .line 142
    iget v1, v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->type:I

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    .line 143
    iget v1, v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->bitrate:I

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    .line 135
    .end local v0    # "c":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    :goto_2c
    return-void

    .line 145
    :cond_2d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    .line 146
    iput v2, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    .line 147
    iput v2, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    goto :goto_2c
.end method

.method private setupConstraint()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 85
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "devConfig":Ljava/lang/String;
    const-string/jumbo v1, "nxp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 87
    invoke-virtual {p0, v3, v3, v3}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 88
    invoke-virtual {p0, v3, v3, v4}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 89
    invoke-virtual {p0, v3, v3, v5}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 90
    invoke-virtual {p0, v3, v3, v7}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 92
    invoke-virtual {p0, v3, v4, v3}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 93
    invoke-virtual {p0, v3, v4, v4}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 94
    invoke-virtual {p0, v3, v4, v5}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 95
    invoke-virtual {p0, v3, v4, v7}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 97
    invoke-virtual {p0, v3, v5, v4}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 98
    invoke-virtual {p0, v3, v5, v5}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 101
    invoke-virtual {p0, v6, v6, v6}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 84
    :goto_39
    return-void

    .line 103
    :cond_3a
    invoke-virtual {p0, v3, v3, v3}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 104
    invoke-virtual {p0, v3, v3, v4}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 105
    invoke-virtual {p0, v3, v3, v5}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 106
    invoke-virtual {p0, v3, v3, v7}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 108
    invoke-virtual {p0, v3, v4, v3}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 109
    invoke-virtual {p0, v3, v4, v4}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 110
    invoke-virtual {p0, v3, v4, v5}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 111
    invoke-virtual {p0, v3, v4, v7}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 113
    invoke-virtual {p0, v3, v5, v4}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 114
    invoke-virtual {p0, v3, v5, v5}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 115
    invoke-virtual {p0, v3, v5, v7}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 117
    invoke-virtual {p0, v6, v3, v3}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 118
    invoke-virtual {p0, v6, v3, v4}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 119
    invoke-virtual {p0, v6, v3, v5}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 120
    invoke-virtual {p0, v6, v3, v7}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 122
    invoke-virtual {p0, v6, v4, v3}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 123
    invoke-virtual {p0, v6, v4, v4}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 124
    invoke-virtual {p0, v6, v4, v5}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 125
    invoke-virtual {p0, v6, v4, v7}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 127
    invoke-virtual {p0, v6, v5, v4}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 128
    invoke-virtual {p0, v6, v5, v5}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    .line 129
    invoke-virtual {p0, v6, v5, v7}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->addConstraint(ZII)V

    goto :goto_39
.end method


# virtual methods
.method acceptType(ZI)Z
    .registers 6
    .param p1, "modulation"    # Z
    .param p2, "type"    # I

    .prologue
    .line 242
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mConstraints:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "constraint$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;

    .line 243
    .local v0, "constraint":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    iget-boolean v2, v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->modulation:Z

    if-ne v2, p1, :cond_6

    iget v2, v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->type:I

    if-ne v2, p2, :cond_6

    .line 244
    const/4 v2, 0x1

    return v2

    .line 247
    .end local v0    # "constraint":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method acceptTypeAndBitrate(ZII)Z
    .registers 7
    .param p1, "modulation"    # Z
    .param p2, "type"    # I
    .param p3, "bitrate"    # I

    .prologue
    .line 251
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mConstraints:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "constraint$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;

    .line 252
    .local v0, "constraint":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    iget-boolean v2, v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->modulation:Z

    if-ne v2, p1, :cond_6

    iget v2, v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->type:I

    if-ne v2, p2, :cond_6

    .line 253
    iget v2, v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->bitrate:I

    if-ne v2, p3, :cond_6

    .line 254
    const/4 v2, 0x1

    return v2

    .line 257
    .end local v0    # "constraint":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    :cond_20
    const/4 v2, 0x0

    return v2
.end method

.method protected addConstraint(ZII)V
    .registers 6
    .param p1, "modulation"    # Z
    .param p2, "type"    # I
    .param p3, "bitrate"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mConstraints:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;-><init>(ZII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method getBitrate()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    return v0
.end method

.method getModulation()Z
    .registers 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    return v0
.end method

.method getPropBitrate()I
    .registers 4

    .prologue
    .line 288
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    if-eqz v1, :cond_14

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    const/4 v1, 0x4

    if-ge v0, v1, :cond_14

    .line 290
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    shr-int/2addr v1, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 291
    return v0

    .line 289
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 295
    .end local v0    # "i":I
    :cond_14
    const/4 v1, -0x1

    return v1
.end method

.method getPropType()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    if-nez v0, :cond_6

    .line 278
    const/4 v0, -0x1

    return v0

    .line 284
    :cond_6
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    :goto_c
    return v0

    :cond_d
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    or-int/lit16 v0, v0, 0x80

    goto :goto_c
.end method

.method getType()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    return v0
.end method

.method isComplete()Z
    .registers 4

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    iget v2, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->acceptTypeAndBitrate(ZII)Z

    move-result v0

    return v0
.end method

.method setBitrate(I)Z
    .registers 9
    .param p1, "bitrate"    # I

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "acceptable":Z
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mConstraints:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "constraint$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;

    .line 191
    .local v1, "constraint":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    iget v3, v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->bitrate:I

    if-ne v3, p1, :cond_7

    .line 192
    iget-boolean v3, v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->modulation:Z

    iget-boolean v4, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    if-ne v3, v4, :cond_7

    .line 193
    iget v3, v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->type:I

    iget v4, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    if-ne v3, v4, :cond_7

    .line 194
    const/4 v0, 0x1

    .line 195
    iput p1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    .line 196
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mListener:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;

    if-eqz v3, :cond_35

    .line 197
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mListener:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;

    iget-boolean v4, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    iget v5, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    iget v6, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    invoke-interface {v3, v4, v5, v6}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;->onChanged(ZII)V

    .line 199
    :cond_35
    const/4 v3, 0x1

    return v3

    .line 203
    .end local v1    # "constraint":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    :cond_37
    const/4 v3, 0x0

    return v3
.end method

.method setModulation(Z)Z
    .registers 11
    .param p1, "modulation"    # Z

    .prologue
    const/4 v7, 0x0

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, "modulationAcceptable":Z
    const/4 v4, 0x0

    .line 209
    .local v4, "typeAcceptable":Z
    const/4 v0, 0x0

    .line 210
    .local v0, "bitrateAcceptable":Z
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mConstraints:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "constraint$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;

    .line 211
    .local v1, "constraint":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    iget-boolean v5, v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->modulation:Z

    if-ne v5, p1, :cond_a

    .line 212
    const/4 v3, 0x1

    .line 213
    iget v5, v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->type:I

    iget v6, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    if-ne v5, v6, :cond_a

    .line 214
    const/4 v4, 0x1

    .line 218
    iget v5, v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->bitrate:I

    iget v6, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    if-ne v5, v6, :cond_a

    .line 219
    const/4 v0, 0x1

    .line 224
    .end local v1    # "constraint":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    :cond_29
    if-eqz v3, :cond_49

    .line 225
    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    .line 226
    if-nez v4, :cond_44

    .line 227
    iput v7, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    .line 228
    iput v7, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    .line 232
    :cond_33
    :goto_33
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mListener:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;

    if-eqz v5, :cond_42

    .line 233
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mListener:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;

    iget-boolean v6, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    iget v7, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    iget v8, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    invoke-interface {v5, v6, v7, v8}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;->onChanged(ZII)V

    .line 235
    :cond_42
    const/4 v5, 0x1

    return v5

    .line 229
    :cond_44
    if-nez v0, :cond_33

    .line 230
    iput v7, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    goto :goto_33

    .line 237
    :cond_49
    return v7
.end method

.method setOnValueChangedListener(Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mListener:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;

    .line 153
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mListener:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;

    if-eqz v0, :cond_11

    .line 154
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mListener:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;

    iget-boolean v1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    iget v2, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    iget v3, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    invoke-interface {v0, v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;->onChanged(ZII)V

    .line 151
    :cond_11
    return-void
.end method

.method setType(I)Z
    .registers 10
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 163
    const/4 v3, 0x0

    .line 164
    .local v3, "typeAcceptable":Z
    const/4 v0, 0x0

    .line 165
    .local v0, "bitrateAcceptable":Z
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mConstraints:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "constraint$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;

    .line 166
    .local v1, "constraint":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    iget v4, v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->type:I

    if-ne v4, p1, :cond_9

    iget-boolean v4, v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->modulation:Z

    iget-boolean v5, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    if-ne v4, v5, :cond_9

    .line 167
    const/4 v3, 0x1

    .line 168
    iget v4, v1, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;->bitrate:I

    iget v5, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    if-ne v4, v5, :cond_9

    .line 169
    const/4 v0, 0x1

    .line 174
    .end local v1    # "constraint":Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$Constraint;
    :cond_27
    if-eqz v3, :cond_40

    .line 175
    iput p1, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    .line 176
    if-nez v0, :cond_2f

    .line 177
    iput v6, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    .line 179
    :cond_2f
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mListener:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;

    if-eqz v4, :cond_3e

    .line 180
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mListener:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;

    iget-boolean v5, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mModulation:Z

    iget v6, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mType:I

    iget v7, p0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->mBitrate:I

    invoke-interface {v4, v5, v6, v7}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;->onChanged(ZII)V

    .line 182
    :cond_3e
    const/4 v4, 0x1

    return v4

    .line 184
    :cond_40
    return v6
.end method
