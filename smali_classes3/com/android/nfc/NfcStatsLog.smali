.class public Lcom/android/nfc/NfcStatsLog;
.super Ljava/lang/Object;
.source "NfcStatsLog.java"


# static fields
.field public static final ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final NFC_BEAM_OCCURRED:I = 0x88

.field public static final NFC_BEAM_OCCURRED__OPERATION__RECEIVE:I = 0x2

.field public static final NFC_BEAM_OCCURRED__OPERATION__SEND:I = 0x1

.field public static final NFC_BEAM_OCCURRED__OPERATION__UNKNOWN:I = 0x0

.field public static final NFC_CARDEMULATION_OCCURRED:I = 0x89

.field public static final NFC_CARDEMULATION_OCCURRED__CATEGORY__HCE_OTHER:I = 0x2

.field public static final NFC_CARDEMULATION_OCCURRED__CATEGORY__HCE_PAYMENT:I = 0x1

.field public static final NFC_CARDEMULATION_OCCURRED__CATEGORY__OFFHOST:I = 0x3

.field public static final NFC_CARDEMULATION_OCCURRED__CATEGORY__UNKNOWN:I = 0x0

.field public static final NFC_ERROR_OCCURRED:I = 0x86

.field public static final NFC_ERROR_OCCURRED__TYPE__AID_OVERFLOW:I = 0x3

.field public static final NFC_ERROR_OCCURRED__TYPE__CMD_TIMEOUT:I = 0x1

.field public static final NFC_ERROR_OCCURRED__TYPE__ERROR_NOTIFICATION:I = 0x2

.field public static final NFC_ERROR_OCCURRED__TYPE__UNKNOWN:I = 0x0

.field public static final NFC_HCE_TRANSACTION_OCCURRED:I = 0x8b

.field public static final NFC_STATE_CHANGED:I = 0x87

.field public static final NFC_STATE_CHANGED__STATE__CRASH_RESTART:I = 0x4

.field public static final NFC_STATE_CHANGED__STATE__OFF:I = 0x1

.field public static final NFC_STATE_CHANGED__STATE__ON:I = 0x2

.field public static final NFC_STATE_CHANGED__STATE__ON_LOCKED:I = 0x3

.field public static final NFC_STATE_CHANGED__STATE__UNKNOWN:I = 0x0

.field public static final NFC_TAG_OCCURRED:I = 0x8a

.field public static final NFC_TAG_OCCURRED__TYPE__APP_LAUNCH:I = 0x5

.field public static final NFC_TAG_OCCURRED__TYPE__BT_PAIRING:I = 0x2

.field public static final NFC_TAG_OCCURRED__TYPE__OTHERS:I = 0x6

.field public static final NFC_TAG_OCCURRED__TYPE__PROVISION:I = 0x3

.field public static final NFC_TAG_OCCURRED__TYPE__UNKNOWN:I = 0x0

.field public static final NFC_TAG_OCCURRED__TYPE__URL:I = 0x1

.field public static final NFC_TAG_OCCURRED__TYPE__WIFI_CONNECT:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static write(II)V
    .locals 3
    .param p0, "code"    # I
    .param p1, "arg1"    # I

    .line 98
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 99
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 100
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 101
    const/16 v1, 0x87

    if-ne v1, p0, :cond_0

    .line 102
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 103
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 107
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 108
    return-void
.end method

.method public static write(IIII)V
    .locals 2
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I

    .line 111
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 112
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 113
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 114
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 115
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 119
    return-void
.end method

.method public static write(IILjava/lang/String;)V
    .locals 2
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Ljava/lang/String;

    .line 122
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 123
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 124
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 125
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 128
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 129
    return-void
.end method
