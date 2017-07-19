.class public final Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .registers 8
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 39
    const/16 v0, 0x63

    if-gt p0, v0, :cond_b

    if-eqz p2, :cond_e

    if-lt p3, v3, :cond_e

    .line 40
    :cond_b
    add-int/lit8 v0, p1, 0x3

    return v0

    .line 42
    :cond_e
    const/16 v0, 0x9

    if-gt p0, v0, :cond_16

    if-eqz p2, :cond_19

    if-lt p3, v2, :cond_19

    .line 43
    :cond_16
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 45
    :cond_19
    if-nez p2, :cond_1d

    if-lez p0, :cond_20

    .line 46
    :cond_1d
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 48
    :cond_20
    return v1
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 9
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 169
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    .line 170
    const-string/jumbo v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    return-void

    .line 173
    :cond_d
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 168
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 5
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 163
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 10
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    .prologue
    .line 156
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 158
    .local v0, "len":I
    new-instance v1, Ljava/lang/String;

    sget-object v3, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v2

    .line 155
    return-void

    .line 156
    .end local v0    # "len":I
    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 7
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 148
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 150
    .local v0, "len":I
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    monitor-exit v2

    .line 147
    return-void

    .line 148
    .end local v0    # "len":I
    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .registers 23
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    .prologue
    .line 76
    sget-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_d

    .line 77
    move/from16 v0, p2

    new-array v4, v0, [C

    sput-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 80
    :cond_d
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 82
    .local v2, "formatStr":[C
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-nez v4, :cond_25

    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, "pos":I
    add-int/lit8 p2, p2, -0x1

    .line 85
    :goto_18
    if-lez p2, :cond_1f

    .line 86
    const/16 v4, 0x20

    aput-char v4, v2, v5

    goto :goto_18

    .line 88
    :cond_1f
    const/16 v4, 0x30

    aput-char v4, v2, v5

    .line 89
    const/4 v4, 0x1

    return v4

    .line 93
    .end local v5    # "pos":I
    :cond_25
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-lez v4, :cond_b0

    .line 94
    const/16 v16, 0x2b

    .line 100
    .local v16, "prefix":C
    :goto_2d
    const-wide/16 v6, 0x3e8

    rem-long v6, p0, v6

    long-to-int v13, v6

    .line 101
    .local v13, "millis":I
    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v17, v0

    .line 102
    .local v17, "seconds":I
    const/4 v3, 0x0

    .local v3, "days":I
    const/4 v12, 0x0

    .local v12, "hours":I
    const/4 v14, 0x0

    .line 104
    .local v14, "minutes":I
    const v4, 0x15180

    move/from16 v0, v17

    if-le v0, v4, :cond_53

    .line 105
    const v4, 0x15180

    div-int v3, v17, v4

    .line 106
    const v4, 0x15180

    mul-int/2addr v4, v3

    sub-int v17, v17, v4

    .line 108
    :cond_53
    const/16 v4, 0xe10

    move/from16 v0, v17

    if-le v0, v4, :cond_61

    .line 109
    move/from16 v0, v17

    div-int/lit16 v12, v0, 0xe10

    .line 110
    mul-int/lit16 v4, v12, 0xe10

    sub-int v17, v17, v4

    .line 112
    :cond_61
    const/16 v4, 0x3c

    move/from16 v0, v17

    if-le v0, v4, :cond_6d

    .line 113
    div-int/lit8 v14, v17, 0x3c

    .line 114
    mul-int/lit8 v4, v14, 0x3c

    sub-int v17, v17, v4

    .line 117
    :cond_6d
    const/4 v5, 0x0

    .line 119
    .restart local v5    # "pos":I
    if-eqz p2, :cond_c1

    .line 120
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v15

    .line 121
    .local v15, "myLen":I
    if-lez v15, :cond_b9

    const/4 v4, 0x1

    :goto_7a
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v12, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 122
    if-lez v15, :cond_bb

    const/4 v4, 0x1

    :goto_84
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v14, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 123
    if-lez v15, :cond_bd

    const/4 v4, 0x1

    :goto_8e
    const/4 v6, 0x1

    const/4 v7, 0x2

    move/from16 v0, v17

    invoke-static {v0, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 124
    if-lez v15, :cond_bf

    const/4 v4, 0x3

    :goto_9a
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v13, v6, v7, v4}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v15, v4

    .line 125
    :goto_a3
    move/from16 v0, p2

    if-ge v15, v0, :cond_c1

    .line 126
    const/16 v4, 0x20

    aput-char v4, v2, v5

    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 128
    add-int/lit8 v15, v15, 0x1

    goto :goto_a3

    .line 96
    .end local v3    # "days":I
    .end local v5    # "pos":I
    .end local v12    # "hours":I
    .end local v13    # "millis":I
    .end local v14    # "minutes":I
    .end local v15    # "myLen":I
    .end local v16    # "prefix":C
    .end local v17    # "seconds":I
    :cond_b0
    const/16 v16, 0x2d

    .line 97
    .restart local v16    # "prefix":C
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    goto/16 :goto_2d

    .line 121
    .restart local v3    # "days":I
    .restart local v5    # "pos":I
    .restart local v12    # "hours":I
    .restart local v13    # "millis":I
    .restart local v14    # "minutes":I
    .restart local v15    # "myLen":I
    .restart local v17    # "seconds":I
    :cond_b9
    const/4 v4, 0x0

    goto :goto_7a

    .line 122
    :cond_bb
    const/4 v4, 0x0

    goto :goto_84

    .line 123
    :cond_bd
    const/4 v4, 0x0

    goto :goto_8e

    .line 124
    :cond_bf
    const/4 v4, 0x0

    goto :goto_9a

    .line 132
    .end local v15    # "myLen":I
    :cond_c1
    aput-char v16, v2, v5

    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 135
    move/from16 v18, v5

    .line 136
    .local v18, "start":I
    if-eqz p2, :cond_11f

    const/16 v19, 0x1

    .line 137
    .local v19, "zeropad":Z
    :goto_cb
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 138
    move/from16 v0, v18

    if-eq v5, v0, :cond_122

    const/4 v10, 0x1

    :goto_d8
    if-eqz v19, :cond_124

    const/4 v11, 0x2

    :goto_db
    const/16 v8, 0x68

    move-object v6, v2

    move v7, v12

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 139
    move/from16 v0, v18

    if-eq v5, v0, :cond_126

    const/4 v10, 0x1

    :goto_e9
    if-eqz v19, :cond_128

    const/4 v11, 0x2

    :goto_ec
    const/16 v8, 0x6d

    move-object v6, v2

    move v7, v14

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 140
    move/from16 v0, v18

    if-eq v5, v0, :cond_12a

    const/4 v10, 0x1

    :goto_fa
    if-eqz v19, :cond_12c

    const/4 v11, 0x2

    :goto_fd
    const/16 v8, 0x73

    move-object v6, v2

    move/from16 v7, v17

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 141
    if-eqz v19, :cond_12e

    move/from16 v0, v18

    if-eq v5, v0, :cond_12e

    const/4 v11, 0x3

    :goto_10e
    const/16 v8, 0x6d

    const/4 v10, 0x1

    move-object v6, v2

    move v7, v13

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    .line 142
    const/16 v4, 0x73

    aput-char v4, v2, v5

    .line 143
    add-int/lit8 v4, v5, 0x1

    return v4

    .line 136
    .end local v19    # "zeropad":Z
    :cond_11f
    const/16 v19, 0x0

    .restart local v19    # "zeropad":Z
    goto :goto_cb

    .line 138
    :cond_122
    const/4 v10, 0x0

    goto :goto_d8

    :cond_124
    const/4 v11, 0x0

    goto :goto_db

    .line 139
    :cond_126
    const/4 v10, 0x0

    goto :goto_e9

    :cond_128
    const/4 v11, 0x0

    goto :goto_ec

    .line 140
    :cond_12a
    const/4 v10, 0x0

    goto :goto_fa

    :cond_12c
    const/4 v11, 0x0

    goto :goto_fd

    .line 141
    :cond_12e
    const/4 v11, 0x0

    goto :goto_10e
.end method

.method private static printField([CICIZI)I
    .registers 9
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    .prologue
    .line 53
    if-nez p4, :cond_4

    if-lez p1, :cond_32

    .line 54
    :cond_4
    move v1, p3

    .line 55
    .local v1, "startPos":I
    if-eqz p4, :cond_33

    const/4 v2, 0x3

    if-lt p5, v2, :cond_33

    .line 56
    :goto_a
    div-int/lit8 v0, p1, 0x64

    .line 57
    .local v0, "dig":I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 58
    add-int/lit8 p3, p3, 0x1

    .line 59
    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    .line 61
    .end local v0    # "dig":I
    :cond_16
    if-eqz p4, :cond_38

    const/4 v2, 0x2

    if-lt p5, v2, :cond_38

    .line 62
    :cond_1b
    :goto_1b
    div-int/lit8 v0, p1, 0xa

    .line 63
    .restart local v0    # "dig":I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 64
    add-int/lit8 p3, p3, 0x1

    .line 65
    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr p1, v2

    .line 67
    .end local v0    # "dig":I
    :cond_27
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 68
    add-int/lit8 p3, p3, 0x1

    .line 69
    aput-char p2, p0, p3

    .line 70
    add-int/lit8 p3, p3, 0x1

    .line 72
    .end local v1    # "startPos":I
    :cond_32
    return p3

    .line 55
    .restart local v1    # "startPos":I
    :cond_33
    const/16 v2, 0x63

    if-le p1, v2, :cond_16

    goto :goto_a

    .line 61
    :cond_38
    const/16 v2, 0x9

    if-gt p1, v2, :cond_1b

    if-eq v1, p3, :cond_27

    goto :goto_1b
.end method
