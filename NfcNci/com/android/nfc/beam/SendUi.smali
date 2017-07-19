.class public Lcom/android/nfc/beam/SendUi;
.super Ljava/lang/Object;
.source "SendUi.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/animation/TimeAnimator$TimeListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/SendUi$Callback;,
        Lcom/android/nfc/beam/SendUi$ScreenshotTask;
    }
.end annotation


# static fields
.field static final BLACK_LAYER_ALPHA_DOWN_RANGE:[F

.field static final BLACK_LAYER_ALPHA_UP_RANGE:[F

.field static final FADE_IN_DURATION_MS:I = 0xfa

.field static final FADE_IN_START_DELAY_MS:I = 0x15e

.field static final FAST_SEND_DURATION_MS:I = 0x15e

.field public static final FINISH_SCALE_UP:I = 0x0

.field public static final FINISH_SEND_SUCCESS:I = 0x1

.field static final INTERMEDIATE_SCALE:F = 0.6f

.field static final PRE_DURATION_MS:I = 0x15e

.field static final PRE_SCREENSHOT_SCALE:[F

.field static final SCALE_UP_DURATION_MS:I = 0x12c

.field static final SCALE_UP_SCREENSHOT_SCALE:[F

.field static final SEND_SCREENSHOT_SCALE:[F

.field static final SLIDE_OUT_DURATION_MS:I = 0x12c

.field static final SLOW_SEND_DURATION_MS:I = 0x1f40

.field static final STATE_COMPLETE:I = 0x9

.field static final STATE_IDLE:I = 0x0

.field static final STATE_SENDING:I = 0x8

.field static final STATE_W4_NFC_TAP:I = 0x7

.field static final STATE_W4_PRESEND:I = 0x5

.field static final STATE_W4_SCREENSHOT:I = 0x1

.field static final STATE_W4_SCREENSHOT_PRESEND_NFC_TAP_REQUESTED:I = 0x3

.field static final STATE_W4_SCREENSHOT_PRESEND_REQUESTED:I = 0x2

.field static final STATE_W4_SCREENSHOT_THEN_STOP:I = 0x4

.field static final STATE_W4_TOUCH:I = 0x6

.field static final TAG:Ljava/lang/String; = "SendUi"

.field static final TEXT_HINT_ALPHA_DURATION_MS:I = 0x1f4

.field static final TEXT_HINT_ALPHA_RANGE:[F

.field static final TEXT_HINT_ALPHA_START_DELAY_MS:I = 0x12c


# instance fields
.field final mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

.field final mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

.field final mBlackLayer:Landroid/widget/ImageView;

.field final mCallback:Lcom/android/nfc/beam/SendUi$Callback;

.field final mContext:Landroid/content/Context;

.field mDecor:Landroid/view/View;

.field final mDisplay:Landroid/view/Display;

.field final mDisplayMatrix:Landroid/graphics/Matrix;

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field final mFastSendAnimator:Landroid/animation/ObjectAnimator;

.field final mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

.field final mFrameCounterAnimator:Landroid/animation/TimeAnimator;

.field final mHardwareAccelerated:Z

.field final mHintAnimator:Landroid/animation/ObjectAnimator;

.field final mLayoutInflater:Landroid/view/LayoutInflater;

.field final mPreAnimator:Landroid/animation/ObjectAnimator;

.field mRenderedFrames:I

.field final mScaleUpAnimator:Landroid/animation/ObjectAnimator;

.field mScreenshotBitmap:Landroid/graphics/Bitmap;

.field final mScreenshotLayout:Landroid/view/View;

.field final mScreenshotView:Landroid/widget/ImageView;

.field final mSlowSendAnimator:Landroid/animation/ObjectAnimator;

.field mState:I

.field final mStatusBarManager:Landroid/app/StatusBarManager;

.field final mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

.field mSurface:Landroid/graphics/SurfaceTexture;

.field mSurfaceHeight:I

.field mSurfaceWidth:I

.field final mTextHint:Landroid/widget/TextView;

.field final mTextRetry:Landroid/widget/TextView;

.field final mTextureView:Landroid/view/TextureView;

.field mToastString:Ljava/lang/String;

.field final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 99
    new-array v0, v1, [F

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/nfc/beam/SendUi;->PRE_SCREENSHOT_SCALE:[F

    .line 102
    new-array v0, v1, [F

    fill-array-data v0, :array_34

    sput-object v0, Lcom/android/nfc/beam/SendUi;->SEND_SCREENSHOT_SCALE:[F

    .line 106
    new-array v0, v1, [F

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/android/nfc/beam/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    .line 114
    new-array v0, v1, [F

    fill-array-data v0, :array_44

    sput-object v0, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_DOWN_RANGE:[F

    .line 115
    new-array v0, v1, [F

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_UP_RANGE:[F

    .line 117
    new-array v0, v1, [F

    fill-array-data v0, :array_54

    sput-object v0, Lcom/android/nfc/beam/SendUi;->TEXT_HINT_ALPHA_RANGE:[F

    .line 93
    return-void

    .line 99
    :array_2c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 102
    :array_34
    .array-data 4
        0x3f19999a    # 0.6f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 106
    :array_3c
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 114
    :array_44
    .array-data 4
        0x3f666666    # 0.9f
        0x0
    .end array-data

    .line 115
    :array_4c
    .array-data 4
        0x0
        0x3f666666    # 0.9f
    .end array-data

    .line 117
    :array_54
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/SendUi$Callback;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/SendUi$Callback;

    .prologue
    .line 201
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    .line 203
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/beam/SendUi;->mCallback:Lcom/android/nfc/beam/SendUi$Callback;

    .line 205
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 206
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 207
    const-string/jumbo v2, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    .line 208
    const-string/jumbo v2, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    .line 213
    const-string/jumbo v2, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 212
    check-cast v2, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f0d00d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f0d00d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f0d00db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f0d00da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f0d00d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mTextureView:Landroid/view/TextureView;

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mTextureView:Landroid/view/TextureView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 228
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    .line 229
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-eqz v2, :cond_36c

    .line 230
    const/high16 v13, 0x1000000

    .line 232
    .local v13, "hwAccelerationFlags":I
    :goto_e0
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 235
    or-int/lit16 v3, v13, 0x400

    or-int/lit16 v8, v3, 0x100

    .line 232
    const/4 v3, -0x1

    .line 233
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 234
    const/16 v7, 0x7d3

    .line 238
    const/4 v9, -0x1

    .line 232
    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 243
    new-instance v2, Landroid/animation/TimeAnimator;

    invoke-direct {v2}, Landroid/animation/TimeAnimator;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 246
    const-string/jumbo v2, "scaleX"

    sget-object v3, Lcom/android/nfc/beam/SendUi;->PRE_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 247
    .local v16, "preX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v2, "scaleY"

    sget-object v3, Lcom/android/nfc/beam/SendUi;->PRE_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 248
    .local v17, "preY":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    const-string/jumbo v2, "scaleX"

    sget-object v3, Lcom/android/nfc/beam/SendUi;->SEND_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 254
    .local v14, "postX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v2, "scaleY"

    sget-object v3, Lcom/android/nfc/beam/SendUi;->SEND_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 255
    .local v15, "postY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v2, "alpha"

    .line 256
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_376

    .line 255
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 258
    .local v10, "alphaDown":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    .line 263
    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v10, v3, v4

    .line 262
    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    const-string/jumbo v2, "scaleX"

    sget-object v3, Lcom/android/nfc/beam/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    .line 269
    .local v18, "scaleUpX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v2, "scaleY"

    sget-object v3, Lcom/android/nfc/beam/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .line 271
    .local v19, "scaleUpY":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    const/4 v4, 0x1

    aput-object v19, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 276
    const-string/jumbo v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 277
    .local v12, "fadeIn":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    const-string/jumbo v2, "alpha"

    sget-object v3, Lcom/android/nfc/beam/SendUi;->TEXT_HINT_ALPHA_RANGE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 284
    .local v11, "alphaUp":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 289
    const-string/jumbo v2, "alpha"

    sget-object v3, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_DOWN_RANGE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 294
    const-string/jumbo v2, "alpha"

    sget-object v3, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_UP_RANGE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    const v3, 0x103000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 305
    new-instance v20, Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 306
    .local v20, "window":Landroid/view/Window;
    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 307
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 308
    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mDecor:Landroid/view/View;

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-eqz v2, :cond_36f

    .line 312
    new-instance v2, Lcom/android/nfc/beam/FireflyRenderer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/nfc/beam/FireflyRenderer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    .line 316
    :goto_366
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 201
    return-void

    .line 230
    .end local v10    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "alphaUp":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "fadeIn":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "hwAccelerationFlags":I
    .end local v14    # "postX":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "postY":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "preX":Landroid/animation/PropertyValuesHolder;
    .end local v17    # "preY":Landroid/animation/PropertyValuesHolder;
    .end local v18    # "scaleUpX":Landroid/animation/PropertyValuesHolder;
    .end local v19    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    .end local v20    # "window":Landroid/view/Window;
    :cond_36c
    const/4 v13, 0x0

    .restart local v13    # "hwAccelerationFlags":I
    goto/16 :goto_e0

    .line 314
    .restart local v10    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    .restart local v11    # "alphaUp":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "fadeIn":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "postX":Landroid/animation/PropertyValuesHolder;
    .restart local v15    # "postY":Landroid/animation/PropertyValuesHolder;
    .restart local v16    # "preX":Landroid/animation/PropertyValuesHolder;
    .restart local v17    # "preY":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "scaleUpX":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    .restart local v20    # "window":Landroid/view/Window;
    :cond_36f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    goto :goto_366

    .line 256
    nop

    :array_376
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static getDegreesForRotation(I)F
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 555
    packed-switch p0, :pswitch_data_e

    .line 563
    const/4 v0, 0x0

    return v0

    .line 557
    :pswitch_5
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    .line 559
    :pswitch_8
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    .line 561
    :pswitch_b
    const/high16 v0, 0x43870000    # 270.0f

    return v0

    .line 555
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method createScreenshot()Landroid/graphics/Bitmap;
    .registers 24

    .prologue
    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 608
    const v21, 0x112006a

    .line 607
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 610
    .local v7, "hasNavBar":Z
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v6, v0, [F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aput v20, v6, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aput v20, v6, v21

    .line 611
    .local v6, "dims":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getRotation()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/nfc/beam/SendUi;->getDegreesForRotation(I)F

    move-result v5

    .line 612
    .local v5, "degrees":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 613
    const v21, 0x1050017

    .line 612
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 616
    .local v19, "statusBarHeight":I
    if-eqz v7, :cond_104

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 617
    const v21, 0x1050018

    .line 616
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 618
    .local v8, "navBarHeight":I
    :goto_82
    if-eqz v7, :cond_107

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 619
    const v21, 0x1050019

    .line 618
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 621
    .local v9, "navBarHeightLandscape":I
    :goto_95
    if-eqz v7, :cond_109

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 622
    const v21, 0x105001a

    .line 621
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 624
    .local v10, "navBarWidth":I
    :goto_a8
    const/16 v20, 0x0

    cmpl-float v20, v5, v20

    if-lez v20, :cond_10b

    const/4 v15, 0x1

    .line 625
    .local v15, "requiresRotation":Z
    :goto_af
    if-eqz v15, :cond_e9

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Matrix;->reset()V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    neg-float v0, v5

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 630
    const/16 v20, 0x0

    aget v20, v6, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/16 v21, 0x0

    aput v20, v6, v21

    .line 631
    const/16 v20, 0x1

    aget v20, v6, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/16 v21, 0x1

    aput v20, v6, v21

    .line 634
    :cond_e9
    const/16 v20, 0x0

    aget v20, v6, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aget v21, v6, v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 636
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_10d

    .line 637
    const/16 v20, 0x0

    return-object v20

    .line 617
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "navBarHeight":I
    .end local v9    # "navBarHeightLandscape":I
    .end local v10    # "navBarWidth":I
    .end local v15    # "requiresRotation":Z
    :cond_104
    const/4 v8, 0x0

    .restart local v8    # "navBarHeight":I
    goto/16 :goto_82

    .line 619
    :cond_107
    const/4 v9, 0x0

    .restart local v9    # "navBarHeightLandscape":I
    goto :goto_95

    .line 622
    :cond_109
    const/4 v10, 0x0

    .restart local v10    # "navBarWidth":I
    goto :goto_a8

    .line 624
    :cond_10b
    const/4 v15, 0x0

    goto :goto_af

    .line 640
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "requiresRotation":Z
    :cond_10d
    if-eqz v15, :cond_18c

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 642
    invoke-static/range {v20 .. v22}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 644
    .local v18, "ss":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 645
    .local v4, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 646
    const/high16 v20, 0x43b40000    # 360.0f

    sub-float v20, v20, v5

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 647
    const/16 v20, 0x0

    aget v20, v6, v20

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    const/16 v21, 0x1

    aget v21, v6, v21

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 648
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 650
    move-object/from16 v3, v18

    .line 657
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v18    # "ss":Landroid/graphics/Bitmap;
    :cond_18c
    const/4 v12, 0x0

    .line 658
    .local v12, "newLeft":I
    move/from16 v13, v19

    .line 659
    .local v13, "newTop":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 660
    .local v14, "newWidth":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 661
    .local v11, "newHeight":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    .line 662
    .local v16, "smallestWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x43200000    # 160.0f

    div-float v20, v20, v21

    div-float v17, v16, v20

    .line 663
    .local v17, "smallestWidthDp":F
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1d4

    .line 665
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v20, v19

    sub-int v11, v20, v8

    .line 676
    :goto_1cd
    move/from16 v0, v19

    invoke-static {v3, v12, v0, v14, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 678
    return-object v3

    .line 669
    :cond_1d4
    const v20, 0x4415c000    # 599.0f

    cmpl-float v20, v17, v20

    if-lez v20, :cond_1e4

    .line 670
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v20, v19

    sub-int v11, v20, v9

    goto :goto_1cd

    .line 672
    :cond_1e4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v11, v20, v19

    .line 673
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v14, v20, v10

    goto :goto_1cd
.end method

.method dismiss()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 526
    iget v1, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_8

    return-void

    .line 530
    :cond_8
    iput v3, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 531
    iput-object v4, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 532
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->cancel()V

    .line 533
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 534
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 535
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 536
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 537
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 538
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 539
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 540
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 541
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 542
    iput-object v4, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 543
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    if-eqz v1, :cond_5c

    .line 544
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 545
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 546
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 548
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_5c
    iput-object v4, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    .line 525
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 795
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 796
    .local v0, "keyCode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 797
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mCallback:Lcom/android/nfc/beam/SendUi$Callback;

    invoke-interface {v1}, Lcom/android/nfc/beam/SendUi$Callback;->onCanceled()V

    .line 798
    const/4 v1, 0x1

    return v1

    .line 799
    :cond_e
    const/16 v1, 0x19

    if-eq v0, v1, :cond_16

    .line 800
    const/16 v1, 0x18

    if-ne v0, v1, :cond_1e

    .line 802
    :cond_16
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/beam/SendUi;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 804
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 830
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 820
    const/4 v0, 0x0

    return v0
.end method

.method public finish(I)V
    .registers 15
    .param p1, "finishMode"    # I

    .prologue
    .line 457
    iget v9, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    packed-switch v9, :pswitch_data_104

    .line 483
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    if-eqz v9, :cond_e

    .line 484
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    invoke-virtual {v9}, Lcom/android/nfc/beam/FireflyRenderer;->stop()V

    .line 487
    :cond_e
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    .line 491
    .local v2, "currentScale":F
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    .line 493
    .local v1, "currentAlpha":F
    if-nez p1, :cond_98

    .line 494
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    const-string/jumbo v9, "scaleX"

    .line 496
    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 495
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 497
    .local v7, "scaleUpX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v9, "scaleY"

    .line 498
    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 497
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 499
    .local v8, "scaleUpY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v9, "alpha"

    .line 500
    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v1, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 499
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 501
    .local v6, "scaleUpAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 503
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    .line 522
    .end local v6    # "scaleUpAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "scaleUpX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    :cond_7d
    :goto_7d
    const/16 v9, 0x9

    iput v9, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 456
    return-void

    .line 459
    .end local v1    # "currentAlpha":F
    .end local v2    # "currentScale":F
    :pswitch_82
    return-void

    .line 465
    :pswitch_83
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 466
    return-void

    .line 468
    :pswitch_87
    const-string/jumbo v9, "SendUi"

    const-string/jumbo v10, "Unexpected call to finish() in STATE_W4_SCREENSHOT_THEN_STOP"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void

    .line 474
    :pswitch_91
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 475
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 476
    return-void

    .line 504
    .restart local v1    # "currentAlpha":F
    .restart local v2    # "currentScale":F
    :cond_98
    const/4 v9, 0x1

    if-ne p1, v9, :cond_7d

    .line 506
    const-string/jumbo v9, "scaleX"

    .line 507
    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 506
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 508
    .local v4, "postX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v9, "scaleY"

    .line 509
    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 508
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 510
    .local v5, "postY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v9, "alpha"

    .line 511
    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v1, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 510
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 512
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 515
    const-string/jumbo v9, "alpha"

    .line 516
    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_114

    .line 515
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 517
    .local v3, "fadeIn":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 519
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 520
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_7d

    .line 457
    nop

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_82
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_87
        :pswitch_91
    .end packed-switch

    .line 516
    :array_114
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public finishAndToast(ILjava/lang/String;)V
    .registers 3
    .param p1, "finishMode"    # I
    .param p2, "toast"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p2, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 449
    return-void
.end method

.method public isSendUiInIdleState()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 914
    iget v1, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 910
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 906
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 704
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 686
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_e

    .line 689
    :cond_a
    invoke-virtual {p0}, Lcom/android/nfc/beam/SendUi;->dismiss()V

    .line 685
    :cond_d
    :goto_d
    return-void

    .line 687
    :cond_e
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eq p1, v0, :cond_a

    .line 690
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_21

    .line 693
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 694
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_d

    .line 695
    :cond_21
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_d

    .line 696
    iget-boolean v0, p0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_33

    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    .line 697
    :cond_33
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_d

    .line 698
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/beam/FireflyRenderer;->start(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_d
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 707
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 682
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 871
    return-void
.end method

.method public onContentChanged()V
    .registers 1

    .prologue
    .line 863
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .prologue
    .line 835
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 876
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 880
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/android/nfc/beam/SendUi;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_18

    .line 744
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mRenderedFrames:I

    .line 746
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 747
    iput-object p1, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 748
    iput p2, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceWidth:I

    .line 749
    iput p3, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceHeight:I

    .line 742
    :cond_18
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 762
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 754
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 766
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .registers 8
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    .line 712
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mRenderedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mRenderedFrames:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_f

    .line 716
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 710
    :goto_e
    return-void

    .line 719
    :cond_f
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 720
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_e
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 726
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    .line 727
    const/4 v0, 0x0

    return v0

    .line 729
    :cond_7
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 731
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 734
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 735
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 737
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mCallback:Lcom/android/nfc/beam/SendUi$Callback;

    invoke-interface {v0}, Lcom/android/nfc/beam/SendUi$Callback;->onSendConfirmed()V

    .line 738
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 859
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 867
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 897
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 902
    const/4 v0, 0x0

    return-object v0
.end method

.method public showPreSend(Z)V
    .registers 11
    .param p1, "promptToNfcTap"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x7

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 331
    iget v4, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    packed-switch v4, :pswitch_data_118

    .line 352
    :pswitch_9
    const-string/jumbo v2, "SendUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected showPreSend() in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    .line 333
    :pswitch_2a
    const-string/jumbo v2, "SendUi"

    const-string/jumbo v3, "Unexpected showPreSend() in STATE_IDLE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 338
    :pswitch_34
    if-eqz p1, :cond_3a

    .line 339
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 343
    :goto_39
    return-void

    .line 341
    :cond_3a
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    goto :goto_39

    .line 346
    :pswitch_3e
    const-string/jumbo v2, "SendUi"

    const-string/jumbo v3, "Unexpected showPreSend() in STATE_W4_SCREENSHOT_PRESEND_REQUESTED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 356
    :pswitch_48
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 357
    const-string/jumbo v2, "SendUi"

    const-string/jumbo v3, "Could not show Beam screen since drawOverlays permission is not granted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-nez p1, :cond_5e

    .line 359
    invoke-virtual {p0, v7}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 361
    :cond_5e
    return-void

    .line 365
    :cond_5f
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 367
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 368
    const v5, 0x1050017

    .line 367
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 370
    .local v1, "statusBarHeight":I
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 372
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 373
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 374
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 375
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 376
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7, v1, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 378
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 380
    if-eqz p1, :cond_f8

    .line 381
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :goto_b5
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 386
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 395
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    .line 397
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_128

    .line 407
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 412
    :goto_d7
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mDecor:Landroid/view/View;

    iget-object v6, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 416
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    .line 418
    iget-boolean v4, p0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-nez v4, :cond_f3

    .line 419
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 421
    :cond_f3
    if-eqz p1, :cond_115

    :goto_f5
    iput v2, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 330
    return-void

    .line 383
    .end local v0    # "orientation":I
    :cond_f8
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090064

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    .line 399
    .restart local v0    # "orientation":I
    :pswitch_10b
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_d7

    .line 403
    :pswitch_110
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_d7

    :cond_115
    move v2, v3

    .line 421
    goto :goto_f5

    .line 331
    nop

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_34
        :pswitch_3e
        :pswitch_3e
        :pswitch_9
        :pswitch_48
    .end packed-switch

    .line 397
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_110
        :pswitch_10b
    .end packed-switch
.end method

.method public showSendHint()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 769
    iget v1, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_d

    .line 770
    :cond_c
    return-void

    .line 773
    :cond_d
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 774
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 776
    :cond_1a
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 777
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 779
    :cond_27
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 780
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 781
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 782
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    const-string/jumbo v1, "alpha"

    .line 788
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const v3, 0x3f666666    # 0.9f

    aput v3, v2, v5

    .line 787
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 789
    .local v0, "alphaUp":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 790
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 768
    return-void
.end method

.method public showStartSend()V
    .registers 12

    .prologue
    const/16 v6, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 426
    iget v5, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    if-ge v5, v6, :cond_b

    return-void

    .line 428
    :cond_b
    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    .line 432
    .local v2, "currentScale":F
    const-string/jumbo v5, "scaleX"

    .line 433
    new-array v6, v10, [F

    aput v2, v6, v7

    aput v9, v6, v8

    .line 432
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 434
    .local v3, "postX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "scaleY"

    .line 435
    new-array v6, v10, [F

    aput v2, v6, v7

    aput v9, v6, v8

    .line 434
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 437
    .local v4, "postY":Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    new-array v6, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v6, v7

    aput-object v4, v6, v8

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 439
    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    .line 440
    .local v1, "currentAlpha":F
    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_68

    cmpl-float v5, v1, v9

    if-lez v5, :cond_68

    .line 441
    const-string/jumbo v5, "alpha"

    .line 442
    new-array v6, v10, [F

    aput v1, v6, v7

    aput v9, v6, v8

    .line 441
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 443
    .local v0, "alphaDown":Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v6, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 444
    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 446
    .end local v0    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    :cond_68
    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 425
    return-void
.end method

.method public takeScreenshot()V
    .registers 3

    .prologue
    .line 322
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_6

    .line 323
    return-void

    .line 325
    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 326
    new-instance v0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;-><init>(Lcom/android/nfc/beam/SendUi;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 319
    return-void
.end method
