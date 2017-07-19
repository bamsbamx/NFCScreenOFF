.class public Lcom/android/nfc/BeamShareActivity;
.super Landroid/app/Activity;
.source "BeamShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/BeamShareActivity$1;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "BeamShareActivity"


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mNdefMessage:Landroid/nfc/NdefMessage;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 236
    new-instance v0, Lcom/android/nfc/BeamShareActivity$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$1;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    return-void
.end method

.method private showNfcDialogAndExit(I)V
    .registers 9
    .param p1, "msgId"    # I

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/BeamShareActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    new-instance v6, Landroid/app/AlertDialog$Builder;

    .line 89
    const/4 v0, 0x5

    .line 88
    invoke-direct {v6, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 90
    .local v6, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 91
    new-instance v0, Lcom/android/nfc/BeamShareActivity$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$2;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    new-instance v0, Lcom/android/nfc/BeamShareActivity$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$3;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    .line 97
    const v1, 0x1040013

    invoke-virtual {v6, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    new-instance v0, Lcom/android/nfc/BeamShareActivity$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$4;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    .line 109
    const v1, 0x1040009

    invoke-virtual {v6, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 84
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 69
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2a

    .line 72
    const-string/jumbo v0, "BeamShareActivity"

    const-string/jumbo v1, "NFC adapter not present."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 65
    :goto_29
    return-void

    .line 75
    :cond_2a
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_39

    .line 76
    const v0, 0x7f090088

    invoke-direct {p0, v0}, Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExit(I)V

    goto :goto_29

    .line 78
    :cond_39
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_29
.end method

.method public parseShareIntentAndFinish(Landroid/content/Intent;)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    if-eqz p1, :cond_4e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "android.intent.action.SEND"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1c

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4e

    .line 144
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 145
    .local v3, "clipData":Landroid/content/ClipData;
    if-eqz v3, :cond_57

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v19

    if-lez v19, :cond_57

    .line 146
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_29
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_83

    .line 147
    invoke-virtual {v3, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 149
    .local v7, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v15

    .line 150
    .local v15, "uri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 152
    .local v11, "plainText":Ljava/lang/String;
    :try_start_3a
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_43} :catch_1a5

    move-result-object v11

    .line 157
    .local v11, "plainText":Ljava/lang/String;
    if-eqz v15, :cond_4f

    .line 159
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 146
    .end local v11    # "plainText":Ljava/lang/String;
    :cond_4b
    :goto_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 141
    .end local v3    # "clipData":Landroid/content/ClipData;
    .end local v6    # "i":I
    .end local v7    # "item":Landroid/content/ClipData$Item;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_4e
    return-void

    .line 160
    .restart local v3    # "clipData":Landroid/content/ClipData;
    .restart local v6    # "i":I
    .restart local v7    # "item":Landroid/content/ClipData$Item;
    .restart local v11    # "plainText":Ljava/lang/String;
    .restart local v15    # "uri":Landroid/net/Uri;
    :cond_4f
    if-eqz v11, :cond_4b

    .line 162
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_4b

    .line 168
    .end local v6    # "i":I
    .end local v7    # "item":Landroid/content/ClipData$Item;
    .end local v11    # "plainText":Ljava/lang/String;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_57
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "android.intent.action.SEND"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e4

    .line 169
    const-string/jumbo v19, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 170
    .restart local v15    # "uri":Landroid/net/Uri;
    const-string/jumbo v19, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 171
    .local v13, "text":Ljava/lang/CharSequence;
    if-eqz v15, :cond_d6

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 201
    .end local v13    # "text":Ljava/lang/CharSequence;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_83
    :goto_83
    const/4 v12, 0x0

    .line 202
    .local v12, "shareData":Landroid/nfc/BeamShareData;
    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 203
    .local v8, "myUserHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_172

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 206
    .local v17, "uriArray":[Landroid/net/Uri;
    const/4 v9, 0x0

    .line 207
    .local v9, "numValidUris":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "uri$iterator":Ljava/util/Iterator;
    :goto_b6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_142

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 209
    .restart local v15    # "uri":Landroid/net/Uri;
    :try_start_c2
    const-string/jumbo v19, "com.android.nfc"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/nfc/BeamShareActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_d0
    .catch Ljava/lang/SecurityException; {:try_start_c2 .. :try_end_d0} :catch_137

    .line 210
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "numValidUris":I
    .local v10, "numValidUris":I
    :try_start_d2
    aput-object v15, v17, v9
    :try_end_d4
    .catch Ljava/lang/SecurityException; {:try_start_d2 .. :try_end_d4} :catch_1a2

    move v9, v10

    .end local v10    # "numValidUris":I
    .restart local v9    # "numValidUris":I
    goto :goto_b6

    .line 174
    .end local v8    # "myUserHandle":Landroid/os/UserHandle;
    .end local v9    # "numValidUris":I
    .end local v12    # "shareData":Landroid/nfc/BeamShareData;
    .end local v16    # "uri$iterator":Ljava/util/Iterator;
    .end local v17    # "uriArray":[Landroid/net/Uri;
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_d6
    if-eqz v13, :cond_83

    .line 176
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_83

    .line 181
    .end local v13    # "text":Ljava/lang/CharSequence;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_e4
    const-string/jumbo v19, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 183
    .local v18, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v19, "android.intent.extra.TEXT"

    .line 182
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 185
    .local v14, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v18, :cond_118

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_118

    .line 186
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "uri$iterator":Ljava/util/Iterator;
    :goto_106
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_83

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 188
    .restart local v15    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    goto :goto_106

    .line 190
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "uri$iterator":Ljava/util/Iterator;
    :cond_118
    if-eqz v14, :cond_83

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_83

    .line 193
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto/16 :goto_83

    .line 212
    .end local v14    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v18    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v8    # "myUserHandle":Landroid/os/UserHandle;
    .restart local v9    # "numValidUris":I
    .restart local v12    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v16    # "uri$iterator":Ljava/util/Iterator;
    .restart local v17    # "uriArray":[Landroid/net/Uri;
    :catch_137
    move-exception v5

    .line 213
    .local v5, "e":Ljava/lang/SecurityException;
    :goto_138
    const-string/jumbo v19, "BeamShareActivity"

    const-string/jumbo v20, "Security exception granting uri permission to NFC process."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v9, 0x0

    .line 218
    .end local v5    # "e":Ljava/lang/SecurityException;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_142
    if-lez v9, :cond_162

    .line 219
    new-instance v12, Landroid/nfc/BeamShareData;

    .end local v12    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v12, v0, v1, v8, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 232
    .end local v9    # "numValidUris":I
    .end local v16    # "uri$iterator":Ljava/util/Iterator;
    .end local v17    # "uriArray":[Landroid/net/Uri;
    .local v12, "shareData":Landroid/nfc/BeamShareData;
    :goto_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/nfc/NfcAdapter;->invokeBeam(Landroid/nfc/BeamShareData;)Z

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 139
    return-void

    .line 222
    .restart local v9    # "numValidUris":I
    .local v12, "shareData":Landroid/nfc/BeamShareData;
    .restart local v16    # "uri$iterator":Ljava/util/Iterator;
    .restart local v17    # "uriArray":[Landroid/net/Uri;
    :cond_162
    new-instance v12, Landroid/nfc/BeamShareData;

    .end local v12    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v12, v0, v1, v8, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .local v12, "shareData":Landroid/nfc/BeamShareData;
    goto :goto_153

    .line 224
    .end local v9    # "numValidUris":I
    .end local v16    # "uri$iterator":Ljava/util/Iterator;
    .end local v17    # "uriArray":[Landroid/net/Uri;
    .local v12, "shareData":Landroid/nfc/BeamShareData;
    :cond_172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v19, v0

    if-eqz v19, :cond_190

    .line 225
    new-instance v12, Landroid/nfc/BeamShareData;

    .end local v12    # "shareData":Landroid/nfc/BeamShareData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v12, v0, v1, v8, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .local v12, "shareData":Landroid/nfc/BeamShareData;
    goto :goto_153

    .line 230
    .local v12, "shareData":Landroid/nfc/BeamShareData;
    :cond_190
    new-instance v12, Landroid/nfc/BeamShareData;

    .end local v12    # "shareData":Landroid/nfc/BeamShareData;
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v12, v0, v1, v8, v2}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .local v12, "shareData":Landroid/nfc/BeamShareData;
    goto :goto_153

    .line 212
    .restart local v10    # "numValidUris":I
    .local v12, "shareData":Landroid/nfc/BeamShareData;
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v16    # "uri$iterator":Ljava/util/Iterator;
    .restart local v17    # "uriArray":[Landroid/net/Uri;
    :catch_1a2
    move-exception v5

    .restart local v5    # "e":Ljava/lang/SecurityException;
    move v9, v10

    .end local v10    # "numValidUris":I
    .restart local v9    # "numValidUris":I
    goto :goto_138

    .line 153
    .end local v5    # "e":Ljava/lang/SecurityException;
    .end local v8    # "myUserHandle":Landroid/os/UserHandle;
    .end local v9    # "numValidUris":I
    .end local v12    # "shareData":Landroid/nfc/BeamShareData;
    .end local v16    # "uri$iterator":Ljava/util/Iterator;
    .end local v17    # "uriArray":[Landroid/net/Uri;
    .restart local v6    # "i":I
    .restart local v7    # "item":Landroid/content/ClipData$Item;
    .local v11, "plainText":Ljava/lang/String;
    :catch_1a5
    move-exception v4

    .local v4, "e":Ljava/lang/IllegalStateException;
    goto/16 :goto_4b
.end method

.method tryText(Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 132
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 133
    .local v0, "parsedUri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 130
    .end local v0    # "parsedUri":Landroid/net/Uri;
    :goto_d
    return-void

    .line 135
    :cond_e
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Landroid/nfc/NdefRecord;->createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v1, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_d
.end method

.method tryUri(Landroid/net/Uri;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 121
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 120
    if-eqz v0, :cond_20

    .line 123
    :cond_1a
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_1f
    return-void

    .line 126
    :cond_20
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_1f
.end method
