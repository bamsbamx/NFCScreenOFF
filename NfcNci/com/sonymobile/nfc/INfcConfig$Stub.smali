.class public abstract Lcom/sonymobile/nfc/INfcConfig$Stub;
.super Landroid/os/Binder;
.source "INfcConfig.java"

# interfaces
.implements Lcom/sonymobile/nfc/INfcConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/INfcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/INfcConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.nfc.INfcConfig"

.field static final TRANSACTION_antennaTest:I = 0x5

.field static final TRANSACTION_getCardEmulationType:I = 0x14

.field static final TRANSACTION_getChipVersion:I = 0x4

.field static final TRANSACTION_getDefaultValue:I = 0x1b

.field static final TRANSACTION_getP2pTargetMode:I = 0x18

.field static final TRANSACTION_getPollingMode:I = 0x1a

.field static final TRANSACTION_getPollingTech:I = 0x16

.field static final TRANSACTION_getSecureElement:I = 0x11

.field static final TRANSACTION_getSecureElementList:I = 0x12

.field static final TRANSACTION_isNfcLocked:I = 0x2

.field static final TRANSACTION_prbsTestStart:I = 0x7

.field static final TRANSACTION_prbsTestStop:I = 0x8

.field static final TRANSACTION_readParameterValue:I = 0xa

.field static final TRANSACTION_readTlvEncodedParameter:I = 0xc

.field static final TRANSACTION_renewRouting:I = 0xf

.field static final TRANSACTION_sendExtCmd:I = 0xd

.field static final TRANSACTION_sendExtCmdWithRb:I = 0xe

.field static final TRANSACTION_setCardEmulationType:I = 0x13

.field static final TRANSACTION_setClient:I = 0x1

.field static final TRANSACTION_setP2pTargetMode:I = 0x17

.field static final TRANSACTION_setPollingMode:I = 0x19

.field static final TRANSACTION_setPollingTech:I = 0x15

.field static final TRANSACTION_setSecureElement:I = 0x10

.field static final TRANSACTION_setTestMode:I = 0x3

.field static final TRANSACTION_swpTest:I = 0x6

.field static final TRANSACTION_writeParameterValue:I = 0x9

