.class Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;
.super Ljava/lang/Thread;
.source "FireflyRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/FireflyRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FireflyRenderThread"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field volatile mFinished:Z

.field mGL:Ljavax/microedition/khronos/opengles/GL10;

.field mTextureId:I

.field final synthetic this$0:Lcom/android/nfc/beam/FireflyRenderer;


# direct methods
.method private constructor <init>(Lcom/android/nfc/beam/FireflyRenderer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/beam/FireflyRenderer;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/beam/FireflyRenderer;Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/beam/FireflyRenderer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;-><init>(Lcom/android/nfc/beam/FireflyRenderer;)V

    return-void
.end method

.method private checkCurrent()V
    .registers 6

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/khronos/egl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 282
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/khronos/egl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 280
    :cond_1e
    return-void

    .line 283
    :cond_1f
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 354
    new-array v5, v4, [I

    .line 355
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 356
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/android/nfc/beam/FireflyRenderer;->sEglConfig:[I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_36
    aget v0, v5, v6

    if-lez v0, :cond_3d

    .line 360
    aget-object v0, v3, v6

    return-object v0

    .line 362
    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method private finishGL()V
    .registers 6

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_9

    .line 338
    :cond_8
    return-void

    .line 341
    :cond_9
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 342
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 341
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 344
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_23

    .line 345
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 348
    :cond_23
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_30

    .line 349
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 335
    :cond_30
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 245
    return-void
.end method

.method initGL()Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 292
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 294
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 295
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_3f

    .line 296
    const-string/jumbo v2, "NfcFireflyThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglGetDisplay failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 297
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return v7

    .line 301
    :cond_3f
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 302
    .local v1, "version":[I
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_71

    .line 303
    const-string/jumbo v2, "NfcFireflyThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglInitialize failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return v7

    .line 308
    :cond_71
    invoke-direct {p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 309
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_85

    .line 310
    const-string/jumbo v2, "NfcFireflyThread"

    const-string/jumbo v3, "eglConfig not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v7

    .line 314
    :cond_85
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 316
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v5, v5, Lcom/android/nfc/beam/FireflyRenderer;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 318
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_ad

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_d2

    .line 319
    :cond_ad
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 320
    .local v0, "error":I
    const-string/jumbo v2, "NfcFireflyThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createWindowSurface returned error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return v7

    .line 324
    .end local v0    # "error":I
    :cond_d2
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_107

    .line 325
    const-string/jumbo v2, "NfcFireflyThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglMakeCurrent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 326
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return v7

    .line 330
    :cond_107
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 332
    const/4 v2, 0x1

    return v2
.end method

.method loadStarTexture()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    new-array v3, v6, [I

    .line 251
    .local v3, "textureIds":[I
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4, v6, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 252
    aget v4, v3, v5

    iput v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mTextureId:I

    .line 254
    const/4 v2, 0x0

    .line 257
    .local v2, "in":Ljava/io/InputStream;
    :try_start_e
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v4, v4, Lcom/android/nfc/beam/FireflyRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "star.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 259
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mTextureId:I

    const/16 v6, 0xde1

    invoke-interface {v4, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 262
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0xde1

    const/16 v6, 0x2801

    const/16 v7, 0x2601

    invoke-interface {v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 263
    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0xde1

    const/16 v6, 0x2800

    const/16 v7, 0x2601

    invoke-interface {v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 265
    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 267
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_4a} :catch_52
    .catchall {:try_start_e .. :try_end_4a} :catchall_64

    .line 272
    if-eqz v2, :cond_4f

    .line 274
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 249
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_4f
    :goto_4f
    return-void

    .line 275
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_50
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_4f

    .line 269
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_52
    move-exception v1

    .line 270
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_53
    const-string/jumbo v4, "NfcFireflyThread"

    const-string/jumbo v5, "IOException opening assets."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_64

    .line 272
    if-eqz v2, :cond_4f

    .line 274
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_4f

    .line 275
    :catch_62
    move-exception v1

    goto :goto_4f

    .line 271
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_64
    move-exception v4

    .line 272
    if-eqz v2, :cond_6a

    .line 274
    :try_start_67
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 271
    :cond_6a
    :goto_6a
    throw v4

    .line 275
    :catch_6b
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6a
.end method

.method public run()V
    .registers 19

    .prologue
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->initGL()Z

    move-result v2

    if-nez v2, :cond_10

    .line 174
    const-string/jumbo v2, "NfcFireflyThread"

    const-string/jumbo v3, "Failed to initialize OpenGL."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 177
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->loadStarTexture()V

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v3, v3, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v4, v4, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1701

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v3, v3, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v4, v4, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v5, v5, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v6, v6, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1700

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xc50

    const/16 v4, 0x1102

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v3, v2, Lcom/android/nfc/beam/FireflyRenderer;->mFireflies:[Lcom/android/nfc/beam/FireflyRenderer$Firefly;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_98
    if-ge v2, v4, :cond_a2

    aget-object v12, v3, v2

    .line 197
    .local v12, "firefly":Lcom/android/nfc/beam/FireflyRenderer$Firefly;
    invoke-virtual {v12}, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->reset()V

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 200
    .end local v12    # "firefly":Lcom/android/nfc/beam/FireflyRenderer$Firefly;
    :cond_a2
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a3
    const/4 v2, 0x3

    if-ge v13, v2, :cond_d2

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v2

    if-nez v2, :cond_cf

    .line 205
    const-string/jumbo v2, "NfcFireflyThread"

    const-string/jumbo v3, "Could not swap buffers"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 200
    :cond_cf
    add-int/lit8 v13, v13, 0x1

    goto :goto_a3

    .line 210
    :cond_d2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 212
    .local v14, "startTime":J
    :goto_d6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    if-nez v2, :cond_167

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v14

    .line 214
    .local v16, "timeElapsedMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->checkCurrent()V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xbe2

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x302

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v3, v2, Lcom/android/nfc/beam/FireflyRenderer;->mFireflies:[Lcom/android/nfc/beam/FireflyRenderer$Firefly;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_11d
    if-ge v2, v4, :cond_130

    aget-object v12, v3, v2

    .line 226
    .restart local v12    # "firefly":Lcom/android/nfc/beam/FireflyRenderer$Firefly;
    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->updatePositionAndScale(J)V

    .line 227
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v12, v5}, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_11d

    .line 230
    .end local v12    # "firefly":Lcom/android/nfc/beam/FireflyRenderer$Firefly;
    :cond_130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v2

    if-nez v2, :cond_150

    .line 231
    const-string/jumbo v2, "NfcFireflyThread"

    const-string/jumbo v3, "Could not swap buffers"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 235
    :cond_150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v14

    .line 237
    .local v10, "elapsed":J
    const-wide/16 v2, 0x1e

    sub-long/2addr v2, v10

    const-wide/16 v4, 0x0

    :try_start_15b
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_162
    .catch Ljava/lang/InterruptedException; {:try_start_15b .. :try_end_162} :catch_164

    goto/16 :goto_d6

    .line 238
    :catch_164
    move-exception v9

    .local v9, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_d6

    .line 242
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "elapsed":J
    .end local v16    # "timeElapsedMs":J
    :cond_167
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->finishGL()V

    .line 172
    return-void
.end method
