.class public Lcom/android/nfc/ndefpush/NdefPushProtocol;
.super Ljava/lang/Object;
.source "NdefPushProtocol.java"


# static fields
.field public static final ACTION_BACKGROUND:B = 0x2t

.field public static final ACTION_IMMEDIATE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "NdefMessageSet"

.field private static final VERSION:B = 0x1t


# instance fields
.field private mActions:[B

.field private mMessages:[Landroid/nfc/NdefMessage;

.field private mNumMessages:I


# direct methods
.method public constructor <init>(Landroid/nfc/NdefMessage;B)V
    .locals 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "action"    # B

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    .line 44
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 45
    const/4 v2, 0x0

    aput-byte p2, v1, v2

    .line 46
    new-array v0, v0, [Landroid/nfc/NdefMessage;

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 47
    aput-object p1, v0, v2

    .line 48
    return-void
.end method

.method public constructor <init>([B)V
    .locals 11
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 65
    const-string v0, "Error while parsing NdefMessageSet"

    const-string v1, "NdefMessageSet"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 67
    .local v2, "buffer":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v3, "input":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 76
    .local v4, "version":B
    nop

    .line 78
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 85
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 89
    nop

    .line 90
    if-eqz v5, :cond_2

    .line 96
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 97
    new-array v5, v5, [Landroid/nfc/NdefMessage;

    iput-object v5, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 98
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v5, v6, :cond_1

    .line 101
    :try_start_2
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    aput-byte v7, v6, v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 105
    nop

    .line 109
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 113
    .local v6, "length":I
    nop

    .line 114
    new-array v7, v6, [B

    .line 118
    .local v7, "bytes":[B
    :try_start_4
    invoke-virtual {v3, v7}, Ljava/io/DataInputStream;->read([B)I

    move-result v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 122
    .local v8, "lengthRead":I
    nop

    .line 123
    if-ne v6, v8, :cond_0

    .line 130
    :try_start_5
    iget-object v9, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    new-instance v10, Landroid/nfc/NdefMessage;

    invoke-direct {v10, v7}, Landroid/nfc/NdefMessage;-><init>([B)V

    aput-object v10, v9, v5
    :try_end_5
    .catch Landroid/nfc/FormatException; {:try_start_5 .. :try_end_5} :catch_0

    .line 133
    nop

    .line 98
    .end local v6    # "length":I
    .end local v7    # "bytes":[B
    .end local v8    # "lengthRead":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 131
    .restart local v6    # "length":I
    .restart local v7    # "bytes":[B
    .restart local v8    # "lengthRead":I
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/nfc/FormatException;
    throw v0

    .line 124
    .end local v0    # "e":Landroid/nfc/FormatException;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes but expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v1, Landroid/nfc/FormatException;

    invoke-direct {v1, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    .end local v8    # "lengthRead":I
    :catch_1
    move-exception v8

    .line 120
    .local v8, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read bytes for message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Landroid/nfc/FormatException;

    invoke-direct {v1, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v6    # "length":I
    .end local v7    # "bytes":[B
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 111
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read length for message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Landroid/nfc/FormatException;

    invoke-direct {v1, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 103
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read action for message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v1, Landroid/nfc/FormatException;

    invoke-direct {v1, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    .end local v5    # "i":I
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    return-void

    .line 91
    :cond_2
    const-string v5, "No NdefMessage inside NdefMessageSet packet"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v1, Landroid/nfc/FormatException;

    invoke-direct {v1, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :catch_4
    move-exception v5

    .line 87
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Unable to read numMessages"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Landroid/nfc/FormatException;

    invoke-direct {v1, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got version "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ",  expected "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Landroid/nfc/FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    .end local v4    # "version":B
    :catch_5
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Unable to read version"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v1, Landroid/nfc/FormatException;

    invoke-direct {v1, v4}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B[Landroid/nfc/NdefMessage;)V
    .locals 3
    .param p1, "actions"    # [B
    .param p2, "messages"    # [Landroid/nfc/NdefMessage;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 57
    array-length v0, p1

    .line 58
    .local v0, "numMessages":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 59
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    new-array v1, v0, [Landroid/nfc/NdefMessage;

    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 61
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    .line 63
    return-void

    .line 52
    .end local v0    # "numMessages":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actions and messages must be the same size and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getImmediate()Landroid/nfc/NdefMessage;
    .locals 3

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    aget-object v1, v1, v0

    return-object v1

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 5

    .line 148
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 149
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 152
    .local v1, "output":Ljava/io/DataOutputStream;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 153
    iget v2, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 154
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v2, v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    aget-byte v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 156
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    .line 157
    .local v3, "bytes":[B
    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 158
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v3    # "bytes":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "i":I
    :cond_0
    nop

    .line 164
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    return-object v3
.end method
