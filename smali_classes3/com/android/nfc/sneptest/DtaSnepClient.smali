.class public final Lcom/android/nfc/sneptest/DtaSnepClient;
.super Ljava/lang/Object;
.source "DtaSnepClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ACCEPTABLE_LENGTH:I = 0x400

.field private static final DEFAULT_MIU:I = 0x80

.field private static final DEFAULT_PORT:I = 0x3f

.field private static final DEFAULT_RWSIZE:I = 0x1

.field private static final DEFAULT_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:snep"

.field private static final DISCONNECTED:I = 0x0

.field private static final SNEP_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:snep"

.field private static final TAG:Ljava/lang/String; = "DtaSnepClient"

.field public static mTestCaseId:I


# instance fields
.field private final mAcceptableLength:I

.field private final mFragmentLength:I

.field mMessenger:Lcom/android/nfc/snep/SnepMessenger;

.field private final mMiu:I

.field private final mPort:I

.field private final mRwSize:I

.field private final mServiceName:Ljava/lang/String;

.field private mState:I

.field private final mTransmissionLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 60
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    .line 61
    const/16 v0, 0x3f

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    .line 62
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mAcceptableLength:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mFragmentLength:I

    .line 64
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMiu:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mRwSize:I

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I
    .param p4, "testCaseId"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 69
    iput-object p1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    .line 71
    const/16 v1, 0x400

    iput v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mAcceptableLength:I

    .line 72
    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mFragmentLength:I

    .line 73
    iput p2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMiu:I

    .line 74
    iput p3, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mRwSize:I

    .line 75
    sput p4, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    .line 76
    return-void
.end method


# virtual methods
.method public DtaClientOperations(Landroid/content/Context;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/nfc/DtaServiceConnector;

    invoke-direct {v0, p1}, Lcom/android/nfc/DtaServiceConnector;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "dtaServiceConnector":Lcom/android/nfc/DtaServiceConnector;
    invoke-virtual {v0}, Lcom/android/nfc/DtaServiceConnector;->bindService()V

    .line 81
    const-string v1, "DtaSnepClient"

    const-string v2, "Connecting remote server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Error connecting remote server"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    sget v2, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    const-string v3, "PUT Large Ndef Data"

    const-string v4, "GET Ndef Message"

    const-string v5, "PUT Small Ndef Data"

    packed-switch v2, :pswitch_data_0

    .line 224
    const-string v2, "Unknown test case"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 212
    :pswitch_0
    :try_start_1
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    .line 214
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 217
    :catch_1
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 215
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 216
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 219
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    nop

    .line 220
    :goto_2
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 222
    goto/16 :goto_13

    .line 197
    :pswitch_1
    :try_start_2
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    .line 199
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 202
    :catch_3
    move-exception v1

    .line 203
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 200
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 201
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 204
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    nop

    .line 205
    :goto_4
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 207
    goto/16 :goto_13

    .line 182
    :pswitch_2
    :try_start_3
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    .line 184
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_5

    .line 187
    :catch_5
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 185
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 189
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_5
    nop

    .line 190
    :goto_6
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 192
    goto/16 :goto_13

    .line 167
    :pswitch_3
    :try_start_4
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getLargeNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 169
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getLargeNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_7

    .line 172
    :catch_7
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 170
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 174
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_7
    nop

    .line 175
    :goto_8
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 177
    goto/16 :goto_13

    .line 152
    :pswitch_4
    :try_start_5
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getLargeNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 154
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getLargeNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_9

    .line 157
    :catch_9
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v1

    .line 156
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 159
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_9
    nop

    .line 160
    :goto_a
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 162
    goto/16 :goto_13

    .line 137
    :pswitch_5
    :try_start_6
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 139
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_b

    .line 142
    :catch_b
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 144
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_b
    nop

    .line 145
    :goto_c
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 147
    goto :goto_13

    .line 122
    :pswitch_6
    :try_start_7
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 124
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    goto :goto_d

    .line 127
    :catch_d
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 125
    .end local v1    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v1

    .line 126
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 129
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_d
    nop

    .line 130
    :goto_e
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 132
    goto :goto_13

    .line 107
    :pswitch_7
    :try_start_8
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 109
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f

    goto :goto_f

    .line 112
    :catch_f
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 110
    .end local v1    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 114
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_f
    nop

    .line 115
    :goto_10
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 117
    goto :goto_13

    .line 92
    :pswitch_8
    :try_start_9
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 94
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11

    goto :goto_11

    .line 97
    :catch_11
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 99
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_11
    nop

    .line 100
    :goto_12
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 102
    nop

    .line 226
    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 3

    .line 317
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 320
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    :try_start_2
    iput-object v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 325
    iput v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 326
    nop

    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    throw v0

    .line 321
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    :catch_0
    move-exception v0

    .line 324
    iput-object v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 325
    :goto_0
    iput v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 328
    :cond_0
    monitor-exit p0

    .line 329
    return-void

    .line 328
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    iget v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    if-nez v0, :cond_4

    .line 271
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 272
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 274
    const/4 v1, 0x0

    .line 277
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "DtaSnepClient"

    const-string v4, "about to create socket"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMiu:I

    iget v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mRwSize:I

    const/16 v6, 0x400

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v3

    move-object v1, v3

    .line 280
    if-eqz v1, :cond_2

    .line 283
    iget v3, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 284
    const-string v3, "DtaSnepClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "about to connect to service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v3, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_0
    const-string v3, "DtaSnepClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "about to connect to port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v3, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V

    .line 290
    :goto_0
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v3

    .line 291
    .local v3, "miu":I
    iget v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mFragmentLength:I

    if-ne v5, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 292
    .local v4, "fragmentLength":I
    :goto_1
    new-instance v5, Lcom/android/nfc/snep/SnepMessenger;

    invoke-direct {v5, v0, v1, v4}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v5

    .line 308
    .end local v3    # "miu":I
    .end local v4    # "fragmentLength":I
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    nop

    .line 310
    monitor-enter p0

    .line 311
    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 312
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 313
    monitor-exit p0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 281
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not connect to socket."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    throw v0
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 298
    .restart local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    :catch_0
    move-exception v0

    move-object v3, v1

    .line 299
    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .local v0, "e":Ljava/io/IOException;
    .local v3, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v3, :cond_3

    .line 301
    :try_start_4
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 302
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    .line 304
    :cond_3
    :goto_3
    monitor-enter p0

    .line 305
    :try_start_5
    iput v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 306
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 307
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to connect to socket"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_2
    move-exception v0

    .line 294
    .local v0, "e":Lcom/android/nfc/LlcpException;
    monitor-enter p0

    .line 295
    :try_start_7
    iput v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 296
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 297
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not connect to socket"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .line 269
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :cond_4
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket already in use."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    throw v0

    .line 272
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    iget v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 254
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    iget-object v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_1
    iget v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mAcceptableLength:I

    invoke-static {v2, p1}, Lcom/android/nfc/snep/SnepMessage;->getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 259
    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2
    :try_end_1
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object v2

    .line 263
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v3

    .line 263
    .end local v2    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 251
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v0

    .line 254
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public put(Landroid/nfc/NdefMessage;)V
    .locals 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 235
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    iget-object v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_1
    invoke-static {p1}, Lcom/android/nfc/snep/SnepMessage;->getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 240
    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_1
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    nop

    .line 244
    :try_start_2
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v3

    .line 244
    .end local v2    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 232
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v0

    .line 235
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
