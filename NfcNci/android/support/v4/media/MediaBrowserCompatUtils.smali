.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 26
    if-ne p0, p1, :cond_6

    .line 27
    return v0

    .line 28
    :cond_6
    if-nez p0, :cond_1f

    .line 29
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1d

    .line 30
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1b

    .line 29
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 30
    goto :goto_1a

    :cond_1d
    move v0, v1

    .line 29
    goto :goto_1a

    .line 31
    :cond_1f
    if-nez p1, :cond_35

    .line 32
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_34

    .line 33
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_34

    move v1, v0

    .line 32
    :cond_34
    return v1

    .line 35
    :cond_35
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 36
    const-string/jumbo v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 35
    if-ne v2, v3, :cond_56

    .line 37
    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 38
    const-string/jumbo v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 37
    if-ne v2, v3, :cond_56

    move v1, v0

    .line 35
    :cond_56
    return v1
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 13
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 43
    if-nez p0, :cond_23

    const/4 v2, -0x1

    .line 44
    .local v2, "page1":I
    :goto_5
    if-nez p1, :cond_2b

    const/4 v3, -0x1

    .line 45
    .local v3, "page2":I
    :goto_8
    if-nez p0, :cond_33

    .line 46
    const/4 v4, -0x1

    .line 47
    .local v4, "pageSize1":I
    :goto_b
    if-nez p1, :cond_3b

    .line 48
    const/4 v5, -0x1

    .line 51
    .local v5, "pageSize2":I
    :goto_e
    if-eq v2, v9, :cond_12

    if-ne v4, v9, :cond_43

    .line 52
    :cond_12
    const/4 v6, 0x0

    .line 53
    .local v6, "startIndex1":I
    const v0, 0x7fffffff

    .line 59
    .local v0, "endIndex1":I
    :goto_16
    if-eq v3, v9, :cond_1a

    if-ne v5, v9, :cond_4a

    .line 60
    :cond_1a
    const/4 v7, 0x0

    .line 61
    .local v7, "startIndex2":I
    const v1, 0x7fffffff

    .line 67
    .local v1, "endIndex2":I
    :goto_1e
    if-gt v6, v7, :cond_51

    if-gt v7, v0, :cond_51

    .line 68
    return v10

    .line 43
    .end local v0    # "endIndex1":I
    .end local v1    # "endIndex2":I
    .end local v2    # "page1":I
    .end local v3    # "page2":I
    .end local v4    # "pageSize1":I
    .end local v5    # "pageSize2":I
    .end local v6    # "startIndex1":I
    .end local v7    # "startIndex2":I
    :cond_23
    const-string/jumbo v8, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "page1":I
    goto :goto_5

    .line 44
    :cond_2b
    const-string/jumbo v8, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .restart local v3    # "page2":I
    goto :goto_8

    .line 46
    :cond_33
    const-string/jumbo v8, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "pageSize1":I
    goto :goto_b

    .line 48
    :cond_3b
    const-string/jumbo v8, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .restart local v5    # "pageSize2":I
    goto :goto_e

    .line 55
    :cond_43
    mul-int v6, v4, v2

    .line 56
    .restart local v6    # "startIndex1":I
    add-int v8, v6, v4

    add-int/lit8 v0, v8, -0x1

    .restart local v0    # "endIndex1":I
    goto :goto_16

    .line 63
    :cond_4a
    mul-int v7, v5, v3

    .line 64
    .restart local v7    # "startIndex2":I
    add-int v8, v7, v5

    add-int/lit8 v1, v8, -0x1

    .restart local v1    # "endIndex2":I
    goto :goto_1e

    .line 69
    :cond_51
    if-gt v6, v1, :cond_56

    if-gt v1, v0, :cond_56

    .line 70
    return v10

    .line 72
    :cond_56
    const/4 v8, 0x0

    return v8
.end method