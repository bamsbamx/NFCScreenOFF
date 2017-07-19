.class public Lcom/gsma/services/GsmaSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GsmaSQLiteHelper.java"


# static fields
.field public static final COLUMN_A_AIDTOKENS:Ljava/lang/String; = "aidtokens"

.field public static final COLUMN_A_CATEGORY:Ljava/lang/String; = "category"

.field public static final COLUMN_A_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_A_SERVICEID:Ljava/lang/String; = "serviceid"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_S_BANNER:Ljava/lang/String; = "banner"

.field public static final COLUMN_S_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_S_ISDYNAMIC:Ljava/lang/String; = "isdynamic"

.field public static final COLUMN_S_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final COLUMN_S_SERVICENAME:Ljava/lang/String; = "servicename"

.field public static final COLUMN_S_UID:Ljava/lang/String; = "uid"

.field public static final COLUMN_S_USERID:Ljava/lang/String; = "userid"

.field private static final CREATE_AIDGROUPS_INDEX_SQL:Ljava/lang/String; = "CREATE UNIQUE INDEX aidgroups_idx on aidgroups (serviceid, category);"

.field private static final CREATE_AIDGROUPS_SQL:Ljava/lang/String; = "CREATE TABLE aidgroups(_id integer primary key autoincrement, serviceid integer not null, category text not null, description text default \'\', aidtokens text, foreign key (serviceid) references services(_id));"

.field private static final CREATE_SERVICES_INDEX_SQL:Ljava/lang/String; = "CREATE UNIQUE INDEX services_idx on services (userid, packagename, servicename);"

.field private static final CREATE_SERVICES_SQL:Ljava/lang/String; = "CREATE TABLE services(_id integer primary key autoincrement, userid integer not null, packagename text not null, servicename text not null, uid integer not null, description text default \'\', isdynamic integer not null, banner blob );"

.field private static final DATABASE_NAME:Ljava/lang/String; = "gsma_dynamic_offhost_services"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DBG:Z

.field private static final INDEX_AIDGROUPS:Ljava/lang/String; = "aidgroups_idx"

.field private static final INDEX_SERVICES:Ljava/lang/String; = "services_idx"

.field public static final TABLE_AIDGROUPS:Ljava/lang/String; = "aidgroups"

.field public static final TABLE_SERVICES:Ljava/lang/String; = "services"

.field private static final TAG:Ljava/lang/String; = "GsmaSQLiteHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_c
    sput-boolean v0, Lcom/gsma/services/GsmaSQLiteHelper;->DBG:Z

    .line 30
    return-void

    .line 33
    :cond_f
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-string/jumbo v0, "gsma_dynamic_offhost_services"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 84
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 90
    sget-boolean v0, Lcom/gsma/services/GsmaSQLiteHelper;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "GsmaSQLiteHelper"

    const-string/jumbo v1, "Creating databases..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_d
    const-string/jumbo v0, "DROP INDEX IF EXISTS services_idx"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "DROP INDEX IF EXISTS aidgroups_idx"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "DROP TABLE IF EXISTS aidgroups"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "DROP TABLE IF EXISTS services"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "CREATE TABLE services(_id integer primary key autoincrement, userid integer not null, packagename text not null, servicename text not null, uid integer not null, description text default \'\', isdynamic integer not null, banner blob );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "CREATE TABLE aidgroups(_id integer primary key autoincrement, serviceid integer not null, category text not null, description text default \'\', aidtokens text, foreign key (serviceid) references services(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "CREATE UNIQUE INDEX services_idx on services (userid, packagename, servicename);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "CREATE UNIQUE INDEX aidgroups_idx on aidgroups (serviceid, category);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/gsma/services/GsmaSQLiteHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 109
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVer"    # I
    .param p3, "newVer"    # I

    .prologue
    .line 103
    sget-boolean v0, Lcom/gsma/services/GsmaSQLiteHelper;->DBG:Z

    if-eqz v0, :cond_30

    const-string/jumbo v0, "GsmaSQLiteHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Database version change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    const-string/jumbo v2, ". Dropping all data..."

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_30
    invoke-virtual {p0, p1}, Lcom/gsma/services/GsmaSQLiteHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 102
    return-void
.end method
