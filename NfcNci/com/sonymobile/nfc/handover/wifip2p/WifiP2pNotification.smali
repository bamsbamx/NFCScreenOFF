.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;
.super Ljava/lang/Object;
.source "WifiP2pNotification.java"


# static fields
.field static final ACTION_CANCEL_WIFI_P2P_HANDOVER_TRANSFER:Ljava/lang/String; = "com.sonymobile.nfc.handover.wifip2p.action.CANCEL_WIFI_P2P_HANDOVER_TRANSFER"

.field public static final STATE_CANCELLED:I = 0x3

.field public static final STATE_FAILED:I = 0x2

.field public static final STATE_IN_PROGRESS:I = 0x0

.field public static final STATE_SUCCESS:I = 0x1


# instance fields
.field private final mCancelIntent:Landroid/app/PendingIntent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field private final mIncomming:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mProgress:F

.field final mStartTime:Ljava/lang/Long;

.field private mTotalCount:I

.field private final mTransferId:I

.field private mViewIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "fileCount"    # I
    .param p4, "incoming"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mProgress:F

    .line 62
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mTransferId:I

    .line 64
    iput p3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mTotalCount:I

    .line 65
    iput-boolean p4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mIncomming:Z

    .line 66
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->buildCancelIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mCancelIntent:Landroid/app/PendingIntent;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mStartTime:Ljava/lang/Long;

    .line 69
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    .line 70
    const-string/jumbo v1, "notification"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "incoming"    # Z

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;-><init>(Landroid/content/Context;IIZ)V

    .line 57
    return-void
.end method

.method private buildCancelIntent()Landroid/app/PendingIntent;
    .registers 6

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.nfc.handover.wifip2p.action.CANCEL_WIFI_P2P_HANDOVER_TRANSFER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mTransferId:I

    .line 76
    const/high16 v4, 0x40000000    # 2.0f

    .line 75
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 78
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method


# virtual methods
.method public buildViewIntent(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;)V
    .registers 5
    .param p1, "dataInfo"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .prologue
    .line 86
    iget-object v1, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_24

    iget-object v0, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->uri:Landroid/net/Uri;

    .line 89
    .local v0, "uri":Landroid/net/Uri;
    :goto_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mViewIntent:Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mViewIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mViewIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mViewIntent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    return-void

    .line 87
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_6
.end method

.method public setFileCount(I)V
    .registers 2
    .param p1, "fileCount"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mTotalCount:I

    .line 81
    return-void
.end method

.method public showNotification(I)V
    .registers 15
    .param p1, "state"    # I

    .prologue
    const/4 v12, 0x0

    const v6, 0x1080089

    const v5, 0x1080082

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 102
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v2, "notBuilder":Landroid/app/Notification$Builder;
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 104
    const v8, 0x1060059

    .line 103
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 105
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 106
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 109
    iget-boolean v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mIncomming:Z

    if-eqz v7, :cond_3d

    .line 110
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    const v8, 0x7f090065

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "beamString":Ljava/lang/String;
    :goto_39
    packed-switch p1, :pswitch_data_13a

    .line 169
    return-void

    .line 112
    .end local v0    # "beamString":Ljava/lang/String;
    :cond_3d
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    const v8, 0x7f090066

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "beamString":Ljava/lang/String;
    goto :goto_39

    .line 117
    :pswitch_47
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 118
    iget-boolean v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mIncomming:Z

    if-eqz v5, :cond_9e

    const v5, 0x1080081

    :goto_51
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 120
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 121
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 123
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f09006a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mCancelIntent:Landroid/app/PendingIntent;

    .line 122
    const v7, 0x7f020001

    invoke-virtual {v2, v7, v5, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 124
    const/4 v4, 0x0

    .line 125
    .local v4, "totalProgress":F
    iget v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mTotalCount:I

    if-lez v5, :cond_80

    .line 126
    iget v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mTotalCount:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v3, v6, v5

    .line 127
    .local v3, "progressUnit":F
    iget v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mCurrentCount:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mProgress:F

    mul-float/2addr v6, v3

    add-float v4, v5, v6

    .line 129
    .end local v3    # "progressUnit":F
    :cond_80
    iget v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mTotalCount:I

    if-lez v5, :cond_a2

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_a2

    .line 130
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    const/16 v6, 0x64

    invoke-virtual {v2, v6, v5, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 172
    .end local v4    # "totalProgress":F
    :cond_92
    :goto_92
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mTransferId:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v12, v6, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 101
    return-void

    .line 119
    :cond_9e
    const v5, 0x1080088

    goto :goto_51

    .line 132
    .restart local v4    # "totalProgress":F
    :cond_a2
    const/16 v5, 0x64

    invoke-virtual {v2, v5, v10, v11}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_92

    .line 137
    .end local v4    # "totalProgress":F
    :pswitch_a8
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 138
    iget-boolean v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mIncomming:Z

    if-eqz v7, :cond_ec

    :goto_af
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 140
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f090067

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 141
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f090067

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 143
    iget-boolean v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mIncomming:Z

    if-eqz v5, :cond_92

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mViewIntent:Landroid/content/Intent;

    if-eqz v5, :cond_92

    .line 144
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f09006b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 146
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mTransferId:I

    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mViewIntent:Landroid/content/Intent;

    .line 145
    invoke-static {v5, v6, v7, v10, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 148
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_92

    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    :cond_ec
    move v5, v6

    .line 139
    goto :goto_af

    .line 153
    :pswitch_ee
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 154
    iget-boolean v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mIncomming:Z

    if-eqz v7, :cond_111

    :goto_f5
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 156
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f090068

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 157
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f090068

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_92

    :cond_111
    move v5, v6

    .line 155
    goto :goto_f5

    .line 161
    :pswitch_113
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 162
    iget-boolean v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mIncomming:Z

    if-eqz v7, :cond_137

    :goto_11a
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 164
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f090069

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 165
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f090069

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_92

    :cond_137
    move v5, v6

    .line 163
    goto :goto_11a

    .line 115
    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_47
        :pswitch_a8
        :pswitch_ee
        :pswitch_113
    .end packed-switch
.end method

.method public showProgressNotification(FI)V
    .registers 4
    .param p1, "progress"    # F
    .param p2, "currentCount"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mProgress:F

    .line 97
    iput p2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->mCurrentCount:I

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->showNotification(I)V

    .line 95
    return-void
.end method
