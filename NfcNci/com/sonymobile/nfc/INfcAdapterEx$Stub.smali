.class public abstract Lcom/sonymobile/nfc/INfcAdapterEx$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterEx.java"

# interfaces
.implements Lcom/sonymobile/nfc/INfcAdapterEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/INfcAdapterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.nfc.INfcAdapterEx"

.field static final TRANSACTION_acceptOfLlcpServerSocket:I = 0xc

.field static final TRANSACTION_clearEepromData:I = 0x9

.field static final TRANSACTION_closeOfLlcpServerSocket:I = 0xb

.field static final TRANSACTION_closeOfLlcpSocket:I = 0xe

.field static final TRANSACTION_connectToServiceOfLlcpSocket:I = 0xf

.field static final TRANSACTION_createLlcpServerSocket:I = 0xa

.field static final TRANSACTION_createLlcpSocket:I = 0xd

.field static final TRANSACTION_getProperty:I = 0x2

.field static final TRANSACTION_getRemoteMiuOfLlcpSocket:I = 0x12

.field static final TRANSACTION_isLlcpLinkActivated:I = 0x15

.field static final TRANSACTION_isNfcLocked:I = 0x4

.field static final TRANSACTION_readEepromDataByte:I = 0x7

.field static final TRANSACTION_receiveOfLlcpSocket:I = 0x10

.field static final TRANSACTION_sendOfLlcpSocket:I = 0x11

.field static final TRANSACTION_setClient:I = 0x1

.field static final TRANSACTION_setProperty:I = 0x3

.field static final TRANSACTION_setTestMode:I = 0x5

.field static final TRANSACTION_subscribeLlcpLinkActivatedEvent:I = 0x13

.field static final TRANSACTION_subscribeLlcpLinkDeactivatedEvent:I = 0x14

.field static final TRANSACTION_test:I = 0x6

