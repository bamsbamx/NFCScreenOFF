.class public Lcom/android/nfc/NfceeAccessControl;
.super Ljava/lang/Object;
.source "NfceeAccessControl.java"


# static fields
.field static final DBG:Z = false

.field public static final NFCEE_ACCESS_PATH:Ljava/lang/String; = "/etc/nfcee_access.xml"

.field static final TAG:Ljava/lang/String; = "NfceeAccess"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDebugPrintSignature:Z

.field final mNfceeAccess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Ljava/lang/String;

.field final mUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const-string/jumbo v0, "/etc/nfcee_access.xml"

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/NfceeAccessControl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/nfc/NfceeAccessControl;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/nfc/NfceeAccessControl;->mPath:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    .line 98
    invoke-virtual {p0}, Lcom/android/nfc/NfceeAccessControl;->parseNfceeAccess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfceeAccessControl;->mDebugPrintSignature:Z

    .line 93
    return-void
.end method


# virtual methods
.method public check(ILjava/lang/String;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v5, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 109
    .local v1, "cached":Ljava/lang/Boolean;
    if-eqz v1, :cond_15

    .line 110
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_45

    move-result v5

    monitor-exit p0

    return v5

    .line 113
    :cond_15
    const/4 v0, 0x0

    .line 116
    .local v0, "access":Z
    :try_start_16
    iget-object v5, p0, Lcom/android/nfc/NfceeAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 117
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "pkgs":[Ljava/lang/String;
    const/4 v5, 0x0

    array-length v6, v2

    :goto_22
    if-ge v5, v6, :cond_33

    aget-object v4, v2, v5

    .line 119
    .local v4, "uidPkg":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 121
    invoke-virtual {p0, p2}, Lcom/android/nfc/NfceeAccessControl;->checkPackageNfceeAccess(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 122
    const/4 v0, 0x1

    .line 128
    .end local v4    # "uidPkg":Ljava/lang/String;
    :cond_33
    iget-object v5, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_45

    monitor-exit p0

    .line 129
    return v0

    .line 118
    .restart local v4    # "uidPkg":Ljava/lang/String;
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 107
    .end local v0    # "access":Z
    .end local v1    # "cached":Ljava/lang/Boolean;
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "uidPkg":Ljava/lang/String;
    :catchall_45
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public check(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 141
    .local v0, "access":Ljava/lang/Boolean;
    if-nez v0, :cond_26

    .line 142
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/nfc/NfceeAccessControl;->checkPackageNfceeAccess(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2c

    move-result v1

    monitor-exit p0

    return v1

    .line 139
    .end local v0    # "access":Ljava/lang/Boolean;
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method checkPackageNfceeAccess(Ljava/lang/String;)Z
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v7, 0x0

    .line 160
    iget-object v6, p0, Lcom/android/nfc/NfceeAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 162
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x40

    :try_start_a
    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 163
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v6, :cond_13

    .line 164
    return v7

    .line 167
    :cond_13
    iget-object v9, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v10, v9

    move v8, v7

    :goto_17
    if-ge v8, v10, :cond_3f

    aget-object v5, v9, v8

    .line 168
    .local v5, "s":Landroid/content/pm/Signature;
    if-nez v5, :cond_21

    .line 167
    :cond_1d
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_17

    .line 171
    :cond_21
    iget-object v6, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 172
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_1d

    .line 175
    array-length v6, v3

    if-nez v6, :cond_2f

    .line 178
    return v13

    .line 180
    :cond_2f
    array-length v11, v3

    move v6, v7

    :goto_31
    if-ge v6, v11, :cond_1d

    aget-object v2, v3, v6

    .line 181
    .local v2, "p":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3c

    .line 184
    return v13

    .line 180
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 189
    .end local v2    # "p":Ljava/lang/String;
    .end local v3    # "packages":[Ljava/lang/String;
    .end local v5    # "s":Landroid/content/pm/Signature;
    :cond_3f
    iget-boolean v6, p0, Lcom/android/nfc/NfceeAccessControl;->mDebugPrintSignature:Z

    if-eqz v6, :cond_7c

    .line 190
    const-string/jumbo v6, "NfceeAccess"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "denied NFCEE access for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " with signature:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v8, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v9, v8

    move v6, v7

    :goto_68
    if-ge v6, v9, :cond_7c

    aget-object v5, v8, v6

    .line 192
    .restart local v5    # "s":Landroid/content/pm/Signature;
    if-eqz v5, :cond_78

    .line 193
    const-string/jumbo v10, "NfceeAccess"

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_78} :catch_7b

    .line 191
    :cond_78
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 197
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "s":Landroid/content/pm/Signature;
    :catch_7b
    move-exception v0

    .line 200
    :cond_7c
    return v7
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 301
    const-string/jumbo v7, "mNfceeAccess="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    iget-object v7, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "s$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    .line 303
    .local v3, "s":Landroid/content/pm/Signature;
    const-string/jumbo v7, "\t%s ["

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 304
    iget-object v7, p0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 305
    .local v2, "ps":[Ljava/lang/String;
    const/4 v7, 0x0

    array-length v8, v2

    :goto_36
    if-ge v7, v8, :cond_49

    aget-object v1, v2, v7

    .line 306
    .local v1, "p":Ljava/lang/String;
    const-string/jumbo v9, "%s, "

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {p2, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 305
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 308
    .end local v1    # "p":Ljava/lang/String;
    :cond_49
    const-string/jumbo v7, "]"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 310
    .end local v2    # "ps":[Ljava/lang/String;
    .end local v3    # "s":Landroid/content/pm/Signature;
    :cond_50
    monitor-enter p0

    .line 311
    :try_start_51
    const-string/jumbo v7, "mNfceeUidCache="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    iget-object v7, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "uid$iterator":Ljava/util/Iterator;
    :goto_61
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_88

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 313
    .local v5, "uid":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 314
    .local v0, "b":Ljava/lang/Boolean;
    const-string/jumbo v7, "\t%d %s\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_84
    .catchall {:try_start_51 .. :try_end_84} :catchall_85

    goto :goto_61

    .line 310
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v5    # "uid":Ljava/lang/Integer;
    .end local v6    # "uid$iterator":Ljava/util/Iterator;
    :catchall_85
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v6    # "uid$iterator":Ljava/util/Iterator;
    :cond_88
    monitor-exit p0

    .line 300
    return-void
.end method

.method public invalidateCache()V
    .registers 2

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfceeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 149
    return-void

    .line 150
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method parseNfceeAccess()Z
    .registers 23

    .prologue
    .line 211
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfceeAccessControl;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v10, "file":Ljava/io/File;
    const/4 v15, 0x0

    .line 213
    .local v15, "reader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 215
    .local v3, "debug":Z
    :try_start_15
    new-instance v16, Ljava/io/FileReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_1c} :catch_20a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1c} :catch_20d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_210
    .catchall {:try_start_15 .. :try_end_1c} :catchall_208

    .line 216
    .end local v15    # "reader":Ljava/io/FileReader;
    .local v16, "reader":Ljava/io/FileReader;
    :try_start_1c
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    .line 217
    .local v9, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 218
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 221
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v13, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 223
    .local v17, "signature":Landroid/content/pm/Signature;
    const-string/jumbo v19, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 225
    .end local v17    # "signature":Landroid/content/pm/Signature;
    :cond_3c
    :goto_3c
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 226
    .local v8, "event":I
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 227
    .local v18, "tag":Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_f5

    const-string/jumbo v19, "signer"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f5

    .line 228
    const/16 v17, 0x0

    .line 229
    .restart local v17    # "signature":Landroid/content/pm/Signature;
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 230
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5d
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_7f

    .line 231
    const-string/jumbo v19, "android:signature"

    invoke-interface {v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d5

    .line 232
    new-instance v17, Landroid/content/pm/Signature;

    .end local v17    # "signature":Landroid/content/pm/Signature;
    invoke-interface {v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 236
    :cond_7f
    if-nez v17, :cond_d8

    .line 237
    const-string/jumbo v19, "NfceeAccess"

    const-string/jumbo v20, "signer tag is missing android:signature attribute, igorning"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_8a} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_8a} :catch_115
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_8a} :catch_14d
    .catchall {:try_start_1c .. :try_end_8a} :catchall_190

    goto :goto_3c

    .line 281
    .end local v8    # "event":I
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v11    # "i":I
    .end local v13    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tag":Ljava/lang/String;
    :catch_8b
    move-exception v6

    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v15, v16

    .line 282
    .end local v16    # "reader":Ljava/io/FileReader;
    :goto_8e
    :try_start_8e
    const-string/jumbo v19, "NfceeAccess"

    const-string/jumbo v20, "failed to load NFCEE access list"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V
    :try_end_a4
    .catchall {:try_start_8e .. :try_end_a4} :catchall_208

    .line 290
    if-eqz v15, :cond_a9

    .line 292
    :try_start_a6
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_203

    .line 296
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_a9
    :goto_a9
    const-string/jumbo v19, "NfceeAccess"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "read "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " signature(s) for NFCEE access"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return v3

    .line 230
    .restart local v8    # "event":I
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v11    # "i":I
    .restart local v13    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "reader":Ljava/io/FileReader;
    .restart local v17    # "signature":Landroid/content/pm/Signature;
    .restart local v18    # "tag":Ljava/lang/String;
    :cond_d5
    add-int/lit8 v11, v11, 0x1

    goto :goto_5d

    .line 240
    .end local v17    # "signature":Landroid/content/pm/Signature;
    :cond_d8
    :try_start_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3c

    .line 241
    const-string/jumbo v19, "NfceeAccess"

    const-string/jumbo v20, "duplicate signature, ignoring"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v17, 0x0

    .line 243
    .restart local v17    # "signature":Landroid/content/pm/Signature;
    goto/16 :goto_3c

    .line 245
    .end local v11    # "i":I
    .end local v17    # "signature":Landroid/content/pm/Signature;
    :cond_f5
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v8, v0, :cond_170

    const-string/jumbo v19, "signer"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_170

    .line 246
    if-nez v17, :cond_129

    .line 247
    const-string/jumbo v19, "NfceeAccess"

    const-string/jumbo v20, "mis-matched signer tag"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d8 .. :try_end_113} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_d8 .. :try_end_113} :catch_115
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_113} :catch_14d
    .catchall {:try_start_d8 .. :try_end_113} :catchall_190

    goto/16 :goto_3c

    .line 284
    .end local v8    # "event":I
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v13    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tag":Ljava/lang/String;
    :catch_115
    move-exception v4

    .local v4, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v15, v16

    .line 285
    .end local v16    # "reader":Ljava/io/FileReader;
    :goto_118
    :try_start_118
    const-string/jumbo v19, "NfceeAccess"

    const-string/jumbo v20, "could not find /etc/nfcee_access.xml, no NFCEE access allowed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_118 .. :try_end_121} :catchall_208

    .line 290
    if-eqz v15, :cond_a9

    .line 292
    :try_start_123
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_127

    goto :goto_a9

    .line 293
    :catch_127
    move-exception v7

    .local v7, "e2":Ljava/io/IOException;
    goto :goto_a9

    .line 250
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "e2":Ljava/io/IOException;
    .restart local v8    # "event":I
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v13    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "reader":Ljava/io/FileReader;
    .restart local v18    # "tag":Ljava/lang/String;
    :cond_129
    :try_start_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V
    :try_end_14b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_129 .. :try_end_14b} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_129 .. :try_end_14b} :catch_115
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_14b} :catch_14d
    .catchall {:try_start_129 .. :try_end_14b} :catchall_190

    goto/16 :goto_3c

    .line 286
    .end local v8    # "event":I
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v13    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tag":Ljava/lang/String;
    :catch_14d
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    .line 287
    .end local v16    # "reader":Ljava/io/FileReader;
    :goto_150
    :try_start_150
    const-string/jumbo v19, "NfceeAccess"

    const-string/jumbo v20, "Failed to load NFCEE access list"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfceeAccessControl;->mNfceeAccess:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V
    :try_end_166
    .catchall {:try_start_150 .. :try_end_166} :catchall_208

    .line 290
    if-eqz v15, :cond_a9

    .line 292
    :try_start_168
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_16b} :catch_16d

    goto/16 :goto_a9

    .line 293
    :catch_16d
    move-exception v7

    .restart local v7    # "e2":Ljava/io/IOException;
    goto/16 :goto_a9

    .line 252
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "e2":Ljava/io/IOException;
    .restart local v8    # "event":I
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v13    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "reader":Ljava/io/FileReader;
    .restart local v18    # "tag":Ljava/lang/String;
    :cond_170
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_1dc

    :try_start_176
    const-string/jumbo v19, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1dc

    .line 253
    if-nez v17, :cond_199

    .line 254
    const-string/jumbo v19, "NfceeAccess"

    const-string/jumbo v20, "ignoring unnested packge tag"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_176 .. :try_end_18e} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_176 .. :try_end_18e} :catch_115
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_18e} :catch_14d
    .catchall {:try_start_176 .. :try_end_18e} :catchall_190

    goto/16 :goto_3c

    .line 289
    .end local v8    # "event":I
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v13    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tag":Ljava/lang/String;
    :catchall_190
    move-exception v19

    move-object/from16 v15, v16

    .line 290
    .end local v16    # "reader":Ljava/io/FileReader;
    :goto_193
    if-eqz v15, :cond_198

    .line 292
    :try_start_195
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_206

    .line 289
    :cond_198
    :goto_198
    throw v19

    .line 257
    .restart local v8    # "event":I
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v13    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "reader":Ljava/io/FileReader;
    .restart local v18    # "tag":Ljava/lang/String;
    :cond_199
    const/4 v12, 0x0

    .line 258
    .local v12, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_19b
    :try_start_19b
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_1b4

    .line 259
    const-string/jumbo v19, "android:name"

    invoke-interface {v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c3

    .line 260
    invoke-interface {v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 264
    .end local v12    # "name":Ljava/lang/String;
    :cond_1b4
    if-nez v12, :cond_1c6

    .line 265
    const-string/jumbo v19, "NfceeAccess"

    const-string/jumbo v20, "package missing android:name, ignoring signer group"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v17, 0x0

    .line 267
    .restart local v17    # "signature":Landroid/content/pm/Signature;
    goto/16 :goto_3c

    .line 258
    .end local v17    # "signature":Landroid/content/pm/Signature;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_1c3
    add-int/lit8 v11, v11, 0x1

    goto :goto_19b

    .line 270
    .end local v12    # "name":Ljava/lang/String;
    :cond_1c6
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d7

    .line 271
    const-string/jumbo v19, "NfceeAccess"

    const-string/jumbo v20, "duplicate package name in signer group, ignoring"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 274
    :cond_1d7
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c

    .line 275
    .end local v11    # "i":I
    :cond_1dc
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_1f2

    const-string/jumbo v19, "debug"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19b .. :try_end_1ec} :catch_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_19b .. :try_end_1ec} :catch_115
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_1ec} :catch_14d
    .catchall {:try_start_19b .. :try_end_1ec} :catchall_190

    move-result v19

    if-eqz v19, :cond_1f2

    .line 276
    const/4 v3, 0x1

    goto/16 :goto_3c

    .line 277
    :cond_1f2
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_3c

    .line 290
    if-eqz v16, :cond_1fd

    .line 292
    :try_start_1fa
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_1fd
    .catch Ljava/io/IOException; {:try_start_1fa .. :try_end_1fd} :catch_201

    :cond_1fd
    :goto_1fd
    move-object/from16 v15, v16

    .end local v16    # "reader":Ljava/io/FileReader;
    .local v15, "reader":Ljava/io/FileReader;
    goto/16 :goto_a9

    .line 293
    .end local v15    # "reader":Ljava/io/FileReader;
    .restart local v16    # "reader":Ljava/io/FileReader;
    :catch_201
    move-exception v7

    .restart local v7    # "e2":Ljava/io/IOException;
    goto :goto_1fd

    .end local v7    # "e2":Ljava/io/IOException;
    .end local v8    # "event":I
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v13    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "reader":Ljava/io/FileReader;
    .end local v18    # "tag":Ljava/lang/String;
    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_203
    move-exception v7

    .restart local v7    # "e2":Ljava/io/IOException;
    goto/16 :goto_a9

    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7    # "e2":Ljava/io/IOException;
    :catch_206
    move-exception v7

    .restart local v7    # "e2":Ljava/io/IOException;
    goto :goto_198

    .line 289
    .end local v7    # "e2":Ljava/io/IOException;
    :catchall_208
    move-exception v19

    goto :goto_193

    .line 281
    .local v15, "reader":Ljava/io/FileReader;
    :catch_20a
    move-exception v6

    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_8e

    .line 284
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_20d
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_118

    .line 286
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_210
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_150
.end method
