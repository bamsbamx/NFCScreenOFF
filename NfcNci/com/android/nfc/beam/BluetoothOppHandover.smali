.class public Lcom/android/nfc/beam/BluetoothOppHandover;
.super Ljava/lang/Object;
.source "BluetoothOppHandover.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final ACTION_HANDOVER_SEND:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SEND"

.field static final ACTION_HANDOVER_SEND_MULTIPLE:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE"

.field static final DBG:Z

.field static final MSG_START_SEND:I = 0x0

.field static final REMOTE_BT_ENABLE_DELAY_MS:I = 0x0

.field static final STATE_COMPLETE:I = 0x3

.field static final STATE_INIT:I = 0x0

.field static final STATE_TURNING_ON:I = 0x1

.field static final STATE_WAITING:I = 0x2

.field static final TAG:Ljava/lang/String; = "BluetoothOppHandover"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mCreateTime:Ljava/lang/Long;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field final mRemoteActivating:Z

.field mState:I

.field final mUris:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/beam/BluetoothOppHandover;->DBG:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "remoteActivating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 67
    iput-object p3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    .line 68
    iput-boolean p4, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mRemoteActivating:Z

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mState:I

    .line 64
    return-void
.end method


# virtual methods
.method complete()V
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mState:I

    .line 96
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_a

    .line 135
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    .line 136
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_a
    return v1
.end method

.method sendIntent()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 101
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.bluetooth"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v6, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-static {v6, v5}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    iget-object v6, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "uri$iterator":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 111
    .local v3, "uri":Landroid/net/Uri;
    :try_start_38
    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.android.bluetooth"

    .line 112
    const/4 v7, 0x1

    .line 111
    invoke-virtual {v5, v6, v3, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_41} :catch_42

    goto :goto_2c

    .line 113
    :catch_42
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v5, "BluetoothOppHandover"

    const-string/jumbo v6, "Failed to transfer permission to Bluetooth process."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 117
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_4d
    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v9, :cond_84

    .line 118
    const-string/jumbo v5, "android.nfc.handover.intent.action.HANDOVER_SEND"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string/jumbo v6, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    :goto_69
    sget-boolean v5, Lcom/android/nfc/beam/BluetoothOppHandover;->DBG:Z

    if-eqz v5, :cond_76

    const-string/jumbo v5, "BluetoothOppHandover"

    const-string/jumbo v6, "Handing off outging transfer to BT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_76
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    iget-object v5, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->complete()V

    .line 100
    return-void

    .line 121
    :cond_84
    const-string/jumbo v5, "android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string/jumbo v5, "android.intent.extra.STREAM"

    iget-object v6, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_69
.end method

.method public start()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 80
    iget-boolean v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mRemoteActivating:Z

    if-eqz v1, :cond_2e

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 82
    .local v0, "timeElapsed":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-gez v1, :cond_2a

    .line 83
    iget-object v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v6, v2

    .line 83
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    .end local v0    # "timeElapsed":Ljava/lang/Long;
    :goto_29
    return-void

    .line 88
    .restart local v0    # "timeElapsed":Ljava/lang/Long;
    :cond_2a
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    goto :goto_29

    .line 92
    .end local v0    # "timeElapsed":Ljava/lang/Long;
    :cond_2e
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    goto :goto_29
.end method
