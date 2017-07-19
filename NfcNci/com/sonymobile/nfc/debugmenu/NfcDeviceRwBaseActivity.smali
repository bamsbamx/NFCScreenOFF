.class public Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
.super Landroid/app/Activity;
.source "NfcDeviceRwBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;,
        Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;,
        Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;,
        Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;,
        Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;,
        Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field protected static final MENU_ID_LOAD_FROM:I = 0x1

.field protected static final MENU_ID_SAVE_TO:I = 0x2

.field protected static final MENU_ID_SET_PATH:I = 0x3

.field private static final PREF:Ljava/lang/String; = "NfcDeviceRwBaseActivityPrefs"

.field private static final PREF_LISTITEM:Ljava/lang/String; = "listitem"

.field private static final PREF_SETTINGS_FILE:Ljava/lang/String; = "settings_file"

.field private static final TAG:Ljava/lang/String; = "NfcDeviceRwBaseActivity"


# instance fields
.field protected mCheckBox:Landroid/widget/CheckBox;

.field protected mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter",
            "<",
            "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrefs:Landroid/content/SharedPreferences;

.field protected mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field protected mSettingFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static varargs joinAsString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1431
    if-eqz p0, :cond_5

    if-nez p1, :cond_e

    .line 1432
    :cond_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "input arguments must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1435
    :cond_e
    array-length v2, p1

    if-nez v2, :cond_15

    .line 1436
    const-string/jumbo v2, ""

    return-object v2

    .line 1439
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_21
    array-length v2, p1

    if-ge v0, v2, :cond_34

    .line 1441
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1443
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadSettingsFromFile()Z
    .registers 14

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 389
    .local v8, "lineno":I
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mSettingFilePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_e} :catch_1d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_e} :catch_1d3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_137
    .catchall {:try_start_2 .. :try_end_e} :catchall_1a6

    .line 392
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_e
    :goto_e
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_100

    .line 393
    add-int/lit8 v8, v8, 0x1

    .line 394
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 397
    invoke-static {v7}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->createInstance(Ljava/lang/String;)Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    move-result-object v6

    .line 400
    .local v6, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    iget-object v10, v6, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-virtual {v10}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->get()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->getItemFromAddress(J)Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    move-result-object v5

    .line 401
    .local v5, "existingItem":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    if-eqz v5, :cond_7b

    .line 404
    iget-object v9, v6, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v9}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->isNa()Z

    move-result v9

    if-nez v9, :cond_41

    .line 405
    iget-object v9, v5, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    iget-object v10, v6, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v10}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->get()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->set([B)V

    .line 407
    :cond_41
    iget-object v9, v5, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    iget-object v10, v6, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v10}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->get()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->set([B)V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_4c} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_4c} :catch_88
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_4c} :catch_1d6
    .catchall {:try_start_e .. :try_end_4c} :catchall_1cd

    goto :goto_e

    .line 416
    .end local v5    # "existingItem":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    .end local v6    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    .end local v7    # "line":Ljava/lang/String;
    :catch_4d
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .line 417
    .end local v1    # "br":Ljava/io/BufferedReader;
    :goto_4f
    :try_start_4f
    const-string/jumbo v9, "NfcDeviceRwBaseActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadSettingsFromFile(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showErrorDialog(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_4f .. :try_end_74} :catchall_1a6

    .line 426
    if-eqz v0, :cond_79

    .line 428
    :try_start_76
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_185

    .line 434
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_79
    :goto_79
    const/4 v9, 0x1

    return v9

    .line 409
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "existingItem":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    .restart local v6    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_7b
    :try_start_7b
    iget-object v9, v6, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    sget-object v10, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->N_A:[B

    invoke-virtual {v9, v10}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->set([B)V

    .line 410
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v9, v6}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->add(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V
    :try_end_87
    .catch Ljava/io/FileNotFoundException; {:try_start_7b .. :try_end_87} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_87} :catch_88
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_87} :catch_1d6
    .catchall {:try_start_7b .. :try_end_87} :catchall_1cd

    goto :goto_e

    .line 419
    .end local v5    # "existingItem":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    .end local v6    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    .end local v7    # "line":Ljava/lang/String;
    :catch_88
    move-exception v4

    .local v4, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v1

    .line 420
    .end local v1    # "br":Ljava/io/BufferedReader;
    :goto_8a
    :try_start_8a
    const-string/jumbo v9, "NfcDeviceRwBaseActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadSettingsFromFile(): Line "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Line "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showErrorDialog(Ljava/lang/String;)V
    :try_end_d9
    .catchall {:try_start_8a .. :try_end_d9} :catchall_1a6

    .line 426
    if-eqz v0, :cond_79

    .line 428
    :try_start_db
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_79

    .line 429
    :catch_df
    move-exception v3

    .line 430
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v9, "NfcDeviceRwBaseActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadSettingsFromFile(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_79

    .line 414
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_100
    :try_start_100
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v9}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->notifyDataSetChanged()V

    .line 415
    const v9, 0x7f090123

    invoke-virtual {p0, v9}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showCompleteDialog(Ljava/lang/String;)V
    :try_end_10f
    .catch Ljava/io/FileNotFoundException; {:try_start_100 .. :try_end_10f} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_100 .. :try_end_10f} :catch_88
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_10f} :catch_1d6
    .catchall {:try_start_100 .. :try_end_10f} :catchall_1cd

    .line 426
    if-eqz v1, :cond_114

    .line 428
    :try_start_111
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_117

    :cond_114
    :goto_114
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto/16 :goto_79

    .line 429
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_117
    move-exception v3

    .line 430
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "NfcDeviceRwBaseActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadSettingsFromFile(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    .line 422
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .local v0, "br":Ljava/io/BufferedReader;
    :catch_137
    move-exception v3

    .line 423
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_138
    :try_start_138
    const-string/jumbo v9, "NfcDeviceRwBaseActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadSettingsFromFile(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showErrorDialog(Ljava/lang/String;)V
    :try_end_15d
    .catchall {:try_start_138 .. :try_end_15d} :catchall_1a6

    .line 426
    if-eqz v0, :cond_79

    .line 428
    :try_start_15f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_162} :catch_164

    goto/16 :goto_79

    .line 429
    :catch_164
    move-exception v3

    .line 430
    const-string/jumbo v9, "NfcDeviceRwBaseActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadSettingsFromFile(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_79

    .line 429
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_185
    move-exception v3

    .line 430
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "NfcDeviceRwBaseActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadSettingsFromFile(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_79

    .line 425
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1a6
    move-exception v9

    .line 426
    :goto_1a7
    if-eqz v0, :cond_1ac

    .line 428
    :try_start_1a9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1ac} :catch_1ad

    .line 425
    :cond_1ac
    :goto_1ac
    throw v9

    .line 429
    :catch_1ad
    move-exception v3

    .line 430
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "NfcDeviceRwBaseActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadSettingsFromFile(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ac

    .line 425
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1cd
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_1a7

    .line 416
    .local v0, "br":Ljava/io/BufferedReader;
    :catch_1d0
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_4f

    .line 419
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1d3
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_8a

    .line 422
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1d6
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto/16 :goto_138
.end method

