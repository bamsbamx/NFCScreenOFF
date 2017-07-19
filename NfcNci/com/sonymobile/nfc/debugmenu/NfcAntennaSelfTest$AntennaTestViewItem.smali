.class Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;
.super Ljava/lang/Object;
.source "NfcAntennaSelfTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AntennaTestViewItem"
.end annotation


# instance fields
.field private mCommand:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private mResponse:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;


# direct methods
.method public constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "res"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mLabel:Ljava/lang/String;

    .line 334
    iput-object p3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mCommand:Ljava/lang/String;

    .line 335
    iput-object p4, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mStatus:Ljava/lang/String;

    .line 336
    iput-object p5, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mResponse:Ljava/lang/String;

    .line 332
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 348
    const/4 v1, 0x2

    .line 349
    .local v1, "length":I
    const/4 v2, 0x0

    .line 351
    .local v2, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->-get0()[I

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_33

    .line 352
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->-get0()[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 353
    if-eqz v0, :cond_22

    .line 354
    const/4 v1, 0x6

    .line 356
    :cond_22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_32

    .line 357
    const-string/jumbo v3, "NfcAntennaSelfTest"

    const-string/jumbo v4, "Invalid input value"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 360
    :cond_32
    move v2, v0

    .line 365
    :cond_33
    if-nez v2, :cond_4a

    .line 366
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-static {v3}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)[[B

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {p2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 367
    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mCommand:Ljava/lang/String;

    .line 347
    :goto_46
    return-void

    .line 351
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 369
    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_6f

    .line 370
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-static {v3}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)[[B

    move-result-object v3

    aget-object v3, v3, v2

    .line 371
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    .line 370
    aput-byte v4, v3, v0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 373
    :cond_6f
    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mCommand:Ljava/lang/String;

    goto :goto_46
.end method

.method public setResponse(Ljava/lang/String;[B)V
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "res"    # [B

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 387
    const/4 v2, 0x0

    .line 388
    .local v2, "index":I
    const/4 v3, 0x0

    .line 389
    .local v3, "position":I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->-get0()[I

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_32

    .line 392
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->-get0()[I

    move-result-object v5

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 393
    move v3, v1

    .line 394
    if-lt v1, v8, :cond_2a

    .line 395
    const/4 v2, 0x2

    .line 397
    :cond_2a
    const/4 v4, 0x2

    if-lt v1, v4, :cond_32

    .line 398
    add-int/lit8 v4, v1, -0x1

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v2, v4

    .line 404
    :cond_32
    const-string/jumbo v4, "%02X"

    new-array v5, v8, [Ljava/lang/Object;

    aget-byte v6, p2, v2

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mStatus:Ljava/lang/String;

    .line 406
    add-int/lit8 v2, v2, 0x1

    .line 408
    if-nez v3, :cond_60

    .line 409
    const-string/jumbo v4, "%02X"

    new-array v5, v8, [Ljava/lang/Object;

    aget-byte v6, p2, v2

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mResponse:Ljava/lang/String;

    .line 386
    :goto_5c
    return-void

    .line 391
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 411
    :cond_60
    move v1, v2

    :goto_61
    add-int/lit8 v4, v2, 0x2

    if-ge v1, v4, :cond_7c

    .line 412
    const-string/jumbo v4, "%02X"

    new-array v5, v8, [Ljava/lang/Object;

    aget-byte v6, p2, v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 414
    :cond_7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->mResponse:Ljava/lang/String;

    goto :goto_5c
.end method