.field static final TRANSACTION_writeEepromDataByte:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/nfc/INfcAdapterEx;
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
    const-string/jumbo v1, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sonymobile/nfc/INfcAdapterEx;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Lcom/sonymobile/nfc/INfcAdapterEx;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 24
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
    sparse-switch p1, :sswitch_data_2f4

    .line 309
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 45
    :sswitch_8
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x1

    return v2

    .line 50
    :sswitch_12
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 54
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->setClient(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v16

    .line 56
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v2, 0x1

    return v2

    .line 62
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_result":I
    :sswitch_34
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 66
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x1

    return v2

    .line 72
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_52
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 76
    .restart local v9    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 78
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v2, 0x1

    return v2

    .line 84
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":I
    :sswitch_74
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->isNfcLocked()Z

    move-result v18

    .line 86
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v18, :cond_8d

    const/4 v2, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v2, 0x1

    return v2

    .line 87
    :cond_8d
    const/4 v2, 0x0

    goto :goto_86

    .line 92
    .end local v18    # "_result":Z
    :sswitch_8f
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b0

    const/4 v10, 0x1

    .line 95
    .local v10, "_arg0":Z
    :goto_9e
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->setTestMode(Z)I

    move-result v16

    .line 96
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v2, 0x1

    return v2

    .line 94
    .end local v10    # "_arg0":Z
    .end local v16    # "_result":I
    :cond_b0
    const/4 v10, 0x0

    goto :goto_9e

    .line 102
    :sswitch_b2
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 105
    .restart local v9    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->test(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 106
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    const/4 v2, 0x1

    return v2

    .line 112
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_d0
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 116
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 117
    .local v15, "_arg1_length":I
    if-gez v15, :cond_fa

    .line 118
    const/4 v14, 0x0

    .line 123
    :goto_e3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->readEepromDataByte(I[B)I

    move-result v16

    .line 124
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 127
    const/4 v2, 0x1

    return v2

    .line 121
    .end local v16    # "_result":I
    :cond_fa
    new-array v14, v15, [B

    .local v14, "_arg1":[B
    goto :goto_e3

    .line 131
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":[B
    .end local v15    # "_arg1_length":I
    :sswitch_fd
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 135
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    .line 136
    .local v11, "_arg1":B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->writeEepromDataByte(IB)I

    move-result v16

    .line 137
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v2, 0x1

    return v2

    .line 143
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":B
    .end local v16    # "_result":I
    :sswitch_11f
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->clearEepromData()I

    move-result v16

    .line 145
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v2, 0x1

    return v2

    .line 151
    .end local v16    # "_result":I
    :sswitch_137
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 159
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 161
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    .line 162
    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->createLlcpServerSocket(ILjava/lang/String;III)I

    move-result v16

    .line 163
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v2, 0x1

    return v2

    .line 169
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v16    # "_result":I
    :sswitch_165
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 172
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->closeOfLlcpServerSocket(I)I

    move-result v16

    .line 173
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v2, 0x1

    return v2

    .line 179
    .end local v3    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_183
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->acceptOfLlcpServerSocket(I)I

    move-result v16

    .line 183
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v2, 0x1

    return v2

    .line 189
    .end local v3    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_1a1
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 193
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 195
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 197
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 198
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v5, v6}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->createLlcpSocket(IIII)I

    move-result v16

    .line 199
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v2, 0x1

    return v2

    .line 205
    .end local v3    # "_arg0":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v12    # "_arg1":I
    .end local v16    # "_result":I
    :sswitch_1cb
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->closeOfLlcpSocket(I)I

    move-result v16

    .line 209
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v2, 0x1

    return v2

    .line 215
    .end local v3    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_1e9
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 219
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->connectToServiceOfLlcpSocket(ILjava/lang/String;)I

    move-result v16

    .line 221
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v2, 0x1

    return v2

    .line 227
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":I
    :sswitch_20b
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 231
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 232
    .restart local v15    # "_arg1_length":I
    if-gez v15, :cond_235

    .line 233
    const/4 v14, 0x0

    .line 238
    :goto_21e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->receiveOfLlcpSocket(I[B)I

    move-result v16

    .line 239
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 242
    const/4 v2, 0x1

    return v2

    .line 236
    .end local v16    # "_result":I
    :cond_235
    new-array v14, v15, [B

    .restart local v14    # "_arg1":[B
    goto :goto_21e

    .line 246
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":[B
    .end local v15    # "_arg1_length":I
    :sswitch_238
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 251
    .restart local v14    # "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->sendOfLlcpSocket(I[B)I

    move-result v16

    .line 252
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v2, 0x1

    return v2

    .line 258
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":[B
    .end local v16    # "_result":I
    :sswitch_25a
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 261
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->getRemoteMiuOfLlcpSocket(I)I

    move-result v16

    .line 262
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v2, 0x1

    return v2

    .line 268
    .end local v3    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_278
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 272
    .restart local v9    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a6

    .line 273
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    .line 278
    :goto_294
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->subscribeLlcpLinkActivatedEvent(Ljava/lang/String;Landroid/app/PendingIntent;)I

    move-result v16

    .line 279
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v2, 0x1

    return v2

    .line 276
    .end local v16    # "_result":I
    :cond_2a6
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/app/PendingIntent;
    goto :goto_294

    .line 285
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_2a8
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 289
    .restart local v9    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d6

    .line 290
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    .line 295
    :goto_2c4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->subscribeLlcpLinkDeactivatedEvent(Ljava/lang/String;Landroid/app/PendingIntent;)I

    move-result v16

    .line 296
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v2, 0x1

    return v2

    .line 293
    .end local v16    # "_result":I
    :cond_2d6
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_2c4

    .line 302
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_2d8
    const-string/jumbo v2, "com.sonymobile.nfc.INfcAdapterEx"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->isLlcpLinkActivated()Z

    move-result v18

    .line 304
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v18, :cond_2f1

    const/4 v2, 0x1

    :goto_2ea
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v2, 0x1

    return v2

    .line 305
    :cond_2f1
    const/4 v2, 0x0

    goto :goto_2ea

    .line 41
    nop

    :sswitch_data_2f4
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_34
        0x3 -> :sswitch_52
        0x4 -> :sswitch_74
        0x5 -> :sswitch_8f
        0x6 -> :sswitch_b2
        0x7 -> :sswitch_d0
        0x8 -> :sswitch_fd
        0x9 -> :sswitch_11f
        0xa -> :sswitch_137
        0xb -> :sswitch_165
        0xc -> :sswitch_183
        0xd -> :sswitch_1a1
        0xe -> :sswitch_1cb
        0xf -> :sswitch_1e9
        0x10 -> :sswitch_20b
        0x11 -> :sswitch_238
        0x12 -> :sswitch_25a
        0x13 -> :sswitch_278
        0x14 -> :sswitch_2a8
        0x15 -> :sswitch_2d8
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
