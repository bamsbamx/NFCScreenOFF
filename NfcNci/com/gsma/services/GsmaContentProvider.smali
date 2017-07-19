.class public Lcom/gsma/services/GsmaContentProvider;
.super Landroid/content/ContentProvider;
.source "GsmaContentProvider.java"


# static fields
.field private static final ADMIN_PERM:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGsmaSQLiteHelper:Lcom/gsma/services/GsmaSQLiteHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private verifyCallerUid(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 105
    if-nez p1, :cond_4

    return v4

    .line 106
    :cond_4
    iget-object v3, p0, Lcom/gsma/services/GsmaContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 107
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "pkgs":[Ljava/lang/String;
    array-length v5, v0

    move v3, v4

    :goto_14
    if-ge v3, v5, :cond_23

    aget-object v2, v0, v3

    .line 109
    .local v2, "uidPkg":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 110
    const/4 v3, 0x1

    return v3

    .line 108
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 113
    .end local v2    # "uidPkg":Ljava/lang/String;
    :cond_23
    return v4
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/gsma/services/GsmaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/GsmaContentProvider;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/gsma/services/GsmaSQLiteHelper;

    iget-object v1, p0, Lcom/gsma/services/GsmaContentProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gsma/services/GsmaSQLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gsma/services/GsmaContentProvider;->mGsmaSQLiteHelper:Lcom/gsma/services/GsmaSQLiteHelper;

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionAgrs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 51
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "packagename"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, "packagename":Ljava/lang/String;
    const-string/jumbo v1, "servicename"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 53
    .local v10, "servicename":Ljava/lang/String;
    if-nez v9, :cond_1e

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "packagename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_1e
    if-nez v10, :cond_29

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "servicename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_29
    const-string/jumbo v1, "userid"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 62
    .local v11, "userid":I
    iget-object v1, p0, Lcom/gsma/services/GsmaContentProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_54

    .line 63
    invoke-direct {p0, v9}, Lcom/gsma/services/GsmaContentProvider;->verifyCallerUid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v1, v11, :cond_54

    .line 64
    :cond_4b
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Not allowed to query that packagename."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_54
    const-string/jumbo v1, "services"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v1, "packagename="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 71
    const-string/jumbo v1, "servicename="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 74
    const-string/jumbo v1, "userid="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/gsma/services/GsmaContentProvider;->mGsmaSQLiteHelper:Lcom/gsma/services/GsmaSQLiteHelper;

    invoke-virtual {v1}, Lcom/gsma/services/GsmaSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 78
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "banner"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 79
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 77
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 80
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/gsma/services/GsmaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 81
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
