.class public Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;
.super Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;
.source "NfcEepromRwMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_FILE_PATH:Ljava/lang/String;

.field private static final MENU_ID_LOAD_FROM:I = 0x1

.field private static final MENU_ID_SAVE_TO:I = 0x2

.field private static final MENU_ID_SET_PATH:I = 0x3

.field private static final PREF:Ljava/lang/String; = "NfcEepromRwModePrefs"

.field private static final PREF_LISTITEM:Ljava/lang/String; = "listitem"

.field private static final PREF_SETTINGS_FILE:Ljava/lang/String; = "settings_file"

.field private static final PROPERTY_NFC_EEPROM_SETTING_KEY:Ljava/lang/String; = "eepromsetting"

.field private static final TAG:Ljava/lang/String; = "NfcEepromRwMode"


# instance fields
.field private mSettingFilePath:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mSettingFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/nfc_eeprom_settings.csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->DEFAULT_FILE_PATH:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;-><init>()V

    return-void
.end method

.method private loadSettingsFromFile()Z
    .registers 14

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 142
    .local v8, "lineno":I
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    iget-object v10, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mSettingFilePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_e} :catch_1d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_e} :catch_1d3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_137
    .catchall {:try_start_2 .. :try_end_e} :catchall_1a6

    .line 145
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_e
    :goto_e
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_100

    .line 146
    add-int/lit8 v8, v8, 0x1

    .line 147
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 150
    invoke-static {v7}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->createInstance(Ljava/lang/String;)Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    move-result-object v6

    .line 153
    .local v6, "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    iget-object v10, v6, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v10}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->get()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->getItemFromAddress(I)Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    move-result-object v5

    .line 154
    .local v5, "existingItem":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    if-eqz v5, :cond_7b

    .line 157
    iget-object v9, v6, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v9}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->isNa()Z

    move-result v9

    if-nez v9, :cond_41

    .line 158
    iget-object v9, v5, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    iget-object v10, v6, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v10}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->get()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->set([B)V

    .line 160
    :cond_41
    iget-object v9, v5, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    iget-object v10, v6, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v10}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->get()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->set([B)V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_4c} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_4c} :catch_88
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_4c} :catch_1d6
    .catchall {:try_start_e .. :try_end_4c} :catchall_1cd

    goto :goto_e

    .line 169
    .end local v5    # "existingItem":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .end local v6    # "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .end local v7    # "line":Ljava/lang/String;
    :catch_4d
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .line 170
    .end local v1    # "br":Ljava/io/BufferedReader;
    :goto_4f
    :try_start_4f
    const-string/jumbo v9, "NfcEepromRwMode"

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

    .line 171
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->showErrorDialog(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_4f .. :try_end_74} :catchall_1a6

    .line 179
    if-eqz v0, :cond_79

    .line 181
    :try_start_76
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_185

    .line 187
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_79
    :goto_79
    const/4 v9, 0x1

    return v9

    .line 162
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "existingItem":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .restart local v6    # "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_7b
    :try_start_7b
    iget-object v9, v6, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    sget-object v10, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->N_A:[B

    invoke-virtual {v9, v10}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->set([B)V

    .line 163
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v9, v6}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->add(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)V
    :try_end_87
    .catch Ljava/io/FileNotFoundException; {:try_start_7b .. :try_end_87} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_87} :catch_88
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_87} :catch_1d6
    .catchall {:try_start_7b .. :try_end_87} :catchall_1cd

    goto :goto_e

    .line 172
    .end local v5    # "existingItem":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .end local v6    # "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    .end local v7    # "line":Ljava/lang/String;
    :catch_88
    move-exception v4

    .local v4, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v1

    .line 173
    .end local v1    # "br":Ljava/io/BufferedReader;
    :goto_8a
    :try_start_8a
    const-string/jumbo v9, "NfcEepromRwMode"

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

    .line 174
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

    invoke-virtual {p0, v9}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->showErrorDialog(Ljava/lang/String;)V
    :try_end_d9
    .catchall {:try_start_8a .. :try_end_d9} :catchall_1a6

    .line 179
    if-eqz v0, :cond_79

    .line 181
    :try_start_db
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_79

    .line 182
    :catch_df
    move-exception v3

    .line 183
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v9, "NfcEepromRwMode"

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

    .line 167
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_100
    :try_start_100
    iget-object v9, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v9}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->notifyDataSetChanged()V

    .line 168
    const v9, 0x7f09014a

    invoke-virtual {p0, v9}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->showCompleteDialog(Ljava/lang/String;)V
    :try_end_10f
    .catch Ljava/io/FileNotFoundException; {:try_start_100 .. :try_end_10f} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_100 .. :try_end_10f} :catch_88
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_10f} :catch_1d6
    .catchall {:try_start_100 .. :try_end_10f} :catchall_1cd

    .line 179
    if-eqz v1, :cond_114

    .line 181
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

    .line 182
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_117
    move-exception v3

    .line 183
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "NfcEepromRwMode"

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

    .line 175
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .local v0, "br":Ljava/io/BufferedReader;
    :catch_137
    move-exception v3

    .line 176
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_138
    :try_start_138
    const-string/jumbo v9, "NfcEepromRwMode"

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

    .line 177
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->showErrorDialog(Ljava/lang/String;)V
    :try_end_15d
    .catchall {:try_start_138 .. :try_end_15d} :catchall_1a6

    .line 179
    if-eqz v0, :cond_79

    .line 181
    :try_start_15f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_162} :catch_164

    goto/16 :goto_79

    .line 182
    :catch_164
    move-exception v3

    .line 183
    const-string/jumbo v9, "NfcEepromRwMode"

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

    .line 182
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_185
    move-exception v3

    .line 183
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "NfcEepromRwMode"

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

    .line 178
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1a6
    move-exception v9

    .line 179
    :goto_1a7
    if-eqz v0, :cond_1ac

    .line 181
    :try_start_1a9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1ac} :catch_1ad

    .line 178
    :cond_1ac
    :goto_1ac
    throw v9

    .line 182
    :catch_1ad
    move-exception v3

    .line 183
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "NfcEepromRwMode"

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

    .line 178
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1cd
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_1a7

    .line 169
    .local v0, "br":Ljava/io/BufferedReader;
    :catch_1d0
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_4f

    .line 172
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1d3
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_8a

    .line 175
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

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v6}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->getItem()Ljava/util/List;

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

    check-cast v3, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .line 196
    .local v3, "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    invoke-virtual {v3}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 199
    .end local v3    # "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    :cond_2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_3c

    .line 201
    const v6, 0x7f090153

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->showErrorDialog(Ljava/lang/String;)V

    .line 202
    return v9

    .line 206
    :cond_3c
    const/4 v1, 0x0

    .line 208
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_3d
    new-instance v2, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mSettingFilePath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_44} :catch_7c
    .catchall {:try_start_3d .. :try_end_44} :catchall_c8

    .line 209
    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 211
    const v6, 0x7f09014b

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->showCompleteDialog(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_55} :catch_f2
    .catchall {:try_start_44 .. :try_end_55} :catchall_ef

    .line 216
    if-eqz v2, :cond_5a

    .line 218
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5c

    :cond_5a
    :goto_5a
    move-object v1, v2

    .line 224
    .end local v2    # "fw":Ljava/io/FileWriter;
    :cond_5b
    :goto_5b
    return v9

    .line 219
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_5c
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "NfcEepromRwMode"

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

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :catch_7c
    move-exception v0

    .line 213
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_7d
    :try_start_7d
    const-string/jumbo v6, "NfcEepromRwMode"

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

    .line 214
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->showErrorDialog(Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_7d .. :try_end_a2} :catchall_c8

    .line 216
    if-eqz v1, :cond_5b

    .line 218
    :try_start_a4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_5b

    .line 219
    :catch_a8
    move-exception v0

    .line 220
    const-string/jumbo v6, "NfcEepromRwMode"

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

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_c8
    move-exception v6

    .line 216
    :goto_c9
    if-eqz v1, :cond_ce

    .line 218
    :try_start_cb
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 215
    :cond_ce
    :goto_ce
    throw v6

    .line 219
    :catch_cf
    move-exception v0

    .line 220
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "NfcEepromRwMode"

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

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catchall_ef
    move-exception v6

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v1, "fw":Ljava/io/FileWriter;
    goto :goto_c9

    .line 212
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
    .line 231
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mSettingFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$1;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;Landroid/widget/EditText;)V

    .line 246
    .local v1, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    const v3, 0x7f090165

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 249
    const v3, 0x7f090157

    .line 246
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 250
    const v3, 0x7f090158

    const/4 v4, 0x0

    .line 246
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 252
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method protected initPreferences()V
    .registers 4

    .prologue
    .line 100
    const-string/jumbo v0, "NfcEepromRwModePrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mPrefs:Landroid/content/SharedPreferences;

    .line 101
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 102
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "settings_file"

    sget-object v2, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->DEFAULT_FILE_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mSettingFilePath:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->restoreFromSharedPreferences()V

    .line 99
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 65
    const/4 v0, 0x1

    const v1, 0x7f09014a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 66
    const/4 v0, 0x2

    const v1, 0x7f09014b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 67
    const/4 v0, 0x3

    const v1, 0x7f09014c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 68
    invoke-super {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 88
    const-string/jumbo v1, "NfcEepromRwMode"

    const-string/jumbo v2, "onOptionsItemSelected(): Selected unknown menu"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-super {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 92
    .local v0, "ret":Z
    :goto_14
    return v0

    .line 77
    .end local v0    # "ret":Z
    :pswitch_15
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->loadSettingsFromFile()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_14

    .line 81
    .end local v0    # "ret":Z
    :pswitch_1a
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->saveSettingsToFile()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_14

    .line 85
    .end local v0    # "ret":Z
    :pswitch_1f
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->setSettingsFilePath()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_14

    .line 74
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method

.method protected readCheckedItem()V
    .registers 5

    .prologue
    .line 125
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->getCheckedItem()Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 127
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;)V

    sget-object v3, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .line 127
    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$ReaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    :goto_23
    return-void

    .line 130
    :cond_24
    const v1, 0x7f090154

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected writeCheckedItem()V
    .registers 5

    .prologue
    .line 111
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->getWritableItem()Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 113
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;)V

    sget-object v3, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .line 113
    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode$WriterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    :goto_23
    return-void

    .line 116
    :cond_24
    const v1, 0x7f090155

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_23
.end method
