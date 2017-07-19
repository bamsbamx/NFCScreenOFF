.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private volatile mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mControllerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/support/v4/media/session/IMediaControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

.field private mIsActive:Z

.field private mIsMbrRegistered:Z

.field private mIsRccRegistered:Z

.field private mLocalStream:I

.field private final mLock:Ljava/lang/Object;

.field private final mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

.field private final mMediaButtonReceiverIntent:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

.field private final mPackageName:Ljava/lang/String;

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mRccObj:Ljava/lang/Object;

.field private mSessionActivity:Landroid/app/PendingIntent;

.field private mState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private final mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

.field private final mTag:Ljava/lang/String;

.field private final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

.field private mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

.field private mVolumeType:I


# direct methods
.method static synthetic -get0(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    return-object v0
.end method

.method static synthetic -get10(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get11(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get12(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .registers 2

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    return v0
.end method

.method static synthetic -get13(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get14(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method static synthetic -get15(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/VolumeProviderCompat;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    return-object v0
.end method

.method static synthetic -get17(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .registers 2

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    return v0
.end method

.method static synthetic -get2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    return v0
.end method

.method static synthetic -get4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get5(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .registers 2

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    return v0
.end method

.method static synthetic -get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .registers 2

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    return v0
.end method

.method static synthetic -get7(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get8(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/MediaMetadataCompat;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method static synthetic -get9(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->getStateWithUpdatedPosition()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V
    .registers 3
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->adjustVolume(II)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;I)V
    .registers 2
    .param p1, "what"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(I)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;ILjava/lang/Object;)V
    .registers 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V
    .registers 3
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setVolumeTo(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Landroid/content/ComponentName;
    .param p4, "mbrIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1154
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    .line 1156
    new-instance v5, Landroid/os/RemoteCallbackList;

    invoke-direct {v5}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 1155
    iput-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 1159
    iput-boolean v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    .line 1160
    iput-boolean v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    .line 1161
    iput-boolean v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    .line 1162
    iput-boolean v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    .line 1180
    new-instance v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;

    invoke-direct {v5, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    .line 1179
    iput-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    .line 1195
    if-nez p3, :cond_55

    .line 1196
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v2, "queryIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1199
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1203
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_73

    .line 1204
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1205
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance p3, Landroid/content/ComponentName;

    .end local p3    # "mbrComponent":Landroid/content/ComponentName;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1206
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1205
    invoke-direct {p3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "queryIntent":Landroid/content/Intent;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local p3    # "mbrComponent":Landroid/content/ComponentName;
    :cond_55
    :goto_55
    if-eqz p3, :cond_68

    if-nez p4, :cond_68

    .line 1216
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1219
    invoke-static {p1, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 1222
    .end local v0    # "mediaButtonIntent":Landroid/content/Intent;
    :cond_68
    if-nez p3, :cond_83

    .line 1223
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 1224
    const-string/jumbo v6, "MediaButtonReceiver component may not be null."

    .line 1223
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1207
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "queryIntent":Landroid/content/Intent;
    .restart local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_73
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_55

    .line 1208
    const-string/jumbo v5, "MediaSessionCompat"

    const-string/jumbo v6, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, using null. Provide a specific ComponentName to use as this session\'s media button receiver"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 1226
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "queryIntent":Landroid/content/Intent;
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_83
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    .line 1227
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mPackageName:Ljava/lang/String;

    .line 1228
    const-string/jumbo v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 1229
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mTag:Ljava/lang/String;

    .line 1230
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    .line 1231
    iput-object p4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverIntent:Landroid/app/PendingIntent;

    .line 1232
    new-instance v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    invoke-direct {v5, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    iput-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    .line 1233
    new-instance v5, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    invoke-direct {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1235
    iput v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    .line 1236
    iput v9, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    .line 1237
    const/4 v5, 0x3

    iput v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    .line 1238
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_c0

    .line 1239
    invoke-static {p4}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    .line 1194
    :goto_bf
    return-void

    .line 1241
    :cond_c0
    iput-object v8, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    goto :goto_bf
.end method

.method private adjustVolume(II)V
    .registers 5
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1590
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 1591
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_e

    .line 1592
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V

    .line 1589
    :cond_e
    :goto_e
    return-void

    .line 1595
    :cond_f
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_e
.end method

.method private cloneMetadataIfNeeded(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;
    .registers 8
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1426
    if-nez p1, :cond_5

    .line 1427
    return-object v3

    .line 1428
    :cond_5
    const-string/jumbo v3, "android.media.metadata.ART"

    invoke-virtual {p1, v3}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1429
    const-string/jumbo v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p1, v3}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1432
    :cond_17
    new-instance v2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1433
    .local v2, "builder":Landroid/support/v4/media/MediaMetadataCompat$Builder;
    const-string/jumbo v3, "android.media.metadata.ART"

    invoke-virtual {p1, v3}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1434
    .local v1, "artBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_33

    .line 1435
    const-string/jumbo v3, "android.media.metadata.ART"

    .line 1436
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1435
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1438
    :cond_33
    const-string/jumbo v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p1, v3}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1439
    .local v0, "albumArtBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4a

    .line 1440
    const-string/jumbo v3, "android.media.metadata.ALBUM_ART"

    .line 1441
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1440
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 1443
    :cond_4a
    invoke-virtual {v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    return-object v3

    .line 1430
    .end local v0    # "albumArtBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "artBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "builder":Landroid/support/v4/media/MediaMetadataCompat$Builder;
    :cond_4f
    return-object p1
.end method

.method private getStateWithUpdatedPosition()Landroid/support/v4/media/session/PlaybackStateCompat;
    .registers 21

    .prologue
    .line 1611
    const-wide/16 v10, -0x1

    .line 1612
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1613
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1614
    .local v12, "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v3, :cond_29

    .line 1615
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    const-string/jumbo v13, "android.media.metadata.DURATION"

    invoke-virtual {v3, v13}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 1614
    if-eqz v3, :cond_29

    .line 1616
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    const-string/jumbo v13, "android.media.metadata.DURATION"

    invoke-virtual {v3, v13}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_7e

    move-result-wide v10

    :cond_29
    monitor-exit v6

    .line 1620
    const/4 v9, 0x0

    .line 1621
    .local v9, "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    if-eqz v12, :cond_7b

    .line 1622
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_3b

    .line 1623
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_81

    .line 1625
    :cond_3b
    :goto_3b
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v14

    .line 1626
    .local v14, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1627
    .local v7, "currentTime":J
    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_7b

    .line 1628
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v3

    .line 1629
    sub-long v16, v7, v14

    move-wide/from16 v0, v16

    long-to-float v6, v0

    .line 1628
    mul-float/2addr v3, v6

    float-to-long v0, v3

    move-wide/from16 v16, v0

    .line 1629
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v18

    .line 1628
    add-long v4, v16, v18

    .line 1630
    .local v4, "position":J
    const-wide/16 v16, 0x0

    cmp-long v3, v10, v16

    if-ltz v3, :cond_89

    cmp-long v3, v4, v10

    if-lez v3, :cond_89

    .line 1631
    move-wide v4, v10

    .line 1635
    :cond_67
    :goto_67
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v2, v12}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 1637
    .local v2, "builder":Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v6

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 1639
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v9

    .line 1643
    .end local v2    # "builder":Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v9    # "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    .end local v14    # "updateTime":J
    :cond_7b
    if-nez v9, :cond_92

    .end local v12    # "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    :goto_7d
    return-object v12

    .line 1612
    :catchall_7e
    move-exception v3

    monitor-exit v6

    throw v3

    .line 1624
    .restart local v9    # "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    .restart local v12    # "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    :cond_81
    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_7b

    goto :goto_3b

    .line 1632
    .restart local v4    # "position":J
    .restart local v7    # "currentTime":J
    .restart local v14    # "updateTime":J
    :cond_89
    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-gez v3, :cond_67

    .line 1633
    const-wide/16 v4, 0x0

    goto :goto_67

    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v9    # "result":Landroid/support/v4/media/session/PlaybackStateCompat;
    .end local v14    # "updateTime":J
    :cond_92
    move-object v12, v9

    .line 1643
    goto :goto_7d
.end method

.method private postToHandler(I)V
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 1292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(ILjava/lang/Object;)V

    .line 1291
    return-void
.end method

.method private postToHandler(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1296
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1295
    return-void
.end method

.method private postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1300
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1301
    :try_start_3
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    if-eqz v0, :cond_c

    .line 1302
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v1

    .line 1299
    return-void

    .line 1300
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1672
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1673
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_1a

    .line 1674
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1676
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_12
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_18

    .line 1673
    :goto_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1677
    :catch_18
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_15

    .line 1680
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1a
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1671
    return-void
.end method

.method private sendMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .registers 7
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .prologue
    .line 1696
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1697
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_1a

    .line 1698
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1700
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_12
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_18

    .line 1697
    :goto_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1701
    :catch_18
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_15

    .line 1704
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1a
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1695
    return-void
.end method

.method private sendQueue(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1708
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1709
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_1a

    .line 1710
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1712
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_12
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueChanged(Ljava/util/List;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_18

    .line 1709
    :goto_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1713
    :catch_18
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_15

    .line 1716
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1a
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1707
    return-void
.end method

.method private sendQueueTitle(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "queueTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1720
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1721
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_1a

    .line 1722
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1724
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_12
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_18

    .line 1721
    :goto_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1725
    :catch_18
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_15

    .line 1728
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1a
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1719
    return-void
.end method

.method private sendSessionDestroyed()V
    .registers 6

    .prologue
    .line 1659
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1660
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_1a

    .line 1661
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1663
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_12
    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_18

    .line 1660
    :goto_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1664
    :catch_18
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_15

    .line 1667
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1a
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1668
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1658
    return-void
.end method

.method private sendState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .registers 7
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .prologue
    .line 1684
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1685
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_1a

    .line 1686
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1688
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_12
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_18

    .line 1685
    :goto_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1689
    :catch_18
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_15

    .line 1692
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1a
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1683
    return-void
.end method

.method private sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .prologue
    .line 1647
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1648
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_1a

    .line 1649
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1651
    .local v0, "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_start_12
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_18

    .line 1648
    :goto_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1652
    :catch_18
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_15

    .line 1655
    .end local v0    # "cb":Landroid/support/v4/media/session/IMediaControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1a
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1646
    return-void
.end method

.method private setVolumeTo(II)V
    .registers 5
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1600
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 1601
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_e

    .line 1602
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onSetVolumeTo(I)V

    .line 1599
    :cond_e
    :goto_e
    return-void

    .line 1605
    :cond_f
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_e
.end method

.method private update()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0x12

    const/4 v4, 0x0

    .line 1521
    const/4 v0, 0x0

    .line 1522
    .local v0, "registeredRcc":Z
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-eqz v1, :cond_86

    .line 1525
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_28

    .line 1526
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-nez v1, :cond_4b

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4b

    .line 1527
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_43

    .line 1528
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    .line 1529
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverIntent:Landroid/app/PendingIntent;

    .line 1530
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    .line 1528
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1535
    :goto_26
    iput-boolean v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    .line 1550
    :cond_28
    :goto_28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_42

    .line 1551
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-nez v1, :cond_6d

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6d

    .line 1552
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1553
    iput-boolean v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    .line 1554
    const/4 v0, 0x1

    .line 1586
    :cond_42
    :goto_42
    return v0

    .line 1532
    :cond_43
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    .line 1533
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    .line 1532
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_26

    .line 1536
    :cond_4b
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-eqz v1, :cond_28

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_28

    .line 1537
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_65

    .line 1538
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    .line 1539
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverIntent:Landroid/app/PendingIntent;

    .line 1540
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    .line 1538
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1545
    :goto_62
    iput-boolean v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    goto :goto_28

    .line 1542
    :cond_65
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    .line 1543
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    .line 1542
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_62

    .line 1555
    :cond_6d
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-eqz v1, :cond_42

    .line 1556
    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_42

    .line 1560
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v1, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1561
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1562
    iput-boolean v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    goto :goto_42

    .line 1567
    :cond_86
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-eqz v1, :cond_99

    .line 1568
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_ac

    .line 1569
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    .line 1570
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    .line 1569
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1575
    :goto_97
    iput-boolean v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    .line 1577
    :cond_99
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-eqz v1, :cond_42

    .line 1581
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v1, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1582
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1583
    iput-boolean v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    goto :goto_42

    .line 1572
    :cond_ac
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    .line 1573
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonReceiverComponentName:Landroid/content/ComponentName;

    .line 1572
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_97
.end method


# virtual methods
.method public getCallingPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1506
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaSession()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1496
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1501
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2

    .prologue
    .line 1378
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 1360
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    return v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 1370
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    .line 1371
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    .line 1372
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    .line 1373
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendSessionDestroyed()V

    .line 1369
    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1365
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1364
    return-void
.end method

.method public setActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .prologue
    .line 1348
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-ne p1, v0, :cond_5

    .line 1349
    return-void

    .line 1351
    :cond_5
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    .line 1352
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1353
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1354
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 1347
    :cond_17
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .registers 11
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/16 v7, 0x13

    const/16 v6, 0x12

    const/4 v4, 0x0

    .line 1247
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 1248
    if-nez p1, :cond_1c

    .line 1251
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_12

    .line 1252
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1254
    :cond_12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_1b

    .line 1255
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1246
    :cond_1b
    :goto_1b
    return-void

    .line 1258
    :cond_1c
    if-nez p2, :cond_23

    .line 1259
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 1261
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_23
    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1262
    :try_start_26
    new-instance v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_52

    monitor-exit v4

    .line 1264
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    .line 1276
    .local v0, "cb19":Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_44

    .line 1277
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;)Ljava/lang/Object;

    move-result-object v2

    .line 1279
    .local v2, "onPositionUpdateObj":Ljava/lang/Object;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1282
    .end local v2    # "onPositionUpdateObj":Ljava/lang/Object;
    :cond_44
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_1b

    .line 1283
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->createMetadataUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;)Ljava/lang/Object;

    move-result-object v1

    .line 1285
    .local v1, "onMetadataUpdateObj":Ljava/lang/Object;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    .line 1261
    .end local v0    # "cb19":Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;
    .end local v1    # "onMetadataUpdateObj":Ljava/lang/Object;
    :catchall_52
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1516
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;

    .line 1515
    return-void
.end method

.method public setFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .prologue
    .line 1309
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_3
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_a

    monitor-exit v0

    .line 1312
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    .line 1308
    return-void

    .line 1309
    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    .prologue
    .line 1478
    return-void
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .registers 6
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .prologue
    const/16 v3, 0xe

    const/4 v0, 0x0

    .line 1448
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_d

    if-eqz p1, :cond_d

    .line 1450
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->cloneMetadataIfNeeded(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 1452
    :cond_d
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1453
    :try_start_10
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_1b

    monitor-exit v1

    .line 1455
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1456
    iget-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-nez v1, :cond_1e

    .line 1458
    return-void

    .line 1452
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1460
    :cond_1e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3e

    .line 1461
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    .line 1462
    if-nez p1, :cond_32

    .line 1463
    :goto_28
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v2, :cond_37

    const-wide/16 v2, 0x0

    .line 1461
    :goto_2e
    invoke-static {v1, v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V

    .line 1447
    :cond_31
    :goto_31
    return-void

    .line 1462
    :cond_32
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_28

    .line 1463
    :cond_37
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    goto :goto_2e

    .line 1464
    :cond_3e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_31

    .line 1465
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    .line 1466
    if-nez p1, :cond_4a

    .line 1465
    :goto_46
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_31

    .line 1466
    :cond_4a
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_46
.end method

.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .registers 11
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .prologue
    const/16 v8, 0x12

    const/16 v7, 0xe

    .line 1383
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1384
    :try_start_7
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_12

    monitor-exit v0

    .line 1386
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 1387
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-nez v0, :cond_15

    .line 1389
    return-void

    .line 1383
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1391
    :cond_15
    if-nez p1, :cond_29

    .line 1392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_28

    .line 1393
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1394
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    .line 1382
    :cond_28
    :goto_28
    return-void

    .line 1398
    :cond_29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_52

    .line 1399
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v2

    .line 1400
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v5

    .line 1399
    invoke-static/range {v0 .. v6}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setState(Ljava/lang/Object;IJFJ)V

    .line 1406
    :cond_42
    :goto_42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_60

    .line 1407
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_28

    .line 1401
    :cond_52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_42

    .line 1402
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    goto :goto_42

    .line 1408
    :cond_60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_6e

    .line 1409
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_28

    .line 1410
    :cond_6e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_28

    .line 1411
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_28
.end method

.method public setPlaybackToLocal(I)V
    .registers 8
    .param p1, "stream"    # I

    .prologue
    const/4 v2, 0x0

    .line 1317
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v1, :cond_a

    .line 1318
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    .line 1320
    :cond_a
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    .line 1321
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    .line 1323
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 1324
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 1322
    const/4 v3, 0x2

    .line 1321
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 1325
    .local v0, "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 1316
    return-void
.end method

.method public setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
    .registers 8
    .param p1, "volumeProvider"    # Landroid/support/v4/media/VolumeProviderCompat;

    .prologue
    const/4 v2, 0x0

    .line 1330
    if-nez p1, :cond_c

    .line 1331
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "volumeProvider may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1333
    :cond_c
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v1, :cond_15

    .line 1334
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    .line 1336
    :cond_15
    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    .line 1337
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    .line 1338
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    iget v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    .line 1339
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v4

    .line 1340
    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v5

    .line 1338
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 1341
    .local v0, "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 1343
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    invoke-virtual {p1, v1}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    .line 1329
    return-void
.end method

.method public setQueue(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1484
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    .line 1485
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueue(Ljava/util/List;)V

    .line 1483
    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1490
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;

    .line 1491
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueueTitle(Ljava/lang/CharSequence;)V

    .line 1489
    return-void
.end method

.method public setRatingType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 1511
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    .line 1510
    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1473
    :try_start_3
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    .line 1471
    return-void

    .line 1472
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
