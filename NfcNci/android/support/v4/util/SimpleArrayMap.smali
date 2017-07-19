.class public Landroid/support/v4/util/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 208
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 210
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 208
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    if-nez p1, :cond_11

    .line 219
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 220
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 224
    :goto_e
    iput v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 217
    return-void

    .line 222
    :cond_11
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    goto :goto_e
.end method

.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 2
    .param p1, "map"    # Landroid/support/v4/util/SimpleArrayMap;

    .prologue
    .line 231
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 232
    if-eqz p1, :cond_8

    .line 233
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 230
    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 6
    .param p1, "size"    # I

    .prologue
    .line 138
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3c

    .line 139
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 140
    :try_start_7
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_2d

    .line 141
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 142
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 143
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 144
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 145
    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 146
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_39

    monitor-exit v2

    .line 149
    return-void

    .end local v0    # "array":[Ljava/lang/Object;
    :cond_2d
    monitor-exit v2

    .line 168
    :cond_2e
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 169
    shl-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 137
    return-void

    .line 139
    :catchall_39
    move-exception v1

    monitor-exit v2

    throw v1

    .line 152
    :cond_3c
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2e

    .line 153
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 154
    :try_start_42
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_2d

    .line 155
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 156
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 157
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 158
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 159
    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 160
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I
    :try_end_66
    .catchall {:try_start_42 .. :try_end_66} :catchall_68

    monitor-exit v2

    .line 163
    return-void

    .line 153
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_68
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 8
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 173
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_30

    .line 174
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 175
    :try_start_b
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_2b

    .line 176
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    .line 177
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 178
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1b
    if-lt v0, v4, :cond_23

    .line 179
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 178
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 181
    :cond_23
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 182
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_2d

    .end local v0    # "i":I
    :cond_2b
    :goto_2b
    monitor-exit v2

    .line 172
    :cond_2c
    return-void

    .line 174
    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 187
    :cond_30
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2c

    .line 188
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 189
    :try_start_37
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    if-ge v1, v3, :cond_2b

    .line 190
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    .line 191
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 192
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_47
    if-lt v0, v4, :cond_4f

    .line 193
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    .line 195
    :cond_4f
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 196
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I
    :try_end_57
    .catchall {:try_start_37 .. :try_end_57} :catchall_58

    goto :goto_2b

    .line 188
    .end local v0    # "i":I
    :catchall_58
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 241
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eqz v0, :cond_18

    .line 242
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 243
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 244
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 245
    iput v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 240
    :cond_18
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public ensureCapacity(I)V
    .registers 7
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 254
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v2, v2

    if-ge v2, p1, :cond_26

    .line 255
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 256
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 257
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 258
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v2, :cond_21

    .line 259
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :cond_21
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v1, v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 253
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_26
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 532
    if-ne p0, p1, :cond_5

    .line 533
    return v11

    .line 535
    :cond_5
    instance-of v8, p1, Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v8, :cond_42

    move-object v4, p1

    .line 536
    check-cast v4, Landroid/support/v4/util/SimpleArrayMap;

    .line 537
    .local v4, "map":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<**>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v8

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v9

    if-eq v8, v9, :cond_17

    .line 538
    return v10

    .line 542
    :cond_17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    :try_start_18
    iget v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v0, v8, :cond_41

    .line 543
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 544
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 545
    .local v6, "mine":Ljava/lang/Object;, "TV;"
    invoke-virtual {v4, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 546
    .local v7, "theirs":Ljava/lang/Object;
    if-nez v6, :cond_36

    .line 547
    if-nez v7, :cond_35

    invoke-virtual {v4, v3}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 542
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 548
    :cond_35
    return v10

    .line 550
    :cond_36
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_39} :catch_3f
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_39} :catch_3d

    move-result v8

    if-nez v8, :cond_32

    .line 551
    return v10

    .line 556
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "mine":Ljava/lang/Object;, "TV;"
    .end local v7    # "theirs":Ljava/lang/Object;
    :catch_3d
    move-exception v1

    .line 557
    .local v1, "ignored":Ljava/lang/ClassCastException;
    return v10

    .line 554
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    :catch_3f
    move-exception v2

    .line 555
    .local v2, "ignored":Ljava/lang/NullPointerException;
    return v10

    .line 559
    .end local v2    # "ignored":Ljava/lang/NullPointerException;
    :cond_41
    return v11

    .line 560
    .end local v0    # "i":I
    .end local v4    # "map":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<**>;"
    :cond_42
    instance-of v8, p1, Ljava/util/Map;

    if-eqz v8, :cond_7f

    move-object v5, p1

    .line 561
    check-cast v5, Ljava/util/Map;

    .line 562
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v8

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    if-eq v8, v9, :cond_54

    .line 563
    return v10

    .line 567
    :cond_54
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_55
    :try_start_55
    iget v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v0, v8, :cond_7e

    .line 568
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 569
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 570
    .restart local v6    # "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 571
    .restart local v7    # "theirs":Ljava/lang/Object;
    if-nez v6, :cond_73

    .line 572
    if-nez v7, :cond_72

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 567
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 573
    :cond_72
    return v10

    .line 575
    :cond_73
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_76} :catch_7c
    .catch Ljava/lang/ClassCastException; {:try_start_55 .. :try_end_76} :catch_7a

    move-result v8

    if-nez v8, :cond_6f

    .line 576
    return v10

    .line 581
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "mine":Ljava/lang/Object;, "TV;"
    .end local v7    # "theirs":Ljava/lang/Object;
    :catch_7a
    move-exception v1

    .line 582
    .restart local v1    # "ignored":Ljava/lang/ClassCastException;
    return v10

    .line 579
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    :catch_7c
    move-exception v2

    .line 580
    .restart local v2    # "ignored":Ljava/lang/NullPointerException;
    return v10

    .line 584
    .end local v2    # "ignored":Ljava/lang/NullPointerException;
    :cond_7e
    return v11

    .line 586
    .end local v0    # "i":I
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_7f
    return v10
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 324
    .local v0, "index":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 10

    .prologue
    .line 594
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 595
    .local v1, "hashes":[I
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 596
    .local v0, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 597
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x1

    .local v5, "v":I
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .local v4, "s":I
    :goto_9
    if-ge v2, v4, :cond_1e

    .line 598
    aget-object v6, v0, v5

    .line 599
    .local v6, "value":Ljava/lang/Object;
    aget v8, v1, v2

    if-nez v6, :cond_19

    const/4 v7, 0x0

    :goto_12
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 597
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_9

    .line 599
    :cond_19
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_12

    .line 601
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1e
    return v3
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 62
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 65
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 66
    const/4 v4, -0x1

    return v4

    .line 69
    :cond_6
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v4, v0, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 72
    .local v3, "index":I
    if-gez v3, :cond_f

    .line 73
    return v3

    .line 77
    :cond_f
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 78
    return v3

    .line 83
    :cond_1c
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1e
    if-ge v1, v0, :cond_36

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_36

    .line 84
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    return v1

    .line 83
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 88
    :cond_36
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_38
    if-ltz v2, :cond_50

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_50

    .line 89
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    return v2

    .line 88
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 96
    :cond_50
    not-int v4, v1

    return v4
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 283
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6
.end method

.method indexOfNull()I
    .registers 7

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 100
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 103
    .local v0, "N":I
    if-nez v0, :cond_7

    .line 104
    const/4 v4, -0x1

    return v4

    .line 107
    :cond_7
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v4, v0, v5}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 110
    .local v3, "index":I
    if-gez v3, :cond_10

    .line 111
    return v3

    .line 115
    :cond_10
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_19

    .line 116
    return v3

    .line 121
    :cond_19
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1b
    if-ge v1, v0, :cond_2f

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_2f

    .line 122
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_2c

    return v1

    .line 121
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 126
    :cond_2f
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_31
    if-ltz v2, :cond_45

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_45

    .line 127
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_42

    return v2

    .line 126
    :cond_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    .line 134
    :cond_45
    not-int v4, v1

    return v4
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 287
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v3, 0x2

    .line 288
    .local v0, "N":I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 289
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_15

    .line 290
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_26

    .line 291
    aget-object v3, v1, v2

    if-nez v3, :cond_12

    .line 292
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 290
    :cond_12
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 296
    .end local v2    # "i":I
    :cond_15
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_16
    if-ge v2, v0, :cond_26

    .line 297
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 298
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 296
    :cond_23
    add-int/lit8 v2, v2, 0x2

    goto :goto_16

    .line 302
    :cond_26
    const/4 v3, -0x1

    return v3
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 362
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-gtz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 376
    if-nez p1, :cond_18

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "hash":I
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v1

    .line 383
    .local v1, "index":I
    :goto_9
    if-ltz v1, :cond_21

    .line 384
    shl-int/lit8 v6, v1, 0x1

    add-int/lit8 v1, v6, 0x1

    .line 385
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v6, v1

    .line 386
    .local v5, "old":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v6, v1

    .line 387
    return-object v5

    .line 380
    .end local v0    # "hash":I
    .end local v1    # "index":I
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 381
    .restart local v0    # "hash":I
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_9

    .line 390
    :cond_21
    not-int v1, v1

    .line 391
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v7, v7

    if-lt v6, v7, :cond_54

    .line 392
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_8f

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v6, v7

    .line 397
    .local v2, "n":I
    :goto_37
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 398
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 399
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 401
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v6, v6

    if-lez v6, :cond_4f

    .line 403
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v7, v4

    invoke-static {v4, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_4f
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v4, v3, v6}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 410
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_54
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v1, v6, :cond_76

    .line 413
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v9, v1

    invoke-static {v6, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    shl-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    :cond_76
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aput v0, v6, v1

    .line 418
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object p1, v6, v7

    .line 419
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object p2, v6, v7

    .line 420
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 421
    return-object v11

    .line 393
    :cond_8f
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v7, 0x4

    if-lt v6, v7, :cond_97

    const/16 v2, 0x8

    .restart local v2    # "n":I
    goto :goto_37

    .end local v2    # "n":I
    :cond_97
    const/4 v2, 0x4

    .restart local v2    # "n":I
    goto :goto_37
.end method

.method public putAll(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "array":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<+TK;+TV;>;"
    const/4 v5, 0x0

    .line 429
    iget v0, p1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 430
    .local v0, "N":I
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->ensureCapacity(I)V

    .line 431
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-nez v2, :cond_22

    .line 432
    if-lez v0, :cond_21

    .line 433
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 428
    :cond_21
    return-void

    .line 438
    :cond_22
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, v0, :cond_21

    .line 439
    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 452
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 453
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 456
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 12
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v9, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 465
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v4, v5

    .line 466
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_25

    .line 469
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v4, v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 470
    sget-object v4, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 471
    sget-object v4, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 472
    iput v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 512
    :cond_24
    :goto_24
    return-object v3

    .line 474
    :cond_25
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v4, v4

    if-le v4, v6, :cond_7c

    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_7c

    .line 478
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-le v4, v6, :cond_79

    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    .line 482
    .local v0, "n":I
    :goto_3f
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 483
    .local v2, "ohashes":[I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 484
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 486
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 487
    if-lez p1, :cond_5a

    .line 489
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    :cond_5a
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge p1, v4, :cond_24

    .line 495
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    add-int/lit8 v4, p1, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    .line 497
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    .line 496
    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24

    .line 478
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_79
    const/16 v0, 0x8

    .restart local v0    # "n":I
    goto :goto_3f

    .line 500
    .end local v0    # "n":I
    :cond_7c
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 501
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge p1, v4, :cond_a4

    .line 504
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    .line 506
    iget v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v8, p1

    shl-int/lit8 v8, v8, 0x1

    .line 505
    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    :cond_a4
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    .line 509
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    goto/16 :goto_24
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, v1, 0x1

    .line 353
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 354
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 355
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 519
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 613
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 614
    const-string/jumbo v4, "{}"

    return-object v4

    .line 617
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 618
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v1, v4, :cond_4d

    .line 620
    if-lez v1, :cond_25

    .line 621
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_25
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 624
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_3f

    .line 625
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 629
    :goto_2e
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 631
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_46

    .line 632
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 619
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 627
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3f
    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 634
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_46
    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 637
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4d
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
