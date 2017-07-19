.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
.super Ljava/lang/Object;
.source "WifiP2pDataTransferInfo.java"


# static fields
.field private static final DBG:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "WifiP2pDataTransferInfo"


# instance fields
.field dataLocation:Ljava/lang/String;

.field dataSize:J

.field dataTransferred:J

.field fileName:Ljava/lang/String;

.field fileNameLength:I

.field fileType:Ljava/lang/String;

.field fileTypeLength:I

.field totalByte:J

.field uri:Landroid/net/Uri;

.field valid:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->DBG:Ljava/lang/Boolean;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->valid:Z

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->valid:Z

    .line 39
    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    .line 42
    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    .line 51
    if-nez p2, :cond_19

    .line 52
    return-void

    .line 55
    :cond_19
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->uri:Landroid/net/Uri;

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 62
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 63
    .local v16, "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    const-wide/16 v20, 0x0

    .line 65
    .local v20, "sizeFromFileDescriptor":J
    :try_start_27
    const-string/jumbo v5, "r"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v16

    .line 66
    .local v16, "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_33} :catch_5c
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_33} :catch_42
    .catchall {:try_start_27 .. :try_end_33} :catchall_76

    move-result-wide v20

    .line 74
    if-eqz v16, :cond_39

    .line 76
    :try_start_36
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_40

    .line 83
    :cond_39
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7f

    .line 84
    return-void

    .line 77
    :catch_40
    move-exception v12

    .local v12, "e":Ljava/io/IOException;
    goto :goto_39

    .line 70
    .end local v12    # "e":Ljava/io/IOException;
    .end local v16    # "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_42
    move-exception v13

    .line 71
    .local v13, "e":Ljava/lang/SecurityException;
    :try_start_43
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_54

    const-string/jumbo v5, "WifiP2pDataTransferInfo"

    const-string/jumbo v6, "Content resolver failed due to SecurityException"

    invoke-static {v5, v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_76

    .line 74
    :cond_54
    if-eqz v16, :cond_59

    .line 76
    :try_start_56
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 72
    :cond_59
    :goto_59
    return-void

    .line 77
    :catch_5a
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    goto :goto_59

    .line 67
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "e":Ljava/lang/SecurityException;
    :catch_5c
    move-exception v11

    .line 68
    .local v11, "e":Ljava/io/FileNotFoundException;
    :try_start_5d
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6e

    const-string/jumbo v5, "WifiP2pDataTransferInfo"

    const-string/jumbo v6, "File not found"

    invoke-static {v5, v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_76

    .line 74
    :cond_6e
    if-eqz v16, :cond_73

    .line 76
    :try_start_70
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    .line 69
    :cond_73
    :goto_73
    return-void

    .line 77
    :catch_74
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    goto :goto_73

    .line 73
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_76
    move-exception v5

    .line 74
    if-eqz v16, :cond_7c

    .line 76
    :try_start_79
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    .line 73
    :cond_7c
    :goto_7c
    throw v5

    .line 77
    :catch_7d
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    goto :goto_7c

    .line 86
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v16    # "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_7f
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 87
    const/4 v10, 0x0

    .line 89
    .local v10, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    :try_start_93
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_96
    .catch Ljava/lang/SecurityException; {:try_start_93 .. :try_end_96} :catch_ab

    move-result-object v10

    .line 94
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_97
    :goto_97
    if-nez v10, :cond_be

    .line 95
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_aa

    const-string/jumbo v5, "WifiP2pDataTransferInfo"

    const-string/jumbo v6, "Content resolver failed to query data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_aa
    return-void

    .line 90
    .restart local v10    # "c":Landroid/database/Cursor;
    :catch_ab
    move-exception v13

    .line 91
    .restart local v13    # "e":Ljava/lang/SecurityException;
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_97

    const-string/jumbo v5, "WifiP2pDataTransferInfo"

    const-string/jumbo v6, "Content resolver failed due to SecurityException"

    invoke-static {v5, v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_97

    .line 99
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v13    # "e":Ljava/lang/SecurityException;
    :cond_be
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 100
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    .line 101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->getFileName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    .line 102
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v10, v1, v2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->getFileSize(Landroid/database/Cursor;J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    .line 104
    :cond_e8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_eb
    :goto_eb
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    cmp-long v5, v6, v20

    if-eqz v5, :cond_ff

    const-wide/16 v6, 0x0

    cmp-long v5, v20, v6

    if-lez v5, :cond_ff

    .line 141
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    .line 144
    :cond_ff
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-gez v5, :cond_1e1

    .line 145
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_11a

    const-string/jumbo v5, "WifiP2pDataTransferInfo"

    const-string/jumbo v6, "Invalid data size"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_11a
    return-void

    .line 105
    :cond_11b
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bc

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataLocation:Ljava/lang/String;

    .line 107
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    .line 108
    const/4 v14, 0x0

    .line 109
    .local v14, "extension":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataLocation:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 111
    .local v17, "filePath":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataLocation:Ljava/lang/String;

    invoke-direct {v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v15, "file":Ljava/io/File;
    if-nez v15, :cond_15b

    .line 113
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_15a

    const-string/jumbo v5, "WifiP2pDataTransferInfo"

    const-string/jumbo v6, "File does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_15a
    return-void

    .line 117
    :cond_15b
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    .line 119
    const-string/jumbo v5, "."

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    .line 120
    .local v18, "index":I
    if-lez v18, :cond_17e

    add-int/lit8 v5, v18, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_17e

    .line 121
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 123
    .end local v14    # "extension":Ljava/lang/String;
    :cond_17e
    if-eqz v14, :cond_1aa

    .line 124
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    .line 130
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    if-nez v5, :cond_eb

    .line 132
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->getDefaultFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    goto/16 :goto_eb

    .line 126
    :cond_1aa
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1bb

    const-string/jumbo v5, "WifiP2pDataTransferInfo"

    const-string/jumbo v6, "Failed to get the file type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1bb
    return-void

    .line 135
    .end local v15    # "file":Ljava/io/File;
    .end local v17    # "filePath":Ljava/lang/String;
    .end local v18    # "index":I
    :cond_1bc
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1e0

    const-string/jumbo v5, "WifiP2pDataTransferInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not determine scheme for Uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1e0
    return-void

    .line 150
    :cond_1e1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileNameLength:I

    .line 153
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    if-nez v5, :cond_206

    .line 154
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_205

    const-string/jumbo v5, "WifiP2pDataTransferInfo"

    const-string/jumbo v6, "Failed to get the file type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_205
    return-void

    .line 157
    :cond_206
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileTypeLength:I

    .line 159
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->valid:Z

    .line 162
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->totalByte:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileNameLength:I

    add-int/lit8 v5, v5, 0x5

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->totalByte:J

    .line 165
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->totalByte:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileTypeLength:I

    add-int/lit8 v5, v5, 0x5

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->totalByte:J

    .line 168
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->totalByte:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    const-wide/16 v22, 0x9

    add-long v8, v8, v22

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->totalByte:J

    .line 50
    return-void
.end method

.method private getDefaultFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 173
    .local v1, "format":Ljava/lang/String;
    const/4 v0, 0x0

    .line 175
    .local v0, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 176
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "fileName":Ljava/lang/String;
    return-object v0
.end method

.method private getFileName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 183
    const/4 v0, -0x1

    .line 184
    .local v0, "columnIndex":I
    const/4 v1, 0x0

    .line 186
    .local v1, "fileName":Ljava/lang/String;
    const-string/jumbo v4, "_display_name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 187
    if-eq v0, v5, :cond_13

    .line 188
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 191
    return-object v1

    .line 198
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_13
    const-string/jumbo v4, "_data"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 199
    if-eq v0, v5, :cond_31

    .line 200
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_2e

    .line 203
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 205
    .local v2, "lastIndex":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    .end local v2    # "lastIndex":I
    :cond_2e
    if-eqz v1, :cond_31

    .line 209
    return-object v1

    .line 215
    .end local v3    # "path":Ljava/lang/String;
    :cond_31
    invoke-direct {p0, p2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->getDefaultFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1    # "fileName":Ljava/lang/String;
    return-object v1
.end method

.method private getFileSize(Landroid/database/Cursor;J)J
    .registers 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "sizeFromFileDescriptor"    # J

    .prologue
    .line 221
    const/4 v0, -0x1

    .line 222
    .local v0, "columnIndex":I
    const-wide/16 v2, 0x0

    .line 224
    .local v2, "fileSize":J
    const-string/jumbo v1, "_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 225
    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 226
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    .line 231
    :goto_12
    return-wide v2

    .line 228
    :cond_13
    move-wide v2, p2

    goto :goto_12
.end method
