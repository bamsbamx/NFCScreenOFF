.class public Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;
.super Ljava/lang/Object;
.source "BondedDeviceInfoAccess.java"


# static fields
.field static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BondedDeviceInfoAccess"


# instance fields
.field private mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

.field private mContext:Landroid/content/Context;

.field private mFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mFilename:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    invoke-direct {v0}, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->load()V

    .line 72
    return-void
.end method


# virtual methods
.method contains(Ljava/lang/String;)Z
    .registers 4
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    if-nez v0, :cond_11

    .line 125
    :cond_6
    const-string/jumbo v0, "BondedDeviceInfoAccess"

    const-string/jumbo v1, "contains: wrong parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_11
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    invoke-virtual {v0, p1}, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method dumpBondedAddress()V
    .registers 6

    .prologue
    .line 81
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    invoke-virtual {v2}, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->getAddress()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "addr":Ljava/lang/String;
    const-string/jumbo v2, "BondedDeviceInfoAccess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpBondedAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 80
    .end local v0    # "addr":Ljava/lang/String;
    :cond_31
    return-void
.end method

.method load()V
    .registers 10

    .prologue
    .line 133
    const/4 v3, 0x0

    .line 134
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 136
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    iget-object v6, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 137
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_f} :catch_6e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_f} :catch_2e
    .catchall {:try_start_2 .. :try_end_f} :catchall_85

    .line 138
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_f
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    iput-object v6, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_17} :catch_9f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_17} :catch_a2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_17} :catch_a5
    .catchall {:try_start_f .. :try_end_17} :catchall_9c

    .line 147
    if-eqz v5, :cond_1c

    .line 148
    :try_start_19
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 150
    :cond_1c
    if-eqz v3, :cond_21

    .line 151
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_21} :catch_23

    :cond_21
    :goto_21
    move-object v4, v5

    .line 131
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    :cond_22
    :goto_22
    return-void

    .line 153
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_23
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "BondedDeviceInfoAccess"

    const-string/jumbo v7, "Can\'t close the stream: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 143
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_2e
    move-exception v2

    .line 144
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :goto_2f
    :try_start_2f
    const-string/jumbo v6, "BondedDeviceInfoAccess"

    const-string/jumbo v7, "ClassNotFoundException has occurred: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_85

    .line 147
    if-eqz v4, :cond_3d

    .line 148
    :try_start_3a
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 150
    :cond_3d
    if-eqz v3, :cond_22

    .line 151
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_43

    goto :goto_22

    .line 153
    :catch_43
    move-exception v1

    .line 154
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BondedDeviceInfoAccess"

    const-string/jumbo v7, "Can\'t close the stream: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 141
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_4e
    move-exception v1

    .line 142
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4f
    :try_start_4f
    const-string/jumbo v6, "BondedDeviceInfoAccess"

    const-string/jumbo v7, "Can\'t read data from file: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_85

    .line 147
    if-eqz v4, :cond_5d

    .line 148
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 150
    :cond_5d
    if-eqz v3, :cond_22

    .line 151
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_62} :catch_63

    goto :goto_22

    .line 153
    :catch_63
    move-exception v1

    .line 154
    const-string/jumbo v6, "BondedDeviceInfoAccess"

    const-string/jumbo v7, "Can\'t close the stream: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_6e
    move-exception v0

    .line 147
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_6f
    if-eqz v4, :cond_74

    .line 148
    :try_start_71
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 150
    :cond_74
    if-eqz v3, :cond_22

    .line 151
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_7a

    goto :goto_22

    .line 153
    :catch_7a
    move-exception v1

    .line 154
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BondedDeviceInfoAccess"

    const-string/jumbo v7, "Can\'t close the stream: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 145
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_85
    move-exception v6

    .line 147
    :goto_86
    if-eqz v4, :cond_8b

    .line 148
    :try_start_88
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 150
    :cond_8b
    if-eqz v3, :cond_90

    .line 151
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_90} :catch_91

    .line 145
    :cond_90
    :goto_90
    throw v6

    .line 153
    :catch_91
    move-exception v1

    .line 154
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "BondedDeviceInfoAccess"

    const-string/jumbo v8, "Can\'t close the stream: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_90

    .line 145
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_9c
    move-exception v6

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    goto :goto_86

    .line 139
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_9f
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_6f

    .line 141
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_a2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_4f

    .line 143
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_a5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2f
.end method

