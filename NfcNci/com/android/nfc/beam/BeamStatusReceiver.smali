.class public Lcom/android/nfc/beam/BeamStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BeamStatusReceiver.java"


# static fields
.field public static final ACTION_CANCEL_HANDOVER_TRANSFER:Ljava/lang/String; = "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

.field private static final ACTION_HANDOVER_STARTED:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_STARTED"

.field private static final ACTION_STOP_BLUETOOTH_TRANSFER:Ljava/lang/String; = "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

.field private static final ACTION_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.handover.intent.action.TRANSFER_DONE"

.field private static final ACTION_TRANSFER_PROGRESS:Ljava/lang/String; = "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

.field public static final BEAM_STATUS_PERMISSION:Ljava/lang/String; = "android.permission.NFC_HANDOVER_STATUS"

.field private static final DBG:Z = true

.field public static final DIRECTION_INCOMING:I = 0x0

.field public static final DIRECTION_OUTGOING:I = 0x1

.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "android.nfc.handover.intent.extra.ADDRESS"

.field private static final EXTRA_HANDOVER_DATA_LINK_TYPE:Ljava/lang/String; = "android.nfc.handover.intent.extra.HANDOVER_DATA_LINK_TYPE"

.field public static final EXTRA_INCOMING:Ljava/lang/String; = "com.android.nfc.handover.extra.INCOMING"

.field private static final EXTRA_OBJECT_COUNT:Ljava/lang/String; = "android.nfc.handover.intent.extra.OBJECT_COUNT"

.field public static final EXTRA_TRANSFER_ID:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_ID"

.field private static final EXTRA_TRANSFER_MIMETYPE:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

.field private static final EXTRA_TRANSFER_PROGRESS:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

.field private static final EXTRA_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_STATUS"

.field private static final EXTRA_TRANSFER_URI:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_URI"

.field private static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field private static final HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeamStatusReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transferManager"    # Lcom/android/nfc/beam/BeamTransferManager;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 77
    return-void
.end method

.method private handleTransferEvent(Landroid/content/Intent;I)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "deviceType"    # I

    .prologue
    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v11, "android.nfc.handover.intent.extra.TRANSFER_ID"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 111
    .local v5, "id":I
    const-string/jumbo v11, "android.nfc.handover.intent.extra.ADDRESS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "sourceAddress":Ljava/lang/String;
    if-nez v8, :cond_1a

    return-void

    .line 115
    :cond_1a
    iget-object v11, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-nez v11, :cond_43

    .line 118
    const/4 v11, -0x1

    if-eq v5, v11, :cond_42

    .line 119
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_42

    .line 120
    const-string/jumbo v11, "BeamStatusReceiver"

    const-string/jumbo v12, "Didn\'t find transfer, stopping"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v11, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, "cancelIntent":Landroid/content/Intent;
    const-string/jumbo v11, "android.nfc.handover.intent.extra.TRANSFER_ID"

    invoke-virtual {v2, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    iget-object v11, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    .end local v2    # "cancelIntent":Landroid/content/Intent;
    :cond_42
    return-void

    .line 129
    :cond_43
    iget-object v11, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v11, v5}, Lcom/android/nfc/beam/BeamTransferManager;->setBluetoothTransferId(I)V

    .line 131
    const-string/jumbo v11, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_98

    .line 132
    const-string/jumbo v11, "android.nfc.handover.intent.extra.TRANSFER_STATUS"

    .line 133
    const/4 v12, 0x1

    .line 132
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 134
    .local v4, "handoverStatus":I
    if-nez v4, :cond_8f

    .line 135
    const-string/jumbo v11, "android.nfc.handover.intent.extra.TRANSFER_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, "uriString":Ljava/lang/String;
    const-string/jumbo v11, "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "mimeType":Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 138
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_88

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_88

    .line 139
    new-instance v11, Ljava/io/File;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 141
    :cond_88
    iget-object v11, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v9, v6}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    .line 107
    .end local v4    # "handoverStatus":I
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "uriString":Ljava/lang/String;
    :cond_8e
    :goto_8e
    return-void

    .line 143
    .restart local v4    # "handoverStatus":I
    :cond_8f
    iget-object v11, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_8e

    .line 145
    .end local v4    # "handoverStatus":I
    :cond_98
    const-string/jumbo v11, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b1

    .line 146
    const-string/jumbo v11, "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v7

    .line 147
    .local v7, "progress":F
    iget-object v11, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v11, v7}, Lcom/android/nfc/beam/BeamTransferManager;->updateFileProgress(F)V

    goto :goto_8e

    .line 148
    .end local v7    # "progress":F
    :cond_b1
    const-string/jumbo v11, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8e

    .line 149
    const-string/jumbo v11, "android.nfc.handover.intent.extra.OBJECT_COUNT"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 150
    .local v3, "count":I
    if-lez v3, :cond_8e

    .line 151
    iget-object v11, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v11, v3}, Lcom/android/nfc/beam/BeamTransferManager;->setObjectCount(I)V

    goto :goto_8e
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.nfc.handover.intent.extra.HANDOVER_DATA_LINK_TYPE"

    .line 86
    const/4 v3, 0x1

    .line 85
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, "dataLinkType":I
    const-string/jumbo v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 89
    iget-object v2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v2, :cond_1e

    .line 90
    iget-object v2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v2}, Lcom/android/nfc/beam/BeamTransferManager;->cancel()V

    .line 83
    :cond_1e
    :goto_1e
    return-void

    .line 92
    :cond_1f
    const-string/jumbo v2, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 93
    const-string/jumbo v2, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 92
    if-nez v2, :cond_3a

    .line 94
    const-string/jumbo v2, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 92
    if-eqz v2, :cond_1e

    .line 95
    :cond_3a
    invoke-direct {p0, p2, v1}, Lcom/android/nfc/beam/BeamStatusReceiver;->handleTransferEvent(Landroid/content/Intent;I)V

    goto :goto_1e
.end method
