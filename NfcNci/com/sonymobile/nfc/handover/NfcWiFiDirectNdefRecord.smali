.class public Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
.super Lcom/sonymobile/nfc/handover/NfcTlvHandler;
.source "NfcWiFiDirectNdefRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;,
        Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtTlvParser;
    }
.end annotation


# static fields
.field private static final ATTR_TLV_LEN_L:I = 0x2

.field private static final ATTR_TLV_LEN_T:I = 0x2

.field private static final ATTR_TYPE_MANDATORY_ITEMS:[I

.field private static final ATTR_TYPE_NEW_PASSWORD:I = 0x102a

.field private static final ATTR_TYPE_VENDOR_EXT:I = 0x1049

.field private static final ATTR_TYPE_VERSION:I = 0x104a

.field private static final DBG:Z

.field private static final SUB_ELEM_LEN_ID:I = 0x1

.field private static final SUB_ELEM_LEN_LEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NfcWiFiDirectNdefRecord"

.field private static final VENDOR_ID_LEN:I = 0x3


# instance fields
.field private mAttributeTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mIsWritable:Z

.field private mVendorExtTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;>;>;"
        }
    .end annotation
.end field

.field private mVendorId:I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Ljava/util/LinkedHashMap;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorExtTable:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorId:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;I)I
    .registers 2

    iput p1, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorId:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->DBG:Z

    .line 39
    const/16 v0, 0x104a

    .line 40
    const/4 v1, 0x3

    .line 38
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->ATTR_TYPE_MANDATORY_ITEMS:[I

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/NfcTlvHandler;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mAttributeTable:Ljava/util/LinkedHashMap;

    .line 45
    iput-object v0, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorExtTable:Ljava/util/LinkedHashMap;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mIsWritable:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorId:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/nfc/NdefMessage;)V
    .registers 7
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/NfcTlvHandler;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mAttributeTable:Ljava/util/LinkedHashMap;

    .line 45
    iput-object v2, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorExtTable:Ljava/util/LinkedHashMap;

    .line 46
    iput-boolean v3, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mIsWritable:Z

    .line 47
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorId:I

    .line 72
    if-nez p1, :cond_1a

    .line 73
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "message is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_1a
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 77
    .local v0, "records":[Landroid/nfc/NdefRecord;
    if-eqz v0, :cond_23

    array-length v2, v0

    if-nez v2, :cond_2c

    .line 78
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "no record found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_2c
    aget-object v2, v0, v3

    if-eqz v2, :cond_23

    .line 80
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorExtTable:Ljava/util/LinkedHashMap;

    .line 82
    aget-object v2, v0, v3

    invoke-direct {p0, v2}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->parseWifiDirectNdefRecord(Landroid/nfc/NdefRecord;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mAttributeTable:Ljava/util/LinkedHashMap;

    .line 83
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mAttributeTable:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_4c

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "no record found: sony.com:wfp2p"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_4c
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_6f

    .line 90
    new-instance v1, Ljava/lang/String;

    aget-object v2, v0, v4

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 91
    .local v1, "type":Ljava/lang/String;
    aget-object v2, v0, v4

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6f

    .line 92
    const-string/jumbo v2, "sony.com:wt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 91
    if-eqz v2, :cond_6f

    .line 93
    iput-boolean v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mIsWritable:Z

    .line 71
    .end local v1    # "type":Ljava/lang/String;
    :cond_6f
    return-void
.end method

.method private parseWifiDirectNdefRecord(Landroid/nfc/NdefRecord;)Ljava/util/LinkedHashMap;
    .registers 13
    .param p1, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "data":[B
    const/4 v5, 0x0

    .line 318
    .local v5, "records":[Landroid/nfc/NdefRecord;
    const/4 v3, 0x0

    .line 320
    .local v3, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;"
    if-nez p1, :cond_11

    .line 321
    const-string/jumbo v7, "NfcWiFiDirectNdefRecord"

    const-string/jumbo v8, "parse WiFi Direct Rec: record is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-object v9

    .line 325
    :cond_11
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    .line 326
    .local v4, "payload":[B
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 328
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_43

    .line 329
    const-string/jumbo v7, "sony.com:wfp2p"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 334
    new-instance v7, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;

    invoke-direct {v7, p0}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;-><init>(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)V

    invoke-virtual {p0, v4, v10, v10, v7}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->parseTlv([BIILcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtTlvParser;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 335
    .local v3, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;"
    if-nez v3, :cond_4d

    .line 336
    const-string/jumbo v7, "NfcWiFiDirectNdefRecord"

    const-string/jumbo v8, "parse WiFi Direct Rec: TLV parser failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-object v9

    .line 330
    .local v3, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;"
    :cond_43
    const-string/jumbo v7, "NfcWiFiDirectNdefRecord"

    const-string/jumbo v8, "parse WiFi Direct Rec: not suitable record for this parser"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-object v9

    .line 339
    .local v3, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;"
    :cond_4d
    sget-boolean v7, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->DBG:Z

    if-eqz v7, :cond_54

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->dumpMap(Ljava/util/LinkedHashMap;)V

    .line 342
    :cond_54
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 343
    .local v2, "keys":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_65
    sget-object v7, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->ATTR_TYPE_MANDATORY_ITEMS:[I

    array-length v7, v7

    if-ge v1, v7, :cond_a7

    .line 344
    array-length v7, v2

    sget-object v8, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->ATTR_TYPE_MANDATORY_ITEMS:[I

    array-length v8, v8

    if-lt v7, v8, :cond_97

    .line 345
    sget-object v7, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->ATTR_TYPE_MANDATORY_ITEMS:[I

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 349
    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->ATTR_TYPE_MANDATORY_ITEMS:[I

    aget v8, v8, v1

    if-eq v7, v8, :cond_a4

    .line 350
    const-string/jumbo v7, "NfcWiFiDirectNdefRecord"

    const-string/jumbo v8, "parse WiFi Direct Rec: invalid order of mandatory items"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 352
    return-object v9

    .line 346
    :cond_97
    const-string/jumbo v7, "NfcWiFiDirectNdefRecord"

    const-string/jumbo v8, "parse WiFi Direct Rec: not enough mandatory items"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 348
    return-object v9

    .line 343
    :cond_a4
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 356
    :cond_a7
    return-object v3
.end method


# virtual methods
.method public declared-synchronized getAvailableVer(II)I
    .registers 9
    .param p1, "vendorId"    # I
    .param p2, "formatVer"    # I

    .prologue
    monitor-enter p0

    .line 218
    const/4 v0, -0x1

    .line 220
    .local v0, "availableVer":I
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorExtTable:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_12

    .line 221
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "vendor extension TLV not found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 225
    :cond_12
    :try_start_12
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorExtTable:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 226
    .local v1, "verMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;>;"
    if-nez v1, :cond_29

    .line 227
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "no vendorId found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    :cond_29
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "version$iterator":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_40
    .catchall {:try_start_12 .. :try_end_40} :catchall_f

    move-result v2

    .line 231
    .local v2, "version":I
    if-ge v0, v2, :cond_31

    if-gt v2, p2, :cond_31

    .line 232
    move v0, v2

    goto :goto_31

    .end local v2    # "version":I
    :cond_47
    monitor-exit p0

    .line 235
    return v0
.end method

.method public declared-synchronized getTailEndVer(I)I
    .registers 8
    .param p1, "vendorId"    # I

    .prologue
    monitor-enter p0

    .line 184
    const/4 v3, -0x1

    .line 186
    .local v3, "version":I
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorExtTable:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_12

    .line 187
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "vendor extension TLV not found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 191
    :cond_12
    :try_start_12
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorExtTable:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 192
    .local v2, "verMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;>;"
    if-nez v2, :cond_29

    .line 193
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Wi-Fi Direct Configuration Record not found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    :cond_29
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_40
    .catchall {:try_start_12 .. :try_end_40} :catchall_f

    move-result v0

    .line 198
    .local v0, "key":I
    move v3, v0

    goto :goto_31

    .end local v0    # "key":I
    :cond_43
    monitor-exit p0

    .line 200
    return v3
.end method

.method public declared-synchronized getTlvTable()Ljava/util/LinkedHashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mAttributeTable:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_11

    .line 112
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "no record found: sony.com:wfp2p"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 116
    :cond_11
    :try_start_11
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 117
    .local v1, "newMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;"
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mAttributeTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 118
    .local v0, "entries":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 120
    .local v2, "type":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mAttributeTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 121
    .local v3, "val":[B
    if-eqz v3, :cond_20

    .line 122
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_e

    goto :goto_20

    .end local v2    # "type":Ljava/lang/Integer;
    .end local v3    # "val":[B
    :cond_3f
    monitor-exit p0

    .line 125
    return-object v1
.end method

.method public declared-synchronized getTlvValue(I)[B
    .registers 5
    .param p1, "type"    # I

    .prologue
    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mAttributeTable:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_11

    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "no record found: sony.com:wfp2p"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 147
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mAttributeTable:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 148
    .local v0, "value":[B
    if-nez v0, :cond_28

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "no value found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_28
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_e

    move-result-object v1

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getVendorId()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 164
    :try_start_1
    iget v0, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 167
    :cond_12
    :try_start_12
    iget v0, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorId:I
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getVendorTlvValue(II)[B
    .registers 5
    .param p1, "vendorId"    # I
    .param p2, "subElemId"    # I

    .prologue
    monitor-enter p0

    .line 255
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->getTailEndVer(I)I

    move-result v0

    .line 257
    .local v0, "version":I
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->getVendorTlvValue(III)[B
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0    # "version":I
    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getVendorTlvValue(III)[B
    .registers 9
    .param p1, "vendorId"    # I
    .param p2, "subElemId"    # I
    .param p3, "formatVer"    # I

    .prologue
    monitor-enter p0

    .line 278
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorExtTable:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_11

    .line 279
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "vendor extension TLV not found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 283
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mVendorExtTable:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 284
    .local v2, "verMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;>;"
    if-nez v2, :cond_28

    .line 285
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "no vendorId found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 288
    :cond_28
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 289
    .local v1, "subElemTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;"
    if-nez v1, :cond_3d

    .line 290
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "no version found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    :cond_3d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 294
    .local v0, "subElem":[B
    if-nez v0, :cond_52

    .line 295
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "no subElementId found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 297
    :cond_52
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_56
    .catchall {:try_start_11 .. :try_end_56} :catchall_e

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized isWritable()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 309
    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->mIsWritable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
