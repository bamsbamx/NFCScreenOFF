.class public final Landroid/support/v4/media/RatingCompat;
.super Ljava/lang/Object;
.source "RatingCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/RatingCompat$1;,
        Landroid/support/v4/media/RatingCompat$StarStyle;,
        Landroid/support/v4/media/RatingCompat$Style;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/RatingCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private mRatingObj:Ljava/lang/Object;

.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 122
    new-instance v0, Landroid/support/v4/media/RatingCompat$1;

    invoke-direct {v0}, Landroid/support/v4/media/RatingCompat$1;-><init>()V

    .line 121
    sput-object v0, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method private constructor <init>(IF)V
    .registers 3
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    .line 101
    iput p2, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    .line 99
    return-void
.end method

.method synthetic constructor <init>(IFLandroid/support/v4/media/RatingCompat;)V
    .registers 4
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-void
.end method

.method public static fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;
    .registers 6
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 322
    if-eqz p0, :cond_9

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_a

    .line 323
    :cond_9
    return-object v4

    .line 326
    :cond_a
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->getRatingStyle(Ljava/lang/Object;)I

    move-result v1

    .line 328
    .local v1, "ratingStyle":I
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->isRated(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 329
    packed-switch v1, :pswitch_data_44

    .line 346
    return-object v4

    .line 331
    :pswitch_18
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->hasHeart(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .line 351
    .local v0, "rating":Landroid/support/v4/media/RatingCompat;
    :goto_20
    iput-object p0, v0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 352
    return-object v0

    .line 334
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_23
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->isThumbUp(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_20

    .line 340
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_2c
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->getStarRating(Ljava/lang/Object;)F

    move-result v2

    .line 339
    invoke-static {v1, v2}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_20

    .line 343
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_35
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->getPercentRating(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_20

    .line 349
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :cond_3e
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_20

    .line 329
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_18
        :pswitch_23
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_35
    .end packed-switch
.end method

.method public static newHeartRating(Z)Landroid/support/v4/media/RatingCompat;
    .registers 4
    .param p0, "hasHeart"    # Z

    .prologue
    .line 170
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    if-eqz p0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_6
    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v1

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static newPercentageRating(F)Landroid/support/v4/media/RatingCompat;
    .registers 3
    .param p0, "percent"    # F

    .prologue
    .line 228
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_b

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_16

    .line 229
    :cond_b
    const-string/jumbo v0, "Rating"

    const-string/jumbo v1, "Invalid percentage-based rating value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_16
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0
.end method

.method public static newStarRating(IF)Landroid/support/v4/media/RatingCompat;
    .registers 7
    .param p0, "starRatingStyle"    # I
    .param p1, "starRating"    # F

    .prologue
    const/4 v4, 0x0

    .line 198
    const/high16 v0, -0x40800000    # -1.0f

    .line 199
    .local v0, "maxRating":F
    packed-switch p0, :pswitch_data_4a

    .line 210
    const-string/jumbo v1, "Rating"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid rating style ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") for a star rating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-object v4

    .line 201
    :pswitch_28
    const/high16 v0, 0x40400000    # 3.0f

    .line 213
    :goto_2a
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_33

    cmpl-float v1, p1, v0

    if-lez v1, :cond_43

    .line 214
    :cond_33
    const-string/jumbo v1, "Rating"

    const-string/jumbo v2, "Trying to set out of range star-based rating"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-object v4

    .line 204
    :pswitch_3d
    const/high16 v0, 0x40800000    # 4.0f

    .line 205
    goto :goto_2a

    .line 207
    :pswitch_40
    const/high16 v0, 0x40a00000    # 5.0f

    .line 208
    goto :goto_2a

    .line 217
    :cond_43
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v1

    .line 199
    nop

    :pswitch_data_4a
    .packed-switch 0x3
        :pswitch_28
        :pswitch_3d
        :pswitch_40
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/support/v4/media/RatingCompat;
    .registers 4
    .param p0, "thumbIsUp"    # Z

    .prologue
    .line 181
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    if-eqz p0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_6
    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v1

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static newUnratedRating(I)Landroid/support/v4/media/RatingCompat;
    .registers 3
    .param p0, "ratingStyle"    # I

    .prologue
    .line 149
    packed-switch p0, :pswitch_data_e

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 156
    :pswitch_5
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    .line 149
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public getPercentRating()F
    .registers 3

    .prologue
    .line 305
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 308
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    return v0

    .line 306
    :cond_e
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getRating()Ljava/lang/Object;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    if-nez v0, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_e

    .line 365
    :cond_b
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    return-object v0

    .line 368
    :cond_e
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 369
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_54

    .line 384
    :goto_19
    return-object v2

    .line 371
    :pswitch_1a
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompatKitkat;->newHeartRating(Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 389
    :goto_24
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    return-object v0

    .line 374
    :pswitch_27
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompatKitkat;->newThumbRating(Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_24

    .line 379
    :pswitch_32
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/media/RatingCompatKitkat;->newStarRating(IF)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_24

    .line 382
    :pswitch_3f
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompatKitkat;->newPercentageRating(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_19

    .line 387
    :cond_4a
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-static {v0}, Landroid/support/v4/media/RatingCompatKitkat;->newUnratedRating(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_24

    .line 369
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_27
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_3f
    .end packed-switch
.end method

.method public getRatingStyle()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public getStarRating()F
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_12

    .line 295
    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 291
    :pswitch_8
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    return v0

    .line 287
    nop

    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public hasHeart()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    iget v2, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    if-eq v2, v0, :cond_7

    .line 262
    return v1

    .line 264
    :cond_7
    iget v2, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public isRated()Z
    .registers 3

    .prologue
    .line 241
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isThumbUp()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 274
    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    .line 275
    return v0

    .line 277
    :cond_7
    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2c

    const-string/jumbo v0, "unrated"

    .line 106
    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_2c
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 117
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 116
    return-void
.end method
