.class public Lcom/android/nfc/cardemulation/RegisteredAidCache;
.super Ljava/lang/Object;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "RegisteredAidCache"


# instance fields
.field final EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

.field final mAidCache:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAidServices:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field protected final mDisabledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mNfcEnabled:Z

.field mPreferredForegroundService:Landroid/content/ComponentName;

.field mPreferredPaymentService:Landroid/content/ComponentName;

.field mReservedOffHceAids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field mSupportsPrefixes:Z

.field mValidServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidRoutingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 64
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mValidServices:Ljava/util/List;

    .line 126
    new-instance v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 132
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mDisabledServices:Ljava/util/List;

    .line 139
    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 140
    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    .line 141
    iput-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mReservedOffHceAids:Ljava/util/List;

    .line 144
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    .line 145
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContentResolver:Landroid/content/ContentResolver;

    .line 146
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 147
    iput-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 148
    iput-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 149
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->supportsAidPrefixRouting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    .line 150
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    if-eqz v1, :cond_5e

    .line 151
    sget-boolean v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v1, :cond_5e

    const-string/jumbo v1, "RegisteredAidCache"

    const-string/jumbo v2, "Controller supports AID prefix routing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_5e
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    const v2, 0x7f0c000d

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "reservedOffHceAidsRes":[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    if-nez v1, :cond_7b

    .line 156
    if-eqz v0, :cond_7b

    array-length v1, v0

    if-eqz v1, :cond_7b

    .line 157
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mReservedOffHceAids:Ljava/util/List;

    .line 143
    :goto_7a
    return-void

    .line 159
    :cond_7b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mReservedOffHceAids:Ljava/util/List;

    goto :goto_7a
.end method

.method static isPrefix(Ljava/lang/String;)Z
    .registers 2
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    .line 444
    const-string/jumbo v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 669
    const-string/jumbo v4, "    AID cache entries: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 671
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 673
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    :cond_24
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mReservedOffHceAids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5c

    .line 674
    const-string/jumbo v4, "    Reserved AIDs for OffHCE: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mReservedOffHceAids:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 676
    .local v0, "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "        "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_38

    .line 679
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    Service preferred by foreground app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    Preferred payment service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    const-string/jumbo v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/nfc/cardemulation/AidRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 683
    const-string/jumbo v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 650
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v0, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 652
    .local v0, "category":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v2, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 653
    .local v2, "defaultServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string/jumbo v6, "    \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\" (category: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    if-eqz v2, :cond_89

    .line 655
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 657
    :goto_3d
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "serviceInfo$iterator":Ljava/util/Iterator;
    :goto_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 658
    .local v4, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string/jumbo v6, "        "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 660
    const-string/jumbo v6, "*DEFAULT* "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_6b
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 663
    const-string/jumbo v7, " (Description: "

    .line 662
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 663
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 662
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 663
    const-string/jumbo v7, ")\n"

    .line 662
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 655
    .end local v4    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v5    # "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_89
    const/4 v1, 0x0

    .local v1, "defaultComponent":Landroid/content/ComponentName;
    goto :goto_3d

    .line 665
    .end local v1    # "defaultComponent":Landroid/content/ComponentName;
    .restart local v5    # "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_8b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .registers 11
    .param p1, "prefixAid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 454
    new-instance v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;

    invoke-direct {v4, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 455
    .local v4, "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "plainAid":Ljava/lang/String;
    const-string/jumbo v5, "%-32s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x46

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "lastAidWithPrefix":Ljava/lang/String;
    sget-boolean v5, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v5, :cond_54

    const-string/jumbo v5, "RegisteredAidCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finding AIDs in range ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 458
    const-string/jumbo v7, "]"

    .line 457
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_54
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v5, v3, v8, v2, v8}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v5

    .line 459
    iput-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    .line 462
    iget-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v5}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 461
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_66
    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 463
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 464
    sget-boolean v5, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v5, :cond_b0

    .line 465
    const-string/jumbo v6, "RegisteredAidCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AID "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " conflicts with prefix; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 466
    const-string/jumbo v7, " adding handling services for conflict resolution."

    .line 465
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_b0
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->services:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 468
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 471
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    :cond_c7
    return-object v4
.end method

