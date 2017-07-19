.class Landroid/support/v4/provider/DocumentsContractApi19;
.super Ljava/lang/Object;
.source "DocumentsContractApi19.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRead(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    return v1

    .line 82
    :cond_9
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 83
    return v1

    .line 86
    :cond_14
    return v2
.end method

.method public static canWrite(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    if-eqz v2, :cond_a

    .line 93
    return v3

    .line 96
    :cond_a
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "flags"

    invoke-static {p0, p1, v2, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "flags":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 101
    return v3

    .line 105
    :cond_1c
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_21

    .line 106
    return v4

    .line 109
    :cond_21
    const-string/jumbo v2, "vnd.android.document/directory"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 110
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_2f

    .line 112
    return v4

    .line 113
    :cond_2f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 114
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3a

    .line 116
    return v4

    .line 119
    :cond_3a
    return v3
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    .prologue
    .line 188
    if-eqz p0, :cond_5

    .line 190
    :try_start_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 187
    :cond_5
    :goto_5
    return-void

    .line 193
    :catch_6
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_5

    .line 191
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .line 192
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 131
    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_8
    new-array v2, v1, [Ljava/lang/String;

    .line 132
    const-string/jumbo v1, "document_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 131
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_25
    .catchall {:try_start_8 .. :try_end_1b} :catchall_44

    move-result v1

    if-lez v1, :cond_23

    move v1, v8

    .line 138
    :goto_1f
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 133
    return v1

    :cond_23
    move v1, v9

    goto :goto_1f

    .line 134
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_25
    move-exception v7

    .line 135
    .local v7, "e":Ljava/lang/Exception;
    :try_start_26
    const-string/jumbo v1, "DocumentFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_44

    .line 138
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 136
    return v9

    .line 137
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_44
    move-exception v1

    .line 138
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 137
    throw v1
.end method

.method public static getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 37
    const-string/jumbo v0, "_display_name"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 41
    const-string/jumbo v0, "mime_type"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 45
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "rawType":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 47
    const/4 v1, 0x0

    return-object v1

    .line 49
    :cond_f
    return-object v0
.end method

.method public static isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 54
    const-string/jumbo v0, "vnd.android.document/directory"

    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 33
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 58
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 60
    :cond_13
    const/4 v1, 0x0

    return v1

    .line 62
    :cond_15
    const/4 v1, 0x1

    return v1
.end method

.method public static lastModified(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 67
    const-string/jumbo v0, "last_modified"

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static length(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;

    .prologue
    .line 71
    const-string/jumbo v0, "_size"

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 164
    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 173
    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_6
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_2d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_4c

    move-result v1

    if-eqz v1, :cond_24

    .line 183
    :cond_20
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 177
    return-wide p3

    .line 175
    :cond_24
    const/4 v1, 0x0

    :try_start_25
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_2d
    .catchall {:try_start_25 .. :try_end_28} :catchall_4c

    move-result-wide v2

    .line 183
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 175
    return-wide v2

    .line 179
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_2d
    move-exception v7

    .line 180
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string/jumbo v1, "DocumentFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_4c

    .line 183
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 181
    return-wide p3

    .line 182
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_4c
    move-exception v1

    .line 183
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 182
    throw v1
.end method

.method private static queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "self"    # Landroid/net/Uri;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 148
    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_6
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 149
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_2d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_4c

    move-result v1

    if-eqz v1, :cond_24

    .line 158
    :cond_20
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 152
    return-object p3

    .line 150
    :cond_24
    const/4 v1, 0x0

    :try_start_25
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_2d
    .catchall {:try_start_25 .. :try_end_28} :catchall_4c

    move-result-object v1

    .line 158
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 150
    return-object v1

    .line 154
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_2d
    move-exception v7

    .line 155
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string/jumbo v1, "DocumentFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_4c

    .line 158
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 156
    return-object p3

    .line 157
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_4c
    move-exception v1

    .line 158
    invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 157
    throw v1
.end method
