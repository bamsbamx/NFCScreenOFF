.class public Lcom/gsma/services/GsmaDataSource;
.super Ljava/lang/Object;
.source "GsmaDataSource.java"


# static fields
.field private static final DBG:Z = false

.field private static final DELIMITER:Ljava/lang/String; = "#"

.field private static final TAG:Ljava/lang/String; = "GsmaDataSource"

.field static sCategories:[Ljava/lang/String;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final mContext:Landroid/content/Context;

.field private final mGsmaSQLiteHelper:Lcom/gsma/services/GsmaSQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "payment"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "other"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 56
    sput-object v0, Lcom/gsma/services/GsmaDataSource;->sCategories:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/gsma/services/GsmaDataSource;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/gsma/services/GsmaSQLiteHelper;

    invoke-direct {v0, p1}, Lcom/gsma/services/GsmaSQLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gsma/services/GsmaDataSource;->mGsmaSQLiteHelper:Lcom/gsma/services/GsmaSQLiteHelper;

    .line 62
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->mGsmaSQLiteHelper:Lcom/gsma/services/GsmaSQLiteHelper;

    invoke-virtual {v0}, Lcom/gsma/services/GsmaSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    return-void
.end method

.method private deleteServiceByIdLocked(J)V
    .registers 10
    .param p1, "rowId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "services"

    const-string/jumbo v2, "_id=?"

    .line 99
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "aidgroups"

    const-string/jumbo v2, "serviceid=?"

    .line 101
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method private getAidGroupsByIdLocked(J)Ljava/util/ArrayList;
    .registers 18
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v9, "aidgroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "category"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 136
    const-string/jumbo v0, "description"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "aidtokens"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 137
    .local v2, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "aidgroups"

    .line 138
    const-string/jumbo v3, "serviceid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 139
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 137
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 140
    .local v13, "cursor":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 141
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 142
    return-object v9

    .line 144
    :cond_3e
    :goto_3e
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 145
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 146
    .local v12, "category":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 147
    .local v14, "description":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, "aidtokens":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    const-string/jumbo v0, "#"

    invoke-static {v10, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    .local v11, "aidtokenslist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v0, v11, v12, v14}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3e

    .line 153
    .end local v10    # "aidtokens":Ljava/lang/String;
    .end local v11    # "aidtokenslist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "category":Ljava/lang/String;
    .end local v14    # "description":Ljava/lang/String;
    :cond_6f
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 154
    return-object v9
.end method

.method private getServiceByIdLocked(J)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 26
    .param p1, "rowId"    # J

    .prologue
    .line 158
    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "userid"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    .line 159
    const-string/jumbo v1, "packagename"

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string/jumbo v1, "servicename"

    const/4 v2, 0x2

    aput-object v1, v3, v2

    .line 160
    const-string/jumbo v1, "uid"

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const-string/jumbo v1, "description"

    const/4 v2, 0x4

    aput-object v1, v3, v2

    .line 161
    const-string/jumbo v1, "isdynamic"

    const/4 v2, 0x5

    aput-object v1, v3, v2

    const-string/jumbo v1, "banner"

    const/4 v2, 0x6

    aput-object v1, v3, v2

    .line 162
    .local v3, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "services"

    .line 163
    const-string/jumbo v4, "_id=?"

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 164
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 162
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 165
    .local v15, "cursor":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_54

    .line 166
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 167
    const/4 v1, 0x0

    return-object v1

    .line 169
    :cond_54
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 170
    .local v21, "userid":I
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 171
    .local v18, "packagename":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 172
    .local v19, "servicename":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 173
    .local v12, "uid":I
    const/4 v1, 0x4

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "description":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_d3

    const/16 v17, 0x1

    .line 175
    .local v17, "isdynamic":Z
    :goto_76
    const/4 v1, 0x6

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 176
    .local v14, "banner":[B
    invoke-direct/range {p0 .. p2}, Lcom/gsma/services/GsmaDataSource;->getAidGroupsByIdLocked(J)Ljava/util/ArrayList;

    move-result-object v9

    .line 177
    .local v9, "aidgroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 179
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 180
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/pm/ServiceInfo;

    invoke-direct {v1}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v1, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 183
    :try_start_8e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gsma/services/GsmaDataSource;->mContext:Landroid/content/Context;

    .line 184
    const-string/jumbo v2, "android"

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v8, 0x0

    .line 183
    invoke-virtual {v1, v2, v8, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_a0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8e .. :try_end_a0} :catch_d6

    move-result-object v20

    .line 190
    .local v20, "userContext":Landroid/content/Context;
    :try_start_a1
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 191
    const/4 v6, 0x0

    .line 190
    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_b0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a1 .. :try_end_b0} :catch_f5

    .line 197
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v18

    iput-object v0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 198
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v19

    iput-object v0, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 200
    new-instance v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 204
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 202
    const/4 v6, 0x0

    .line 206
    const/4 v10, 0x0

    .line 207
    const/4 v11, -0x1

    .line 209
    const/4 v13, 0x0

    .line 200
    invoke-direct/range {v4 .. v13}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;)V

    .line 210
    .local v4, "retval":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v4, v14}, Landroid/nfc/cardemulation/ApduServiceInfo;->setByteArrayBanner([B)V

    .line 211
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->setIsDynamicallyDefined(Z)V

    .line 212
    return-object v4

    .line 174
    .end local v4    # "retval":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "aidgroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v14    # "banner":[B
    .end local v17    # "isdynamic":Z
    .end local v20    # "userContext":Landroid/content/Context;
    :cond_d3
    const/16 v17, 0x0

    .restart local v17    # "isdynamic":Z
    goto :goto_76

    .line 185
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "aidgroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v14    # "banner":[B
    :catch_d6
    move-exception v16

    .line 186
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "GsmaDataSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to create user context. userid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x0

    return-object v1

    .line 192
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v20    # "userContext":Landroid/content/Context;
    :catch_f5
    move-exception v16

    .line 193
    .restart local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-direct/range {p0 .. p2}, Lcom/gsma/services/GsmaDataSource;->deleteServiceByIdLocked(J)V

    .line 194
    const-string/jumbo v1, "GsmaDataSource"

    const-string/jumbo v2, "NameNotFoundException"

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public commitApduServiceInfo(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 14
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    const/4 v7, 0x0

    .line 67
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "userid"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string/jumbo v6, "packagename"

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v6, "servicename"

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v6, "uid"

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string/jumbo v6, "description"

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v8, "isdynamic"

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getIsDynamicallyDefined()Z

    move-result v6

    if-eqz v6, :cond_bd

    const/4 v6, 0x1

    :goto_52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string/jumbo v6, "banner"

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getByteArrayBanner()[B

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 76
    iget-object v6, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 78
    :try_start_68
    iget-object v6, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v8, "services"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 79
    .local v2, "serviceid":J
    sget-object v6, Lcom/gsma/services/GsmaDataSource;->sCategories:[Ljava/lang/String;

    array-length v8, v6
    :try_end_75
    .catchall {:try_start_68 .. :try_end_75} :catchall_ca

    move-object v5, v4

    .end local v4    # "values":Landroid/content/ContentValues;
    .local v5, "values":Landroid/content/ContentValues;
    :goto_76
    if-ge v7, v8, :cond_bf

    :try_start_78
    aget-object v1, v6, v7

    .line 80
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v0

    .line 81
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v0, :cond_d4

    .line 82
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_d1

    .line 83
    .end local v5    # "values":Landroid/content/ContentValues;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :try_start_85
    const-string/jumbo v9, "serviceid"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    const-string/jumbo v9, "category"

    invoke-virtual {v4, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v9, "description"

    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v9, "aidtokens"

    .line 87
    const-string/jumbo v10, "#"

    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    .line 86
    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v9, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v10, "aidgroups"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_b9
    .catchall {:try_start_85 .. :try_end_b9} :catchall_ca

    .line 79
    :goto_b9
    add-int/lit8 v7, v7, 0x1

    move-object v5, v4

    .end local v4    # "values":Landroid/content/ContentValues;
    .restart local v5    # "values":Landroid/content/ContentValues;
    goto :goto_76

    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v1    # "c":Ljava/lang/String;
    .end local v2    # "serviceid":J
    .end local v5    # "values":Landroid/content/ContentValues;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_bd
    move v6, v7

    .line 73
    goto :goto_52

    .line 91
    .end local v4    # "values":Landroid/content/ContentValues;
    .restart local v2    # "serviceid":J
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_bf
    :try_start_bf
    iget-object v6, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c4
    .catchall {:try_start_bf .. :try_end_c4} :catchall_d1

    .line 93
    iget-object v6, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 65
    return-void

    .line 92
    .end local v2    # "serviceid":J
    .end local v5    # "values":Landroid/content/ContentValues;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catchall_ca
    move-exception v6

    .line 93
    :goto_cb
    iget-object v7, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    throw v6

    .end local v4    # "values":Landroid/content/ContentValues;
    .restart local v2    # "serviceid":J
    .restart local v5    # "values":Landroid/content/ContentValues;
    :catchall_d1
    move-exception v6

    move-object v4, v5

    .end local v5    # "values":Landroid/content/ContentValues;
    .restart local v4    # "values":Landroid/content/ContentValues;
    goto :goto_cb

    .end local v4    # "values":Landroid/content/ContentValues;
    .restart local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v1    # "c":Ljava/lang/String;
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_d4
    move-object v4, v5

    .end local v5    # "values":Landroid/content/ContentValues;
    .restart local v4    # "values":Landroid/content/ContentValues;
    goto :goto_b9
.end method

.method public deleteApduServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    const-string/jumbo v3, "userid=? and packagename=? and servicename=?"

    .line 108
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 109
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    const/4 v0, 0x2

    aput-object p2, v4, v0

    .line 113
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 116
    :try_start_1c
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "services"

    .line 117
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 118
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 116
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 119
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 120
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 121
    .local v10, "rowId":J
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 126
    invoke-direct {p0, v10, v11}, Lcom/gsma/services/GsmaDataSource;->deleteServiceByIdLocked(J)V

    .line 127
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_48
    .catchall {:try_start_1c .. :try_end_48} :catchall_57

    .line 129
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 104
    return-void

    .line 123
    .end local v10    # "rowId":J
    :cond_4e
    :try_start_4e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_57

    .line 129
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 124
    return-void

    .line 128
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_57
    move-exception v0

    .line 129
    iget-object v1, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 128
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 318
    :try_start_7
    const-string/jumbo v9, "userid, packagename, servicename"

    .line 321
    .local v9, "orderBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "services"

    .line 322
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "userid"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 323
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 321
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 324
    .local v14, "cursor":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 325
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_52

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 326
    return-void

    .line 328
    :cond_3a
    const/4 v15, -0x1

    .line 329
    .local v15, "prevuser":I
    :goto_3b
    :try_start_3b
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_120

    .line 330
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/gsma/services/GsmaDataSource;->getServiceByIdLocked(J)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v16

    .line 331
    .local v16, "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-nez v16, :cond_5b

    .line 332
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_52

    goto :goto_3b

    .line 352
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "prevuser":I
    .end local v16    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catchall_52
    move-exception v2

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 352
    throw v2

    .line 335
    .restart local v9    # "orderBy":Ljava/lang/String;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "prevuser":I
    .restart local v16    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_5b
    const/4 v2, 0x1

    :try_start_5c
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, v15, :cond_90

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 339
    :cond_90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->getByteArrayBanner()[B

    move-result-object v12

    .line 341
    .local v12, "banner":[B
    if-eqz v12, :cond_117

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " banner bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_e2
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    sget-object v3, Lcom/gsma/services/GsmaDataSource;->sCategories:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_eb
    if-ge v2, v4, :cond_11b

    aget-object v13, v3, v2

    .line 343
    .local v13, "c":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v11

    .line 344
    .local v11, "a":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v11, :cond_114

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    :cond_114
    add-int/lit8 v2, v2, 0x1

    goto :goto_eb

    .line 341
    .end local v11    # "a":Landroid/nfc/cardemulation/AidGroup;
    .end local v13    # "c":Ljava/lang/String;
    :cond_117
    const-string/jumbo v2, "no banner"

    goto :goto_e2

    .line 348
    :cond_11b
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3b

    .line 350
    .end local v12    # "banner":[B
    .end local v16    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_120
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12a
    .catchall {:try_start_5c .. :try_end_12a} :catchall_52

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 315
    return-void
.end method

.method public getApduServiceInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 255
    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    .line 256
    :cond_7
    return-object v11

    .line 259
    :cond_8
    const-string/jumbo v3, "userid=? and packagename=? and servicename=?"

    .line 262
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    const/4 v0, 0x2

    aput-object p2, v4, v0

    .line 264
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 266
    .local v10, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 268
    :try_start_1f
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "services"

    .line 269
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 270
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 268
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 271
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_44

    .line 272
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_61

    .line 281
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 273
    return-object v11

    .line 275
    :cond_44
    :try_start_44
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_53

    .line 276
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/gsma/services/GsmaDataSource;->getServiceByIdLocked(J)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v10

    .line 278
    .end local v10    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_53
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 279
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_61

    .line 281
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 283
    return-object v10

    .line 280
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_61
    move-exception v0

    .line 281
    iget-object v1, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 280
    throw v0
.end method

.method public getNewUuid(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 288
    const-string/jumbo v3, "userid=? and packagename=?"

    .line 290
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 291
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    .line 293
    .local v4, "whereArgs":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v10, "servicenames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 296
    :try_start_1e
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "services"

    .line 297
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "servicename"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 298
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 296
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 299
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 300
    :goto_37
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_50

    .line 301
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_48
    .catchall {:try_start_1e .. :try_end_48} :catchall_49

    goto :goto_37

    .line 309
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_49
    move-exception v0

    .line 310
    iget-object v1, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 309
    throw v0

    .line 304
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_50
    :try_start_50
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_53
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    .line 307
    .local v11, "uuid":Ljava/util/UUID;
    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 308
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_49

    .line 310
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 312
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-direct {v0, v11}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public retrieveApduServiceInfos(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x0

    .line 219
    .local v4, "whereArgs":[Ljava/lang/String;
    if-eqz p1, :cond_43

    .line 220
    const-string/jumbo v3, "userid=? and packagename=?"

    .line 222
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "whereArgs":[Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    .line 228
    .local v4, "whereArgs":[Ljava/lang/String;
    :goto_14
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v11, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 232
    :try_start_1e
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "services"

    .line 233
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 234
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 232
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 235
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 236
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_67

    .line 249
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 237
    return-object v11

    .line 224
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local v3, "whereClause":Ljava/lang/String;
    .local v4, "whereArgs":[Ljava/lang/String;
    :cond_43
    const-string/jumbo v3, "userid=?"

    .line 225
    .local v3, "whereClause":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    .end local v4    # "whereArgs":[Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .local v4, "whereArgs":[Ljava/lang/String;
    goto :goto_14

    .line 239
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 240
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/gsma/services/GsmaDataSource;->getServiceByIdLocked(J)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v10

    .line 241
    .local v10, "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v10, :cond_63

    .line 242
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_63
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_66
    .catchall {:try_start_4f .. :try_end_66} :catchall_67

    goto :goto_4f

    .line 248
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "s":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catchall_67
    move-exception v0

    .line 249
    iget-object v1, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    throw v0

    .line 246
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_6e
    :try_start_6e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 247
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_67

    .line 249
    iget-object v0, p0, Lcom/gsma/services/GsmaDataSource;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 251
    return-object v11
.end method