.method removeAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    if-nez v0, :cond_10

    .line 115
    :cond_6
    const-string/jumbo v0, "BondedDeviceInfoAccess"

    const-string/jumbo v1, "removeAddress: wrong parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 118
    :cond_10
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    invoke-virtual {v0, p1}, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->removeAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 119
    invoke-virtual {p0}, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->save()V

    .line 113
    :cond_1b
    return-void
.end method

.method save()V
    .registers 8

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 164
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mFilename:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 165
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_2c
    .catchall {:try_start_2 .. :try_end_10} :catchall_4c

    .line 166
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_10
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_66
    .catchall {:try_start_10 .. :try_end_15} :catchall_63

    .line 171
    if-eqz v3, :cond_1a

    .line 172
    :try_start_17
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 174
    :cond_1a
    if-eqz v1, :cond_1f

    .line 175
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_21

    :cond_1f
    :goto_1f
    move-object v2, v3

    .line 159
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :cond_20
    :goto_20
    return-void

    .line 177
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_21
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "BondedDeviceInfoAccess"

    const-string/jumbo v5, "Can\'t close the stream: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2c
    move-exception v0

    .line 168
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2d
    :try_start_2d
    const-string/jumbo v4, "BondedDeviceInfoAccess"

    const-string/jumbo v5, "Can\'t write data to file: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_4c

    .line 171
    if-eqz v2, :cond_3b

    .line 172
    :try_start_38
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 174
    :cond_3b
    if-eqz v1, :cond_20

    .line 175
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_40} :catch_41

    goto :goto_20

    .line 177
    :catch_41
    move-exception v0

    .line 178
    const-string/jumbo v4, "BondedDeviceInfoAccess"

    const-string/jumbo v5, "Can\'t close the stream: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4c
    move-exception v4

    .line 171
    :goto_4d
    if-eqz v2, :cond_52

    .line 172
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 174
    :cond_52
    if-eqz v1, :cond_57

    .line 175
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_57} :catch_58

    .line 169
    :cond_57
    :goto_57
    throw v4

    .line 177
    :catch_58
    move-exception v0

    .line 178
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "BondedDeviceInfoAccess"

    const-string/jumbo v6, "Can\'t close the stream: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_63
    move-exception v4

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    goto :goto_4d

    .line 167
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_66
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_2d
.end method

.method setAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 87
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    if-nez v0, :cond_10

    .line 88
    :cond_6
    const-string/jumbo v0, "BondedDeviceInfoAccess"

    const-string/jumbo v1, "setAddress: wrong parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 91
    :cond_10
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    invoke-virtual {v0, p1}, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->setAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 92
    invoke-virtual {p0}, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->save()V

    .line 86
    :cond_1b
    return-void
.end method

.method setDevices(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v2, 0x0

    .line 99
    .local v2, "updateFlg":Z
    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    if-nez v3, :cond_11

    .line 100
    :cond_7
    const-string/jumbo v3, "BondedDeviceInfoAccess"

    const-string/jumbo v4, "setDevices: wrong parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 103
    :cond_11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 104
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->mBondedDeviceInfo:Lcom/sonymobile/nfc/handover/BondedDeviceInfo;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->setAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 105
    const/4 v2, 0x1

    goto :goto_15

    .line 108
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2f
    if-eqz v2, :cond_34

    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->save()V

    .line 96
    :cond_34
    return-void
.end method