.method private saveSettingsToFile()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v6}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->getItem()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 443
    .local v3, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    invoke-virtual {v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 446
    .end local v3    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    :cond_2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_3c

    .line 448
    const v6, 0x7f09012c

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showErrorDialog(Ljava/lang/String;)V

    .line 449
    return v9

    .line 453
    :cond_3c
    const/4 v1, 0x0

    .line 455
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_3d
    new-instance v2, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mSettingFilePath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_44} :catch_7c
    .catchall {:try_start_3d .. :try_end_44} :catchall_c8

    .line 456
    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 458
    const v6, 0x7f090124

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showCompleteDialog(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_55} :catch_f2
    .catchall {:try_start_44 .. :try_end_55} :catchall_ef

    .line 463
    if-eqz v2, :cond_5a

    .line 465
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5c

    :cond_5a
    :goto_5a
    move-object v1, v2

    .line 471
    .end local v2    # "fw":Ljava/io/FileWriter;
    :cond_5b
    :goto_5b
    return v9

    .line 466
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_5c
    move-exception v0

    .line 467
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "NfcDeviceRwBaseActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveSettingsToFile(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 459
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :catch_7c
    move-exception v0

    .line 460
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_7d
    :try_start_7d
    const-string/jumbo v6, "NfcDeviceRwBaseActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveSettingsToFile(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showErrorDialog(Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_7d .. :try_end_a2} :catchall_c8

    .line 463
    if-eqz v1, :cond_5b

    .line 465
    :try_start_a4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_5b

    .line 466
    :catch_a8
    move-exception v0

    .line 467
    const-string/jumbo v6, "NfcDeviceRwBaseActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveSettingsToFile(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 462
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_c8
    move-exception v6

    .line 463
    :goto_c9
    if-eqz v1, :cond_ce

    .line 465
    :try_start_cb
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 462
    :cond_ce
    :goto_ce
    throw v6

    .line 466
    :catch_cf
    move-exception v0

    .line 467
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "NfcDeviceRwBaseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saveSettingsToFile(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 462
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catchall_ef
    move-exception v6

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v1, "fw":Ljava/io/FileWriter;
    goto :goto_c9

    .line 459
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_f2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_7d
.end method