.method findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 319
    .local v0, "defaultServiceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "serviceAidInfo$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 321
    .local v1, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    const-string/jumbo v4, "payment"

    iget-object v5, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 322
    .local v3, "serviceClaimsPaymentAid":Z
    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 323
    iput-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    goto :goto_9

    .line 324
    :cond_2f
    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    .line 326
    iput-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    goto :goto_9

    .line 329
    .end local v1    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v3    # "serviceClaimsPaymentAid":Z
    :cond_42
    return-object v0
.end method

.method generateAidCacheLocked()V
    .registers 15

    .prologue
    .line 475
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->clear()V

    .line 477
    new-instance v1, Ljava/util/PriorityQueue;

    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 479
    .local v1, "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    :goto_10
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_195

    .line 480
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v10, "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    .local v0, "aidToResolve":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 489
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_4f
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v11, :cond_6d

    const-string/jumbo v11, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "generateAidCacheLocked: starting with aid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_6d
    invoke-static {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16c

    .line 498
    new-instance v8, Ljava/util/ArrayList;

    .line 499
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    .line 498
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 502
    .local v8, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;

    move-result-object v7

    .line 506
    .local v7, "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->services:Ljava/util/ArrayList;

    .line 505
    invoke-virtual {p0, v8, v11}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v9

    .line 507
    .local v9, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11, v0, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v11, :cond_c8

    .line 512
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 557
    .end local v7    # "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .end local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_9b
    :goto_9b
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v11, :cond_c0

    const-string/jumbo v11, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AIDs: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " were resolved."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_c0
    invoke-virtual {v1, v10}, Ljava/util/PriorityQueue;->removeAll(Ljava/util/Collection;)Z

    .line 559
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_10

    .line 513
    .restart local v7    # "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .restart local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_c8
    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_9b

    .line 517
    const/4 v6, 0x0

    .line 519
    .local v6, "foundChildService":Z
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v11}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    .line 518
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6    # "foundChildService":Z
    .local v5, "entry$iterator":Ljava/util/Iterator;
    :cond_db
    :goto_db
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_154

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 520
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_db

    .line 521
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v11, :cond_125

    .line 522
    const-string/jumbo v12, "RegisteredAidCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AID "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " shared with prefix; "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 523
    const-string/jumbo v13, " adding all handling services."

    .line 522
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_125
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    const/4 v12, 0x0

    .line 524
    invoke-virtual {p0, v11, v12}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 530
    .local v2, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    .line 531
    iget-object v12, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v11, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_152

    const/4 v11, 0x0

    :goto_150
    or-int/2addr v6, v11

    .local v6, "foundChildService":Z
    goto :goto_db

    .end local v6    # "foundChildService":Z
    :cond_152
    const/4 v11, 0x1

    goto :goto_150

    .line 538
    .end local v2    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    :cond_154
    if-nez v6, :cond_9b

    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9b

    .line 539
    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto/16 :goto_9b

    .line 549
    .end local v5    # "entry$iterator":Ljava/util/Iterator;
    .end local v7    # "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
    .end local v8    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_16c
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v11, :cond_179

    const-string/jumbo v11, "RegisteredAidCache"

    const-string/jumbo v12, "Exact AID, resolving."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_179
    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 552
    .local v3, "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    const/4 v12, 0x1

    invoke-virtual {p0, v3, v12}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9b

    .line 562
    .end local v0    # "aidToResolve":Ljava/lang/String;
    .end local v3    # "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v10    # "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_195
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked()V

    .line 474
    return-void
.end method

