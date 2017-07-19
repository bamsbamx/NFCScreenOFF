.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field private static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final DIR_FILES:Ljava/lang/String; = "files"

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final TAG:Ljava/lang/String; = "ContextCompat"

.field private static final sLock:Ljava/lang/Object;

.field private static sTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    .line 327
    move-object v0, p0

    .line 328
    .local v0, "cur":Ljava/io/File;
    const/4 v3, 0x0

    array-length v4, p1

    move-object v1, v0

    .end local v0    # "cur":Ljava/io/File;
    .local v1, "cur":Ljava/io/File;
    :goto_4
    if-ge v3, v4, :cond_1b

    aget-object v2, p1, v3

    .line 329
    .local v2, "segment":Ljava/lang/String;
    if-nez v1, :cond_13

    .line 330
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    :goto_f
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    .end local v0    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_4

    .line 331
    :cond_13
    if-eqz v2, :cond_1c

    .line 332
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_f

    .line 335
    .end local v0    # "cur":Ljava/io/File;
    .end local v2    # "segment":Ljava/lang/String;
    .restart local v1    # "cur":Ljava/io/File;
    :cond_1b
    return-object v1

    .restart local v2    # "segment":Ljava/lang/String;
    :cond_1c
    move-object v0, v1

    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_f
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 428
    if-nez p1, :cond_b

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static createDeviceEncryptedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 545
    invoke-static {p0}, Landroid/support/v4/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 532
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 533
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi24;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 535
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static declared-synchronized createFilesDir(Ljava/io/File;)Ljava/io/File;
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const-class v1, Landroid/support/v4/content/ContextCompat;

    monitor-enter v1

    .line 487
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_38

    .line 488
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_38

    .line 489
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_3a

    move-result v0

    if-eqz v0, :cond_17

    monitor-exit v1

    .line 491
    return-object p0

    .line 493
    :cond_17
    :try_start_17
    const-string/jumbo v0, "ContextCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create files subdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_3a

    .line 494
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :cond_38
    monitor-exit v1

    .line 497
    return-object p0

    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 477
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 478
    .local v1, "version":I
    const/16 v2, 0x15

    if-lt v1, v2, :cond_b

    .line 479
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi21;->getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    return-object v2

    .line 481
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 482
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v4, "code_cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method public static final getColor(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 410
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 411
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->getColor(Landroid/content/Context;I)I

    move-result v1

    return v1

    .line 413
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static final getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 387
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 388
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 389
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 391
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 140
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi24;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 142
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 143
    .local v0, "dataDir":Ljava/lang/String;
    if-eqz v0, :cond_19

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_19
    return-object v1
.end method

.method public static final getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 350
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 351
    .local v1, "version":I
    const/16 v2, 0x15

    if-lt v1, v2, :cond_b

    .line 352
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi21;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 353
    :cond_b
    const/16 v2, 0x10

    if-lt v1, v2, :cond_18

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 361
    :cond_18
    sget-object v3, Landroid/support/v4/content/ContextCompat;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 362
    :try_start_1b
    sget-object v2, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    if-nez v2, :cond_26

    .line 363
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    sput-object v2, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    .line 365
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 366
    sget-object v2, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    iget v0, v2, Landroid/util/TypedValue;->resourceId:I
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_3e

    .local v0, "resolvedId":I
    monitor-exit v3

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 361
    .end local v0    # "resolvedId":I
    :catchall_3e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 311
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 312
    .local v1, "version":I
    const/16 v2, 0x13

    if-lt v1, v2, :cond_d

    .line 313
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    return-object v2

    .line 316
    :cond_d
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1a

    .line 317
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 322
    .local v0, "single":Ljava/io/File;
    :goto_15
    new-array v2, v7, [Ljava/io/File;

    aput-object v0, v2, v6

    return-object v2

    .line 319
    .end local v0    # "single":Ljava/io/File;
    :cond_1a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Android"

    aput-object v4, v3, v6

    const-string/jumbo v4, "data"

    aput-object v4, v3, v7

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, "cache"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 319
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "single":Ljava/io/File;
    goto :goto_15
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 251
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 252
    .local v1, "version":I
    const/16 v2, 0x13

    if-lt v1, v2, :cond_d

    .line 253
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    return-object v2

    .line 256
    :cond_d
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1a

    .line 257
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 262
    .local v0, "single":Ljava/io/File;
    :goto_15
    new-array v2, v7, [Ljava/io/File;

    aput-object v0, v2, v6

    return-object v2

    .line 259
    .end local v0    # "single":Ljava/io/File;
    :cond_1a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Android"

    aput-object v4, v3, v6

    const-string/jumbo v4, "data"

    aput-object v4, v3, v7

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, "files"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/4 v4, 0x4

    aput-object p1, v3, v4

    .line 259
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "single":Ljava/io/File;
    goto :goto_15
.end method

.method public static final getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 452
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 453
    .local v1, "version":I
    const/16 v2, 0x15

    if-lt v1, v2, :cond_b

    .line 454
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi21;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    return-object v2

    .line 456
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 457
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v4, "no_backup"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 191
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 192
    .local v1, "version":I
    const/16 v2, 0x13

    if-lt v1, v2, :cond_d

    .line 193
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    return-object v2

    .line 196
    :cond_d
    const/16 v2, 0xb

    if-lt v1, v2, :cond_1a

    .line 197
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatHoneycomb;->getObbDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 202
    .local v0, "single":Ljava/io/File;
    :goto_15
    new-array v2, v7, [Ljava/io/File;

    aput-object v0, v2, v6

    return-object v2

    .line 199
    .end local v0    # "single":Ljava/io/File;
    :cond_1a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Android"

    aput-object v4, v3, v6

    const-string/jumbo v4, "obb"

    aput-object v4, v3, v7

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 199
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "single":Ljava/io/File;
    goto :goto_15
.end method

.method public static isDeviceEncryptedStorage(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 568
    invoke-static {p0}, Landroid/support/v4/content/ContextCompat;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 555
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 556
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi24;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 558
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 113
    .local v0, "version":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 114
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 115
    return v2

    .line 116
    :cond_b
    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 117
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V

    .line 118
    return v2

    .line 120
    :cond_13
    const/4 v1, 0x0

    return v1
.end method
