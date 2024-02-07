.class public Lcom/android/nfc/snep/SnepMessenger;
.super Ljava/lang/Object;
.source "SnepMessenger.java"


# static fields
.field private static final DBG:Z

.field private static final HEADER_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnepMessager"


# instance fields
.field final mFragmentLength:I

.field final mIsClient:Z

.field final mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    nop

    .line 37
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    .line 36
    return-void
.end method

.method public constructor <init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .locals 0
    .param p1, "isClient"    # Z
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 45
    iput p3, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    .line 46
    iput-boolean p1, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    .line 47
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V

    .line 284
    return-void
.end method

.method public getMessage()Lcom/android/nfc/snep/SnepMessage;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/nfc/snep/SnepException;
        }
    .end annotation

    .line 137
    move-object/from16 v1, p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v2, v1, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v2, v0

    .line 138
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    iget v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    new-array v3, v0, [B

    .line 140
    .local v3, "partial":[B
    const/4 v4, 0x0

    .line 141
    .local v4, "requestSize":I
    const/4 v5, 0x0

    .line 142
    .local v5, "readSize":I
    const/4 v6, 0x0

    .line 143
    .local v6, "requestVersion":B
    const/4 v7, 0x0

    .line 144
    .local v7, "requestField":B
    const/4 v8, 0x0

    .line 147
    .local v8, "doneReading":Z
    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "fieldContinue":B
    const/16 v9, 0x7f

    move v10, v9

    move v9, v0

    .local v9, "fieldReject":B
    goto :goto_0

    .line 151
    .end local v0    # "fieldContinue":B
    .end local v9    # "fieldReject":B
    :cond_0
    const/16 v0, -0x80

    .line 152
    .restart local v0    # "fieldContinue":B
    const/4 v9, -0x1

    move v10, v9

    move v9, v0

    .line 155
    .end local v0    # "fieldContinue":B
    .local v9, "fieldContinue":B
    .local v10, "fieldReject":B
    :goto_0
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v11

    .line 156
    .local v11, "size":I
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    const-string v12, " bytes"

    const-string v13, "read "

    const-string v14, "SnepMessager"

    if-eqz v0, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    if-ltz v11, :cond_1c

    .line 164
    const/4 v15, 0x6

    if-ge v11, v15, :cond_4

    .line 166
    :try_start_0
    sget-boolean v12, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v12, :cond_3

    iget-boolean v12, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v12, :cond_3

    .line 167
    if-eqz v0, :cond_2

    const-string v0, "Invalid header length"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    goto :goto_1

    .line 170
    :cond_3
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 173
    :goto_1
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_2

    .line 174
    :catch_0
    move-exception v0

    .line 177
    :goto_2
    new-instance v0, Ljava/io/IOException;

    const-string v12, "Invalid fragment from sender."

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_4
    add-int/lit8 v5, v11, -0x6

    .line 180
    const/4 v15, 0x0

    invoke-virtual {v2, v3, v15, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 183
    new-instance v15, Ljava/io/DataInputStream;

    move/from16 v16, v4

    .end local v4    # "requestSize":I
    .local v16, "requestSize":I
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v15, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v15

    .line 184
    .local v4, "dataIn":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 185
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    .line 186
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 188
    .end local v16    # "requestSize":I
    .local v15, "requestSize":I
    if-eqz v0, :cond_5

    move-object/from16 v23, v4

    .end local v4    # "dataIn":Ljava/io/DataInputStream;
    .local v23, "dataIn":Ljava/io/DataInputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v24, v8

    .end local v8    # "doneReading":Z
    .local v24, "doneReading":Z
    const-string v8, " of "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v23    # "dataIn":Ljava/io/DataInputStream;
    .end local v24    # "doneReading":Z
    .restart local v4    # "dataIn":Ljava/io/DataInputStream;
    .restart local v8    # "doneReading":Z
    :cond_5
    move-object/from16 v23, v4

    move/from16 v24, v8

    .line 190
    .end local v4    # "dataIn":Ljava/io/DataInputStream;
    .end local v8    # "doneReading":Z
    .restart local v23    # "dataIn":Ljava/io/DataInputStream;
    .restart local v24    # "doneReading":Z
    :goto_3
    and-int/lit16 v4, v6, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const/4 v8, 0x1

    if-eq v4, v8, :cond_8

    .line 191
    sget-boolean v4, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    const/16 v8, -0x1f

    if-eqz v4, :cond_6

    .line 192
    invoke-static {v8}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    goto :goto_4

    .line 195
    :cond_6
    sget-boolean v4, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v4, :cond_7

    .line 196
    invoke-static {v8}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    goto :goto_4

    .line 200
    :cond_7
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-direct/range {v17 .. v22}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0

    .line 206
    :cond_8
    :goto_4
    sget-boolean v4, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v4, :cond_14

    .line 208
    iget-boolean v4, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v4, :cond_b

    const/16 v4, -0x80

    if-eq v7, v4, :cond_9

    const/16 v4, -0x7f

    if-eq v7, v4, :cond_9

    const/16 v4, -0x40

    if-ne v7, v4, :cond_b

    .line 211
    :cond_9
    if-eqz v0, :cond_a

    const-string v4, "errorneous response received, disconnecting client"

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 214
    :cond_b
    iget-boolean v4, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v4, :cond_d

    const/4 v4, 0x3

    if-ne v7, v4, :cond_d

    .line 215
    if-eqz v0, :cond_c

    const-string v4, "unknown request received, disconnecting client"

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_c
    const/16 v4, -0x3e

    invoke-static {v4}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 220
    :cond_d
    iget-boolean v4, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x2

    if-ne v7, v4, :cond_f

    .line 221
    if-eqz v0, :cond_e

    const-string v4, "errorneous PUT request received, disconnecting from server"

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 225
    :cond_f
    iget-boolean v4, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    const-string v8, "responding reject"

    move/from16 v25, v11

    .end local v11    # "size":I
    .local v25, "size":I
    const/16 v11, 0x400

    if-eqz v4, :cond_11

    if-le v15, v11, :cond_11

    .line 226
    if-eqz v0, :cond_10

    invoke-static {v14, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_10
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v15

    invoke-direct/range {v17 .. v22}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0

    .line 230
    :cond_11
    if-nez v4, :cond_15

    if-gt v15, v11, :cond_12

    const/4 v4, -0x1

    if-ne v15, v4, :cond_15

    .line 232
    :cond_12
    if-eqz v0, :cond_13

    invoke-static {v14, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_13
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v15

    invoke-direct/range {v17 .. v22}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0

    .line 206
    .end local v25    # "size":I
    .restart local v11    # "size":I
    :cond_14
    move/from16 v25, v11

    .line 237
    .end local v11    # "size":I
    .restart local v25    # "size":I
    :cond_15
    if-le v15, v5, :cond_17

    .line 238
    if-eqz v0, :cond_16

    const-string v0, "requesting continuation"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_16
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v9}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    move/from16 v8, v24

    move/from16 v11, v25

    goto :goto_5

    .line 241
    :cond_17
    const/4 v8, 0x1

    move/from16 v11, v25

    .line 245
    .end local v24    # "doneReading":Z
    .end local v25    # "size":I
    .restart local v8    # "doneReading":Z
    .restart local v11    # "size":I
    :goto_5
    if-nez v8, :cond_1b

    .line 247
    :try_start_1
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v0

    move v11, v0

    .line 248
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_18
    if-ltz v11, :cond_1a

    .line 257
    add-int/2addr v5, v11

    .line 258
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 259
    if-ne v5, v15, :cond_19

    .line 260
    const/4 v4, 0x1

    move v8, v4

    .line 270
    :cond_19
    goto :goto_5

    .line 251
    :cond_1a
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 254
    goto :goto_6

    .line 252
    :catch_1
    move-exception v0

    .line 255
    :goto_6
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .end local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "partial":[B
    .end local v5    # "readSize":I
    .end local v6    # "requestVersion":B
    .end local v7    # "requestField":B
    .end local v8    # "doneReading":Z
    .end local v9    # "fieldContinue":B
    .end local v10    # "fieldReject":B
    .end local v11    # "size":I
    .end local v15    # "requestSize":I
    .end local v23    # "dataIn":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/nfc/snep/SnepMessenger;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 263
    .restart local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "partial":[B
    .restart local v5    # "readSize":I
    .restart local v6    # "requestVersion":B
    .restart local v7    # "requestField":B
    .restart local v8    # "doneReading":Z
    .restart local v9    # "fieldContinue":B
    .restart local v10    # "fieldReject":B
    .restart local v11    # "size":I
    .restart local v15    # "requestSize":I
    .restart local v23    # "dataIn":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepMessenger;
    :catch_2
    move-exception v0

    move-object v4, v0

    .line 265
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 268
    goto :goto_7

    .line 266
    :catch_3
    move-exception v0

    .line 269
    :goto_7
    throw v4

    .line 275
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1b
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0
    :try_end_5
    .catch Landroid/nfc/FormatException; {:try_start_5 .. :try_end_5} :catch_4

    return-object v0

    .line 276
    :catch_4
    move-exception v0

    .line 277
    .local v0, "e":Landroid/nfc/FormatException;
    const-string v4, "Badly formatted NDEF message, ignoring"

    invoke-static {v14, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    new-instance v4, Lcom/android/nfc/snep/SnepException;

    invoke-direct {v4, v0}, Lcom/android/nfc/snep/SnepException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 159
    .end local v0    # "e":Landroid/nfc/FormatException;
    .end local v15    # "requestSize":I
    .end local v23    # "dataIn":Ljava/io/DataInputStream;
    .local v4, "requestSize":I
    :cond_1c
    move/from16 v16, v4

    move/from16 v24, v8

    move/from16 v25, v11

    .end local v4    # "requestSize":I
    .end local v8    # "doneReading":Z
    .end local v11    # "size":I
    .restart local v16    # "requestSize":I
    .restart local v24    # "doneReading":Z
    .restart local v25    # "size":I
    :try_start_6
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 162
    goto :goto_8

    .line 160
    :catch_5
    move-exception v0

    .line 163
    :goto_8
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Error reading SNEP message."

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    .locals 16
    .param p1, "msg"    # Lcom/android/nfc/snep/SnepMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    move-object/from16 v1, p0

    const-string v2, "Invalid SNEP message"

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v3

    .line 52
    .local v3, "buffer":[B
    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v0, :cond_0

    .line 53
    const/16 v0, -0x80

    move v4, v0

    .local v0, "remoteContinue":B
    goto :goto_0

    .line 55
    .end local v0    # "remoteContinue":B
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    .line 57
    .local v4, "remoteContinue":B
    :goto_0
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    const-string v5, "about to send a "

    const-string v6, "SnepMessager"

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " byte message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    array-length v7, v3

    iget v8, v1, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 61
    .local v7, "length":I
    const/4 v8, 0x0

    invoke-static {v3, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 62
    .local v8, "tmpBuffer":[B
    const-string v9, " byte fragment"

    if-eqz v0, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    iget-object v10, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v10, v8}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 65
    array-length v10, v3

    if-ne v7, v10, :cond_3

    .line 66
    return-void

    .line 70
    :cond_3
    move v10, v7

    .line 71
    .local v10, "offset":I
    const/4 v11, 0x6

    new-array v12, v11, [B

    .line 72
    .local v12, "responseBytes":[B
    iget-object v13, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v13, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 75
    :try_start_0
    invoke-static {v12}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v13
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    .local v13, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    nop

    .line 80
    if-eqz v0, :cond_4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got response from first fragment: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_4
    invoke-virtual {v13}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v14

    if-ne v14, v4, :cond_d

    .line 86
    sget-boolean v14, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v14, :cond_7

    .line 87
    iget-boolean v14, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v14, :cond_7

    sget v14, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    if-ne v14, v11, :cond_7

    .line 88
    array-length v11, v3

    sub-int/2addr v11, v10

    iget v14, v1, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 89
    add-int v11, v10, v7

    invoke-static {v3, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 90
    if-eqz v0, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_5
    iget-object v11, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v11, v8}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 92
    add-int/2addr v10, v7

    .line 94
    iget-object v11, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v11, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 97
    :try_start_1
    invoke-static {v12}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v11
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v11

    .line 100
    nop

    .line 101
    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got response from second fragment: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_6
    invoke-virtual {v13}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v0

    if-ne v0, v4, :cond_7

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 104
    return-void

    .line 98
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 99
    .local v0, "e":Landroid/nfc/FormatException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 110
    .end local v0    # "e":Landroid/nfc/FormatException;
    :cond_7
    :goto_1
    array-length v0, v3

    if-ge v10, v0, :cond_c

    .line 111
    array-length v0, v3

    sub-int/2addr v0, v10

    iget v11, v1, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 112
    add-int v0, v10, v7

    invoke-static {v3, v10, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 113
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_8
    iget-object v11, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v11, v8}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 116
    sget-boolean v11, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v11, :cond_b

    .line 117
    iget-boolean v11, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v11, :cond_b

    sget v11, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mTestCaseId:I

    const/4 v14, 0x1

    if-ne v11, v14, :cond_b

    .line 118
    iget-object v11, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v11, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 120
    :try_start_2
    invoke-static {v12}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v11
    :try_end_2
    .catch Landroid/nfc/FormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    .end local v13    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    .local v11, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    nop

    .line 124
    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got continue response after second fragment: and now disconnecting..."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_9
    invoke-virtual {v11}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v0

    if-ne v0, v4, :cond_a

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 127
    return-void

    .line 125
    :cond_a
    move-object v13, v11

    goto :goto_2

    .line 121
    .end local v11    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    .restart local v13    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 122
    .restart local v0    # "e":Landroid/nfc/FormatException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 132
    .end local v0    # "e":Landroid/nfc/FormatException;
    :cond_b
    :goto_2
    add-int/2addr v10, v7

    goto :goto_1

    .line 134
    :cond_c
    return-void

    .line 82
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid response from server ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    invoke-virtual {v13}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    .end local v13    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 77
    .restart local v0    # "e":Landroid/nfc/FormatException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