.field static final TRANSACTION_writeTlvEncodedParameter:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.sonymobile.nfc.INfcConfig"

    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/nfc/INfcConfig;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_4

    .line 27
    return-object v1

    .line 29
    :cond_4
    const-string/jumbo v1, "com.sonymobile.nfc.INfcConfig"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sonymobile/nfc/INfcConfig;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Lcom/sonymobile/nfc/INfcConfig;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/sonymobile/nfc/INfcConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/INfcConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_354

    .line 325
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 45
    :sswitch_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    return v3

    .line 50
    :sswitch_12
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 54
    .local v10, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 55
    .local v14, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14}, Lcom/sonymobile/nfc/INfcConfig$Stub;->setClient(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v19

    .line 56
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v3, 0x1

    return v3

    .line 62
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":I
    :sswitch_34
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->isNfcLocked()Z

    move-result v20

    .line 64
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v20, :cond_4d

    const/4 v3, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v3, 0x1

    return v3

    .line 65
    :cond_4d
    const/4 v3, 0x0

    goto :goto_46

    .line 70
    .end local v20    # "_result":Z
    :sswitch_4f
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_70

    const/4 v12, 0x1

    .line 73
    .local v12, "_arg0":Z
    :goto_5e
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonymobile/nfc/INfcConfig$Stub;->setTestMode(Z)I

    move-result v19

    .line 74
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v3, 0x1

    return v3

    .line 72
    .end local v12    # "_arg0":Z
    .end local v19    # "_result":I
    :cond_70
    const/4 v12, 0x0

    goto :goto_5e

    .line 80
    :sswitch_72
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getChipVersion()[B

    move-result-object v21

    .line 82
    .local v21, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 84
    const/4 v3, 0x1

    return v3

    .line 88
    .end local v21    # "_result":[B
    :sswitch_8a
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 91
    .local v13, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/INfcConfig$Stub;->antennaTest([B)[B

    move-result-object v21

    .line 92
    .restart local v21    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 94
    const/4 v3, 0x1

    return v3

    .line 98
    .end local v13    # "_arg0":[B
    .end local v21    # "_result":[B
    :sswitch_a8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 101
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/nfc/INfcConfig$Stub;->swpTest(I)I

    move-result v19

    .line 102
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v3, 0x1

    return v3

    .line 108
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_c6
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 113
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/nfc/INfcConfig$Stub;->prbsTestStart(II)I

    move-result v19

    .line 114
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v3, 0x1

    return v3

    .line 120
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v19    # "_result":I
    :sswitch_e8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->prbsTestStop()I

    move-result v19

    .line 122
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v3, 0x1

    return v3

    .line 128
    .end local v19    # "_result":I
    :sswitch_100
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 132
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 134
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 136
    .local v17, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_132

    const/16 v18, 0x1

    .line 137
    .local v18, "_arg3":Z
    :goto_11c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/sonymobile/nfc/INfcConfig$Stub;->writeParameterValue(II[BZ)I

    move-result v19

    .line 138
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v3, 0x1

    return v3

    .line 136
    .end local v18    # "_arg3":Z
    .end local v19    # "_result":I
    :cond_132
    const/16 v18, 0x0

    goto :goto_11c

    .line 144
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v17    # "_arg2":[B
    :sswitch_135
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15a

    const/4 v15, 0x1

    .line 149
    .local v15, "_arg1":Z
    :goto_148
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lcom/sonymobile/nfc/INfcConfig$Stub;->readParameterValue(IZ)[B

    move-result-object v21

    .line 150
    .restart local v21    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 152
    const/4 v3, 0x1

    return v3

    .line 148
    .end local v15    # "_arg1":Z
    .end local v21    # "_result":[B
    :cond_15a
    const/4 v15, 0x0

    goto :goto_148

    .line 156
    .end local v4    # "_arg0":I
    :sswitch_15c
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 159
    .restart local v13    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/INfcConfig$Stub;->writeTlvEncodedParameter([B)I

    move-result v19

    .line 160
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v3, 0x1

    return v3

    .line 166
    .end local v13    # "_arg0":[B
    .end local v19    # "_result":I
    :sswitch_17a
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 169
    .restart local v13    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/INfcConfig$Stub;->readTlvEncodedParameter([B)[B

    move-result-object v21

    .line 170
    .restart local v21    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 172
    const/4 v3, 0x1

    return v3

    .line 176
    .end local v13    # "_arg0":[B
    .end local v21    # "_result":[B
    :sswitch_198
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 179
    .restart local v13    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/INfcConfig$Stub;->sendExtCmd([B)I

    move-result v19

    .line 180
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v3, 0x1

    return v3

    .line 186
    .end local v13    # "_arg0":[B
    .end local v19    # "_result":I
    :sswitch_1b6
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 190
    .restart local v13    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 191
    .local v16, "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/sonymobile/nfc/INfcConfig$Stub;->sendExtCmdWithRb([B[B)I

    move-result v19

    .line 192
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 195
    const/4 v3, 0x1

    return v3

    .line 199
    .end local v13    # "_arg0":[B
    .end local v16    # "_arg1":[B
    .end local v19    # "_result":I
    :sswitch_1e1
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 203
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 205
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 207
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 209
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 211
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20e

    const/4 v9, 0x1

    .local v9, "_arg5":Z
    :goto_204
    move-object/from16 v3, p0

    .line 212
    invoke-virtual/range {v3 .. v9}, Lcom/sonymobile/nfc/INfcConfig$Stub;->renewRouting(IIIIIZ)V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    const/4 v3, 0x1

    return v3

    .line 211
    .end local v9    # "_arg5":Z
    :cond_20e
    const/4 v9, 0x0

    goto :goto_204

    .line 218
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    :sswitch_210
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 221
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/nfc/INfcConfig$Stub;->setSecureElement(I)I

    move-result v19

    .line 222
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v3, 0x1

    return v3

    .line 228
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_22e
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getSecureElement()I

    move-result v19

    .line 230
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v3, 0x1

    return v3

    .line 236
    .end local v19    # "_result":I
    :sswitch_246
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getSecureElementList()[I

    move-result-object v22

    .line 238
    .local v22, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 240
    const/4 v3, 0x1

    return v3

    .line 244
    .end local v22    # "_result":[I
    :sswitch_25e
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 247
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/nfc/INfcConfig$Stub;->setCardEmulationType(I)I

    move-result v19

    .line 248
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v3, 0x1

    return v3

    .line 254
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_27c
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getCardEmulationType()I

    move-result v19

    .line 256
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v3, 0x1

    return v3

    .line 262
    .end local v19    # "_result":I
    :sswitch_294
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 265
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/nfc/INfcConfig$Stub;->setPollingTech(I)I

    move-result v19

    .line 266
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v3, 0x1

    return v3

    .line 272
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_2b2
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getPollingTech()I

    move-result v19

    .line 274
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v3, 0x1

    return v3

    .line 280
    .end local v19    # "_result":I
    :sswitch_2ca
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 283
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/nfc/INfcConfig$Stub;->setP2pTargetMode(I)I

    move-result v19

    .line 284
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v3, 0x1

    return v3

    .line 290
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_2e8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getP2pTargetMode()I

    move-result v19

    .line 292
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v3, 0x1

    return v3

    .line 298
    .end local v19    # "_result":I
    :sswitch_300
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 301
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/nfc/INfcConfig$Stub;->setPollingMode(I)I

    move-result v19

    .line 302
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/4 v3, 0x1

    return v3

    .line 308
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_31e
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getPollingMode()I

    move-result v19

    .line 310
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v3, 0x1

    return v3

    .line 316
    .end local v19    # "_result":I
    :sswitch_336
    const-string/jumbo v3, "com.sonymobile.nfc.INfcConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 319
    .local v11, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getDefaultValue(Ljava/lang/String;)I

    move-result v19

    .line 320
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v3, 0x1

    return v3

    .line 41
    :sswitch_data_354
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_34
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_72
        0x5 -> :sswitch_8a
        0x6 -> :sswitch_a8
        0x7 -> :sswitch_c6
        0x8 -> :sswitch_e8
        0x9 -> :sswitch_100
        0xa -> :sswitch_135
        0xb -> :sswitch_15c
        0xc -> :sswitch_17a
        0xd -> :sswitch_198
        0xe -> :sswitch_1b6
        0xf -> :sswitch_1e1
        0x10 -> :sswitch_210
        0x11 -> :sswitch_22e
        0x12 -> :sswitch_246
        0x13 -> :sswitch_25e
        0x14 -> :sswitch_27c
        0x15 -> :sswitch_294
        0x16 -> :sswitch_2b2
        0x17 -> :sswitch_2ca
        0x18 -> :sswitch_2e8
        0x19 -> :sswitch_300
        0x1a -> :sswitch_31e
        0x1b -> :sswitch_336
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