.method private setSettingsFilePath()Z
    .registers 6

    .prologue
    .line 478
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 479
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mSettingFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;Landroid/widget/EditText;)V

    .line 493
    .local v1, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    const v3, 0x7f09013d

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 493
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 496
    const v3, 0x7f090130

    .line 493
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 497
    const v3, 0x7f090131

    const/4 v4, 0x0

    .line 493
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 499
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method protected checkAndGetConfigurationValue([B[B)[B
    .registers 4
    .param p1, "idTlv"    # [B
    .param p2, "dataTlv"    # [B

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createDataTlv(J[B)[B
    .registers 5
    .param p1, "address"    # J
    .param p3, "data"    # [B

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createIdTlv(J)[B
    .registers 4
    .param p1, "address"    # J

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createListItemAdatper()Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter",
            "<",
            "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f030018

    .line 256
    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    return-object v0
.end method

.method protected createReaderTask()Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;
    .registers 3

    .prologue
    .line 365
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ReaderTask;)V

    return-object v0
.end method

.method protected createWriteTask()Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;
    .registers 3

    .prologue
    .line 348
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$WriterTask;)V

    return-object v0
.end method

.method protected getAddressFormatString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    const-string/jumbo v0, "%04X"

    return-object v0
.end method

.method protected getDefaultSettingsFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    const-string/jumbo v0, "setting.csv"

    return-object v0
.end method

.method getDigitCountToShow(J)I
    .registers 8
    .param p1, "maxValue"    # J

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "count":I
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_d

    .line 578
    const/16 v1, 0x8

    ushr-long/2addr p1, v1

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 581
    :cond_d
    mul-int/lit8 v1, v0, 0x2

    return v1
.end method

.method protected getMaxAddress()J
    .registers 3

    .prologue
    .line 281
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getMaxValue()J
    .registers 3

    .prologue
    .line 295
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getMessageStringOnReading()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected getMinAddress()J
    .registers 3

    .prologue
    .line 274
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getMinValue()J
    .registers 3

    .prologue
    .line 288
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getPreferenceFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    const-string/jumbo v0, "NfcDeviceRwBaseActivityPrefs"

    return-object v0
.end method

.method protected getTitleOnReading()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitleOnWriting()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getValueFormatString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    const-string/jumbo v0, "%02X"

    return-object v0
.end method

.method protected initContentViews()V
    .registers 4

    .prologue
    .line 198
    const v2, 0x7f030017

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->setContentView(I)V

    .line 201
    const v2, 0x7f0d0081

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 202
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v2, 0x7f0d0082

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 204
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v2, 0x7f0d0083

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 206
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v2, 0x7f0d007b

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 208
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v2, 0x7f0d0085

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 210
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v2, 0x7f0d0084

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 212
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v2, 0x7f0d0015

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 215
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->createListItemAdatper()Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    .line 218
    const v2, 0x7f0d0007

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 219
    .local v1, "liveView":Landroid/widget/ListView;
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    return-void
.end method

.method protected initPreferences()V
    .registers 4

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getPreferenceFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 265
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 266
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "settings_file"

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getDefaultSettingsFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mSettingFilePath:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->restoreFromSharedPreferences()V

    .line 263
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    .line 136
    const-string/jumbo v0, "NfcDeviceRwBaseActivity"

    const-string/jumbo v1, "onClick(): Clicked unknown view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_10
    return-void

    .line 108
    :sswitch_11
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showConfigAddressInputDialog()V

    goto :goto_10

    .line 112
    :sswitch_15
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->removeCheckedItem()V

    .line 113
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_10

    .line 117
    :sswitch_21
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->clearCheckedItem()V

    goto :goto_10

    .line 121
    :sswitch_27
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->setDefaultToCheckedItem()V

    goto :goto_10

    .line 125
    :sswitch_2d
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->writeCheckedItem()V

    goto :goto_10

    .line 129
    :sswitch_31
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->readCheckedItem()V

    goto :goto_10

    .line 133
    :sswitch_35
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->setChecked(Z)V

    goto :goto_10

    .line 105
    nop

    :sswitch_data_42
    .sparse-switch
        0x7f0d0015 -> :sswitch_35
        0x7f0d007b -> :sswitch_27
        0x7f0d0081 -> :sswitch_11
        0x7f0d0082 -> :sswitch_15
        0x7f0d0083 -> :sswitch_21
        0x7f0d0084 -> :sswitch_31
        0x7f0d0085 -> :sswitch_2d
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->initContentViews()V

    .line 94
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->initPreferences()V

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 164
    const/4 v0, 0x1

    const v1, 0x7f090123

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 165
    const/4 v0, 0x2

    const v1, 0x7f090124

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 166
    const/4 v0, 0x3

    const v1, 0x7f090125

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 147
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    .line 142
    :goto_d
    return-void

    .line 149
    :pswitch_e
    iget-object v1, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    iget-object v2, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    .line 150
    const v3, 0x7f09011a

    .line 149
    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showConfigDetailDialog(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;I)V

    goto :goto_d

    .line 153
    :pswitch_19
    iget-object v1, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    iget-object v2, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    .line 154
    const v3, 0x7f09011b

    .line 153
    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showConfigDetailDialog(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;I)V

    goto :goto_d

    .line 157
    :pswitch_24
    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showNewValueInputDialog(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V

    goto :goto_d

    .line 147
    :pswitch_data_28
    .packed-switch 0x7f0d001d
        :pswitch_e
        :pswitch_19
        :pswitch_24
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 187
    const-string/jumbo v1, "NfcDeviceRwBaseActivity"

    const-string/jumbo v2, "onOptionsItemSelected(): Selected unknown menu"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 191
    .local v0, "ret":Z
    :goto_14
    return v0

    .line 176
    .end local v0    # "ret":Z
    :pswitch_15
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->loadSettingsFromFile()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_14

    .line 180
    .end local v0    # "ret":Z
    :pswitch_1a
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->saveSettingsToFile()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_14

    .line 184
    .end local v0    # "ret":Z
    :pswitch_1f
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->setSettingsFilePath()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_14

    .line 173
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 100
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->storeToSharedPreferences()V

    .line 98
    return-void
.end method

.method protected readCheckedItem()V
    .registers 5

    .prologue
    .line 372
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->getCheckedItem()Ljava/util/List;

    move-result-object v0

    .line 373
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 374
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->createReaderTask()Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    .line 375
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 374
    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 371
    :goto_21
    return-void

    .line 377
    :cond_22
    const v1, 0x7f09012d

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_21
.end method

.method protected restoreFromSharedPreferences()V
    .registers 8

    .prologue
    .line 323
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "listitem"

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 324
    .local v3, "restoreData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "flattenedString$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    .local v1, "flattenedString":Ljava/lang/String;
    :try_start_1e
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->createInstance(Ljava/lang/String;)Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->add(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_12

    .line 328
    :catch_28
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "NfcDeviceRwBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreFromSharedPreferences(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "flattenedString":Ljava/lang/String;
    :cond_47
    return-void
.end method

.method protected showCompleteDialog(Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 687
    const v1, 0x7f09013e

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "msg":Ljava/lang/String;
    const v1, 0x108009b

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showGenericDialog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 686
    return-void
.end method

.method protected showConfigAddressInputDialog()V
    .registers 9

    .prologue
    .line 539
    const v0, 0x7f09013b

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "title":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getMinAddress()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getMaxAddress()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const v3, 0x7f090135

    invoke-virtual {p0, v3, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "hint":Ljava/lang/String;
    new-instance v5, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;

    invoke-direct {v5, p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;)V

    .line 572
    .local v5, "completeListener":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getMaxAddress()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getDigitCountToShow(J)I

    move-result v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;)V

    .line 538
    return-void
.end method

.method protected showConfigDetailDialog(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;I)V
    .registers 13
    .param p1, "address"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;
    .param p2, "value"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;
    .param p3, "titleId"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 640
    const-string/jumbo v3, " [%s] - [%s]"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-virtual {p0, p3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 643
    .local v2, "titleTextView":Landroid/widget/TextView;
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 645
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 646
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 647
    invoke-virtual {p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->isNa()Z

    move-result v3

    if-nez v3, :cond_65

    .line 648
    const-string/jumbo v3, "%s (%d octet)"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->get()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    invoke-virtual {p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :goto_4c
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 657
    const v4, 0x7f090130

    const/4 v5, 0x0

    .line 654
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 639
    return-void

    .line 651
    :cond_65
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c
.end method

.method protected showErrorDialog(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 667
    const v1, 0x7f090134

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method protected showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 678
    const v0, 0x1080027

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showGenericDialog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 677
    return-void
.end method

.method protected showGenericDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .prologue
    .line 699
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 703
    const v1, 0x7f090130

    const/4 v2, 0x0

    .line 699
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 698
    return-void
.end method

.method protected showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;)V
    .registers 14
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "completeListener"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;

    .prologue
    const/4 v7, 0x0

    .line 589
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 590
    .local v4, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 593
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;

    invoke-direct {v2, p0, p2, p3}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 594
    .local v2, "editText":Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;
    invoke-virtual {v2}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->getInputType()I

    move-result v5

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->setInputType(I)V

    .line 595
    if-eqz p4, :cond_22

    .line 596
    invoke-virtual {v2, p4}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->setText(Ljava/lang/CharSequence;)V

    .line 599
    :cond_22
    new-instance v5, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$4;

    invoke-direct {v5, p0, v4, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$4;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 614
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 615
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 616
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 617
    const v5, 0x7f090130

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 618
    const v5, 0x7f090131

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 620
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 621
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 624
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 625
    .local v3, "okButton":Landroid/widget/Button;
    new-instance v5, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$5;

    invoke-direct {v5, p0, v2, p5, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$5;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    return-void
.end method

.method protected showNewValueInputDialog(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V
    .registers 12
    .param p1, "item"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09013c

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 515
    const-string/jumbo v3, " [%s]"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-virtual {v7}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "title":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getMinValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getMaxValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v9

    const v3, 0x7f090135

    invoke-virtual {p0, v3, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "hint":Ljava/lang/String;
    iget-object v0, p1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->isNa()Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v4, 0x0

    .line 518
    :goto_52
    new-instance v5, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$2;

    invoke-direct {v5, p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$2;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V

    .line 532
    .local v5, "completeListener":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;
    const/16 v3, 0x200

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;)V

    .line 513
    return-void

    .line 517
    .end local v5    # "completeListener":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;
    :cond_5e
    iget-object v0, p1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "currentValue":Ljava/lang/String;
    goto :goto_52
.end method

.method protected storeToSharedPreferences()V
    .registers 6

    .prologue
    .line 339
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 340
    .local v2, "saveData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->getItem()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 341
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 343
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    :cond_23
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "listitem"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 344
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    return-void
.end method

.method protected verifyData([B[B)Z
    .registers 4
    .param p1, "data"    # [B
    .param p2, "verifyData"    # [B

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method protected writeCheckedItem()V
    .registers 5

    .prologue
    .line 355
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->getWritableItem()Ljava/util/List;

    move-result-object v0

    .line 356
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 357
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->createWriteTask()Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    .line 358
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 357
    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 354
    :goto_21
    return-void

    .line 360
    :cond_22
    const v1, 0x7f09012e

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_21
.end method
