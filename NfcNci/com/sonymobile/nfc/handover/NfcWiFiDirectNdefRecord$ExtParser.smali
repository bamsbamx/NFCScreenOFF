.class Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;
.super Ljava/lang/Object;
.source "NfcWiFiDirectNdefRecord.java"

# interfaces
.implements Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtTlvParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;


# direct methods
.method public constructor <init>(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isExtTlvExist(I[B)Z
    .registers 13
    .param p1, "type"    # I
    .param p2, "vendorExt"    # [B

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 365
    const/16 v4, 0x1049

    if-eq p1, v4, :cond_8

    .line 366
    return v7

    .line 369
    :cond_8
    if-eqz p2, :cond_eb

    .line 370
    invoke-static {}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-get0()Z

    move-result v4

    if-eqz v4, :cond_30

    const-string/jumbo v4, "NfcWiFiDirectNdefRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vendorExt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-virtual {v6, p2}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_30
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, p2, v7, v9, v6}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->bytesToNum([BIILjava/nio/ByteOrder;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-set0(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;I)I

    .line 372
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-static {v4}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-get2(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)I

    move-result v4

    const v5, 0xff0001

    if-lt v4, v5, :cond_eb

    .line 374
    array-length v4, p2

    invoke-static {p2, v9, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 375
    .local v1, "subElems":[B
    invoke-static {}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-get0()Z

    move-result v4

    if-eqz v4, :cond_73

    const-string/jumbo v4, "NfcWiFiDirectNdefRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subElems:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-virtual {v6, v1}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_73
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-virtual {v4, v1, v8, v8}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->parseTlv([BII)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 378
    .local v0, "subElemTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;"
    if-nez v0, :cond_85

    .line 379
    const-string/jumbo v4, "NfcWiFiDirectNdefRecord"

    const-string/jumbo v5, "Failed to parse sub element"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return v7

    .line 382
    :cond_85
    const/4 v2, 0x0

    .line 383
    .local v2, "verMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;>;"
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-static {v4}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-get1(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-static {v5}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-get2(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 384
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-static {v4}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-get1(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-static {v5}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-get2(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "verMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;>;"
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 390
    .local v2, "verMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;>;"
    :goto_b2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 389
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 391
    .local v3, "version":[B
    aget-byte v4, v3, v7

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-static {v4}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-get1(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-static {v5}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-get2(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-static {}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-get0()Z

    move-result v4

    if-eqz v4, :cond_eb

    iget-object v4, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtParser;->this$0:Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-static {v5}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->-get1(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->dumpMap(Ljava/util/LinkedHashMap;)V

    .line 397
    .end local v0    # "subElemTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;"
    .end local v1    # "subElems":[B
    .end local v2    # "verMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;>;"
    .end local v3    # "version":[B
    :cond_eb
    return v8

    .line 386
    .restart local v0    # "subElemTable":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;"
    .restart local v1    # "subElems":[B
    .local v2, "verMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;>;"
    :cond_ec
    new-instance v2, Ljava/util/LinkedHashMap;

    .end local v2    # "verMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;>;"
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .local v2, "verMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;[B>;>;"
    goto :goto_b2
.end method