.method generateServiceMapLocked(Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v12, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v12}, Ljava/util/TreeMap;->clear()V

    .line 384
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "service$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 385
    .local v7, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    sget-boolean v12, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v12, :cond_37

    const-string/jumbo v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "generateServiceMap component: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_37
    iget-object v12, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mDisabledServices:Ljava/util/List;

    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 387
    .local v11, "serviceDisabled":Z
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getPrefixAids()Ljava/util/List;

    move-result-object v6

    .line 388
    .local v6, "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_4d
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_81

    .line 390
    const-string/jumbo v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Aid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " is not valid."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 393
    :cond_81
    const-string/jumbo v12, "*"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_90

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v12

    if-eqz v12, :cond_d1

    .line 396
    :cond_90
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v12

    if-eqz v12, :cond_a2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_a2

    invoke-static {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f4

    .line 412
    :cond_a2
    iget-object v12, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mReservedOffHceAids:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_147

    .line 413
    sget-boolean v12, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v12, :cond_4d

    const-string/jumbo v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " is reserved. ignored."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 394
    :cond_d1
    const-string/jumbo v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Prefix AID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ignored on device that doesn\'t support it."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 398
    :cond_f4
    const/4 v2, 0x0

    .line 399
    .local v2, "foundPrefix":Z
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "prefixAid$iterator":Ljava/util/Iterator;
    :cond_f9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_143

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 400
    .local v4, "prefixAid":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f9

    .line 402
    const-string/jumbo v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Ignoring exact AID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " because prefix AID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 403
    const-string/jumbo v14, " is already registered"

    .line 402
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v2, 0x1

    .line 408
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "prefixAid":Ljava/lang/String;
    :cond_143
    if-eqz v2, :cond_a2

    goto/16 :goto_4d

    .line 418
    .end local v2    # "foundPrefix":Z
    .end local v5    # "prefixAid$iterator":Ljava/util/Iterator;
    :cond_147
    if-eqz v11, :cond_176

    .line 419
    const-string/jumbo v12, "other"

    invoke-virtual {v7, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 418
    if-eqz v12, :cond_176

    .line 420
    sget-boolean v12, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v12, :cond_4d

    const-string/jumbo v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "This AID is disabled : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 424
    :cond_176
    new-instance v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    invoke-direct {v9, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 425
    .local v9, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 426
    iput-object v7, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 427
    invoke-virtual {v7, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    .line 429
    iget-object v12, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v13, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a2

    .line 431
    iget-object v12, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v13, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 432
    .local v10, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4d

    .line 435
    .end local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :cond_1a2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .restart local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v12, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v13, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v12, v13, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4d

    .line 381
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v6    # "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v9    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v10    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v11    # "serviceDisabled":Z
    :cond_1b3
    return-void
.end method

.method public getDisabledServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mDisabledServices:Ljava/util/List;

    return-object v0
.end method

.method getServicesForAidRoute(ILjava/lang/String;I)Ljava/util/List;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "route"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 746
    if-nez p3, :cond_f

    const/4 v0, 0x1

    .line 747
    .local v0, "isOnHost":Z
    :goto_4
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v1

    .line 748
    .local v1, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    .line 749
    .local v2, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-eqz v1, :cond_e

    if-nez v2, :cond_11

    .line 750
    :cond_e
    return-object v7

    .line 746
    .end local v0    # "isOnHost":Z
    .end local v1    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v2    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "isOnHost":Z
    goto :goto_4

    .line 749
    .restart local v1    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .restart local v2    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_e

    .line 753
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v5, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v6, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v6, :cond_33

    .line 755
    iget-object v6, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v6

    if-eq v6, v0, :cond_29

    .line 756
    return-object v7

    .line 758
    :cond_29
    iget-object v6, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_32
    return-object v5

    .line 761
    :cond_33
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "service$iterator":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 762
    .local v3, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 763
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37
.end method

.method public isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v0

    .line 221
    .local v0, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    if-nez v1, :cond_c

    .line 223
    :cond_b
    return v3

    .line 222
    :cond_c
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_b

    .line 226
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v1, :cond_23

    .line 227
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 228
    :cond_23
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 229
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 232
    :cond_3d
    return v3
.end method

.method public onNfcDisabled()V
    .registers 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_d

    monitor-exit v0

    .line 639
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 635
    return-void

    .line 636
    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onNfcEnabled()V
    .registers 3

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 645
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 642
    return-void

    .line 643
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 627
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "RegisteredAidCache"

    const-string/jumbo v1, "Preferred foreground service changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_d
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 629
    :try_start_10
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 630
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mValidServices:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateServiceMapLocked(Ljava/util/List;)V

    .line 631
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    .line 626
    return-void

    .line 628
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 618
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "RegisteredAidCache"

    const-string/jumbo v1, "Preferred payment service changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_d
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_10
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 621
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mValidServices:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateServiceMapLocked(Ljava/util/List;)V

    .line 622
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    .line 617
    return-void

    .line 619
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onRoutingTableChanged()V
    .registers 3

    .prologue
    .line 689
    const-string/jumbo v0, "RegisteredAidCache"

    const-string/jumbo v1, "onRoutingTableChanged() is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "RegisteredAidCache"

    const-string/jumbo v1, "onServicesUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_d
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne v0, p1, :cond_2b

    .line 606
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mValidServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 607
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mValidServices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 608
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateDisabledServices(ILjava/util/List;)V

    .line 609
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateServiceMapLocked(Ljava/util/List;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_39

    :cond_29
    :goto_29
    monitor-exit v1

    .line 601
    return-void

    .line 612
    :cond_2b
    :try_start_2b
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "RegisteredAidCache"

    const-string/jumbo v2, "Ignoring update because it\'s not for the current user."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_39

    goto :goto_29

    .line 603
    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .registers 18
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 165
    :try_start_5
    sget-boolean v12, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v12, :cond_25

    const-string/jumbo v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "resolveAid: resolving AID "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_25
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xa

    if-ge v12, v13, :cond_3c

    .line 167
    const-string/jumbo v12, "RegisteredAidCache"

    const-string/jumbo v13, "AID selected with fewer than 5 bytes."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_15a

    monitor-exit v14

    return-object v12

    .line 170
    :cond_3c
    :try_start_3c
    new-instance v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 171
    .local v8, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    if-eqz v12, :cond_166

    .line 175
    const/4 v12, 0x0

    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 176
    .local v11, "shortestAidMatch":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "longestAidMatch":Ljava/lang/String;
    sget-boolean v12, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v12, :cond_98

    const-string/jumbo v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Finding AID registrations in range ["

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 179
    const-string/jumbo v15, " - "

    .line 178
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 179
    const-string/jumbo v15, "]"

    .line 178
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_98
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    const/4 v13, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v11, v13, v6, v15}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v7

    .line 183
    .local v7, "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    const-string/jumbo v12, "other"

    iput-object v12, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 184
    invoke-interface {v7}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_172

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v5

    .line 186
    .local v5, "isPrefix":Z
    if-eqz v5, :cond_15d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 186
    const/4 v15, 0x0

    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "entryAid":Ljava/lang/String;
    :goto_de
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f0

    if-eqz v5, :cond_af

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_af

    .line 189
    :cond_f0
    sget-boolean v12, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v12, :cond_11b

    const-string/jumbo v13, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "resolveAid: AID "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, " matches."

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_11b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 191
    .local v4, "entryResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v12, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v12, :cond_13a

    .line 192
    iget-object v12, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v12, :cond_132

    .line 195
    const-string/jumbo v12, "RegisteredAidCache"

    const-string/jumbo v13, "Different defaults for conflicting AIDs!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_132
    iget-object v12, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v12, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 198
    iget-object v12, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    iput-object v12, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 200
    :cond_13a
    iget-object v12, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_140
    :goto_140
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_af

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 201
    .local v9, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v12, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_140

    .line 202
    iget-object v12, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_159
    .catchall {:try_start_3c .. :try_end_159} :catchall_15a

    goto :goto_140

    .line 164
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "entryAid":Ljava/lang/String;
    .end local v4    # "entryResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v5    # "isPrefix":Z
    .end local v6    # "longestAidMatch":Ljava/lang/String;
    .end local v7    # "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v8    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v9    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v10    # "serviceInfo$iterator":Ljava/util/Iterator;
    .end local v11    # "shortestAidMatch":Ljava/lang/String;
    :catchall_15a
    move-exception v12

    monitor-exit v14

    throw v12

    .line 187
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    .restart local v5    # "isPrefix":Z
    .restart local v6    # "longestAidMatch":Ljava/lang/String;
    .restart local v7    # "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .restart local v8    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .restart local v11    # "shortestAidMatch":Ljava/lang/String;
    :cond_15d
    :try_start_15d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v3, v12

    goto/16 :goto_de

    .line 208
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "isPrefix":Z
    .end local v6    # "longestAidMatch":Ljava/lang/String;
    .end local v7    # "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v11    # "shortestAidMatch":Ljava/lang/String;
    :cond_166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 210
    .restart local v8    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_172
    sget-boolean v12, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v12, :cond_190

    const-string/jumbo v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Resolved to: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catchall {:try_start_15d .. :try_end_190} :catchall_15a

    :cond_190
    monitor-exit v14

    .line 211
    return-object v8
.end method

.method resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .registers 13
    .param p2, "makeSingleServiceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;Z)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "conflictingServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 250
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_14

    .line 251
    :cond_a
    const-string/jumbo v6, "RegisteredAidCache"

    const-string/jumbo v7, "resolveAidConflict: No services passed in."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v8

    .line 254
    :cond_14
    new-instance v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v2, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 255
    .local v2, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const-string/jumbo v6, "other"

    iput-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "matchedForeground":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v1, 0x0

    .line 259
    .local v1, "matchedPayment":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "matchedForeground":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v1    # "matchedPayment":Landroid/nfc/cardemulation/ApduServiceInfo;
    .local v4, "serviceAidInfo$iterator":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ae

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 261
    .local v3, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    const-string/jumbo v6, "payment"

    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 262
    .local v5, "serviceClaimsPaymentAid":Z
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 263
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    if-eqz v5, :cond_55

    .line 265
    const-string/jumbo v6, "payment"

    iput-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 267
    :cond_55
    iget-object v0, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    .local v0, "matchedForeground":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_24

    .line 268
    .end local v0    # "matchedForeground":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_58
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    if-eqz v5, :cond_77

    .line 270
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    const-string/jumbo v6, "payment"

    iput-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 272
    iget-object v1, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    .local v1, "matchedPayment":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_24

    .line 274
    .end local v1    # "matchedPayment":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_77
    if-eqz v5, :cond_a5

    .line 278
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v6, :cond_24

    const-string/jumbo v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resolveAidLocked: (Ignoring handling service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 279
    iget-object v8, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 278
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 280
    const-string/jumbo v8, " because it\'s not the payment default.)"

    .line 278
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 282
    :cond_a5
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 286
    .end local v3    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v5    # "serviceClaimsPaymentAid":Z
    :cond_ae
    if-eqz v0, :cond_d1

    .line 289
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v6, :cond_ce

    const-string/jumbo v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resolveAidLocked: DECISION: routing to foreground preferred "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_ce
    iput-object v0, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 308
    :cond_d0
    :goto_d0
    return-object v2

    .line 292
    :cond_d1
    if-eqz v1, :cond_f4

    .line 295
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v6, :cond_f1

    const-string/jumbo v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resolveAidLocked: DECISION: routing to payment default default "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_f1
    iput-object v1, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_d0

    .line 299
    :cond_f4
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13b

    if-eqz p2, :cond_13b

    .line 300
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v6, :cond_130

    const-string/jumbo v7, "RegisteredAidCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resolveAidLocked: DECISION: making single handling service "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 301
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 300
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 301
    const-string/jumbo v8, " default."

    .line 300
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_130
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_d0

    .line 305
    :cond_13b
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v6, :cond_d0

    const-string/jumbo v6, "RegisteredAidCache"

    const-string/jumbo v7, "resolveAidLocked: DECISION: routing to all matching services"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0
.end method

.method resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .local p2, "conflictingServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    const/4 v5, 0x1

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    move-result-object v1

    .line 338
    .local v1, "prefixDefaultInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    move-result-object v0

    .line 345
    .local v0, "conflictingDefaultInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_46

    .line 346
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_41

    const-string/jumbo v2, "RegisteredAidCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Prefix AID service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 347
    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 347
    const-string/jumbo v4, " has foreground"

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    const-string/jumbo v4, " preference, ignoring conflicting AIDs."

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_41
    invoke-virtual {p0, p1, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    return-object v2

    .line 352
    :cond_46
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_97

    .line 354
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_5e

    .line 356
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_5b

    const-string/jumbo v2, "RegisteredAidCache"

    const-string/jumbo v3, "One of the conflicting AID registrations is foreground preferred, ignoring prefix."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_5b
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    return-object v2

    .line 361
    :cond_5e
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_92

    const-string/jumbo v2, "RegisteredAidCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Prefix AID service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 361
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    const-string/jumbo v4, " is payment"

    .line 361
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 363
    const-string/jumbo v4, " default, ignoring conflicting AIDs."

    .line 361
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_92
    invoke-virtual {p0, p1, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    return-object v2

    .line 367
    :cond_97
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-nez v2, :cond_9f

    .line 368
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_af

    .line 369
    :cond_9f
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_ac

    const-string/jumbo v2, "RegisteredAidCache"

    const-string/jumbo v3, "One of the conflicting AID registrations is either payment default or foreground preferred, ignoring prefix."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_ac
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    return-object v2

    .line 375
    :cond_af
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_bc

    const-string/jumbo v2, "RegisteredAidCache"

    const-string/jumbo v3, "No service has preference, adding all."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_bc
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    return-object v2
.end method

.method public supportsAidPrefixRegistration()Z
    .registers 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    return v0
.end method

.method public updateDisabledServices(ILjava/util/List;)V
    .registers 17
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_10

    return-void

    .line 699
    :cond_10
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mDisabledServices:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 700
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 701
    .local v7, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_3b

    .line 702
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "service$iterator":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 703
    .local v5, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 708
    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v6    # "service$iterator":Ljava/util/Iterator;
    :cond_3b
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "nfc_disabled_services"

    .line 707
    invoke-static {v9, v10, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 709
    .local v8, "str":Ljava/lang/String;
    if-eqz v8, :cond_4c

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 696
    :cond_4c
    :goto_4c
    return-void

    .line 710
    :cond_4d
    const/4 v2, 0x0

    .line 711
    .local v2, "isDirty":Z
    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_57
    if-ge v9, v11, :cond_80

    aget-object v1, v10, v9

    .line 713
    .local v1, "hash":Ljava/lang/String;
    :try_start_5b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 714
    .local v4, "service":Landroid/content/ComponentName;
    if-eqz v4, :cond_73

    .line 715
    iget-object v12, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mDisabledServices:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_70} :catch_75

    .line 711
    .end local v4    # "service":Landroid/content/ComponentName;
    :goto_70
    add-int/lit8 v9, v9, 0x1

    goto :goto_57

    .line 718
    .restart local v4    # "service":Landroid/content/ComponentName;
    :cond_73
    const/4 v2, 0x1

    goto :goto_70

    .line 720
    .end local v4    # "service":Landroid/content/ComponentName;
    :catch_75
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v12, "RegisteredAidCache"

    const-string/jumbo v13, "Failed to parse DisabledServices hash"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 726
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "hash":Ljava/lang/String;
    :cond_80
    if-eqz v2, :cond_4c

    .line 727
    sget-boolean v9, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v9, :cond_8f

    const-string/jumbo v9, "RegisteredAidCache"

    const-string/jumbo v10, "Remove uninstalled service in disabledServices"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_8f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mDisabledServices:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "service$iterator":Ljava/util/Iterator;
    :goto_9a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 730
    .restart local v4    # "service":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->hashCode()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 731
    const-string/jumbo v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9a

    .line 734
    .end local v4    # "service":Landroid/content/ComponentName;
    :cond_b4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_c7

    .line 735
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContentResolver:Landroid/content/ContentResolver;

    .line 736
    const-string/jumbo v10, "nfc_disabled_services"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 735
    invoke-static {v9, v10, v11, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_4c

    .line 738
    :cond_c7
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContentResolver:Landroid/content/ContentResolver;

    .line 739
    const-string/jumbo v10, "nfc_disabled_services"

    const/4 v11, 0x0

    .line 738
    invoke-static {v9, v10, v11, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_4c
.end method

.method updateRoutingLocked()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 566
    iget-boolean v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    if-nez v6, :cond_14

    .line 567
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v6, :cond_13

    const-string/jumbo v6, "RegisteredAidCache"

    const-string/jumbo v7, "Not updating routing table because NFC is off."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_13
    return-void

    .line 570
    :cond_14
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 573
    .local v5, "routingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 572
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "aidEntry$iterator":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 574
    .local v2, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    .local v0, "aid":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 576
    .local v4, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-boolean v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    if-nez v6, :cond_64

    .line 577
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v6, :cond_22

    const-string/jumbo v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Not routing AID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " on request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 580
    :cond_64
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_22

    .line 582
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v6, :cond_7e

    .line 585
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 586
    :cond_7e
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_8e

    .line 589
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 590
    :cond_8e
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_22

    .line 592
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 595
    .end local v0    # "aid":Ljava/lang/String;
    .end local v2    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v4    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_9e
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mReservedOffHceAids:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_a4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 596
    .restart local v0    # "aid":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 598
    .end local v0    # "aid":Ljava/lang/String;
    :cond_b8
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v6, v5}, Lcom/android/nfc/cardemulation/AidRoutingManager;->configureRouting(Ljava/util/HashMap;)Z

    .line 565
    return-void
.end method
