.class public final Lcom/android/nfc/snep/SnepMessage;
.super Ljava/lang/Object;
.source "SnepMessage.java"


# static fields
.field private static final HEADER_LENGTH:I = 0x6

.field public static final REQUEST_CONTINUE:B = 0x0t

.field public static final REQUEST_GET:B = 0x1t

.field public static final REQUEST_PUT:B = 0x2t

.field public static final REQUEST_REJECT:B = 0x7ft

.field public static final RESPONSE_BAD_REQUEST:B = -0x3et

.field public static final RESPONSE_CONTINUE:B = -0x80t

.field public static final RESPONSE_EXCESS_DATA:B = -0x3ft

.field public static final RESPONSE_NOT_FOUND:B = -0x40t

.field public static final RESPONSE_NOT_IMPLEMENTED:B = -0x20t

.field public static final RESPONSE_REJECT:B = -0x1t

.field public static final RESPONSE_SUCCESS:B = -0x7ft

.field public static final RESPONSE_UNSUPPORTED_VERSION:B = -0x1ft

.field public static final VERSION:B = 0x10t

.field public static final VERSION_MAJOR:B = 0x1t

.field public static final VERSION_MINOR:B


# instance fields
.field private final mAcceptableLength:I

.field private final mField:B

.field private final mLength:I

.field private final mNdefMessage:Landroid/nfc/NdefMessage;

.field private final mVersion:B


# direct methods
.method constructor <init>(BBIILandroid/nfc/NdefMessage;)V
    .registers 6
    .param p1, "version"    # B
    .param p2, "field"    # B
    .param p3, "length"    # I
    .param p4, "acceptableLength"    # I
    .param p5, "ndefMessage"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-byte p1, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    .line 108
    iput-byte p2, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    .line 109
    iput p3, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .line 110
    iput p4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 111
    iput-object p5, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 106
    return-void
.end method

.method private constructor <init>([B)V
    .registers 9
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 83
    .local v1, "input":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    .line 84
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    .line 85
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .line 86
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3a

    .line 87
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 88
    const/16 v3, 0xa

    .line 89
    .local v3, "ndefOffset":I
    iget v4, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    add-int/lit8 v2, v4, -0x4

    .line 96
    .local v2, "ndefLength":I
    :goto_2b
    if-lez v2, :cond_41

    .line 97
    new-array v0, v2, [B

    .line 98
    .local v0, "bytes":[B
    invoke-static {p1, v3, v0, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 99
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-direct {v4, v0}, Landroid/nfc/NdefMessage;-><init>([B)V

    iput-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 78
    .end local v0    # "bytes":[B
    :goto_39
    return-void

    .line 91
    .end local v2    # "ndefLength":I
    .end local v3    # "ndefOffset":I
    :cond_3a
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 92
    const/4 v3, 0x6

    .line 93
    .restart local v3    # "ndefOffset":I
    iget v2, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .restart local v2    # "ndefLength":I
    goto :goto_2b

    .line 101
    :cond_41
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_39
.end method

.method public static fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    invoke-direct {v0, p0}, Lcom/android/nfc/snep/SnepMessage;-><init>([B)V

    return-object v0
.end method

.method public static getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .registers 8
    .param p0, "acceptableLength"    # I
    .param p1, "ndef"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 54
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v3, v1, 0x4

    const/16 v1, 0x10

    const/4 v2, 0x1

    move v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0
.end method

.method public static getMessage(B)Lcom/android/nfc/snep/SnepMessage;
    .registers 7
    .param p0, "field"    # B

    .prologue
    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/16 v1, 0x10

    const/4 v5, 0x0

    move v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0
.end method

.method public static getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .registers 7
    .param p0, "ndef"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 59
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    array-length v3, v1

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0
.end method

.method public static getSuccessResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .registers 11
    .param p0, "ndef"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x10

    const/16 v2, -0x7f

    const/4 v3, 0x0

    .line 67
    if-nez p0, :cond_f

    .line 68
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0

    .line 70
    :cond_f
    new-instance v4, Lcom/android/nfc/snep/SnepMessage;

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v7, v0

    move v5, v1

    move v6, v2

    move v8, v3

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v4
.end method


# virtual methods
.method public getAcceptableLength()I
    .registers 3

    .prologue
    .line 164
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 166
    const-string/jumbo v1, "Acceptable Length only available on get request messages."

    .line 165
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_e
    iget v0, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    return v0
.end method

.method public getField()B
    .registers 2

    .prologue
    .line 152
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    return v0
.end method

.method public getNdefMessage()Landroid/nfc/NdefMessage;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method public getVersion()B
    .registers 2

    .prologue
    .line 156
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    return v0
.end method

.method public toByteArray()[B
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 116
    iget-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    if-eqz v4, :cond_40

    .line 117
    iget-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v4}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 124
    .local v1, "bytes":[B
    :goto_c
    :try_start_c
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    if-ne v4, v5, :cond_44

    .line 125
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, v1

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 130
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_1a
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 131
    .local v3, "output":Ljava/io/DataOutputStream;
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 132
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 133
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    if-ne v4, v5, :cond_4d

    .line 134
    array-length v4, v1

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 135
    iget v4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 139
    :goto_38
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_3b} :catch_52

    .line 144
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 119
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bytes":[B
    .end local v3    # "output":Ljava/io/DataOutputStream;
    :cond_40
    const/4 v4, 0x0

    new-array v1, v4, [B

    .restart local v1    # "bytes":[B
    goto :goto_c

    .line 127
    :cond_44
    :try_start_44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, v1

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    goto :goto_1a

    .line 137
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    :cond_4d
    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_51} :catch_52

    goto :goto_38

    .line 140
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "output":Ljava/io/DataOutputStream;
    :catch_52
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    return-object v6
.end method
