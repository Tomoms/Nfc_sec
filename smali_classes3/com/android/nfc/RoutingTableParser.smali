.class public Lcom/android/nfc/RoutingTableParser;
.super Ljava/lang/Object;
.source "RoutingTableParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;,
        Lcom/android/nfc/RoutingTableParser$GetEntryStr;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final STATS_HOST_OK:I = 0x0

.field static final STATS_NOT_FOUND:I = 0x2

.field static final STATS_OFFHOST_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RoutingTableParser"

.field static final TYPE_AID:B = 0x2t

.field static final TYPE_PROTOCOL:B = 0x1t

.field static final TYPE_SYSTEMCODE:B = 0x3t

.field static final TYPE_TECHNOLOGY:B = 0x0t

.field static final TYPE_UNSUPPORTED:B = 0x4t

.field private static sRoutingTable:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sRoutingTableMaxSize:I

.field private static sRoutingTableSize:I


# instance fields
.field private mGetEntryStrFuncs:[Lcom/android/nfc/RoutingTableParser$GetEntryStr;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGetEntryStrFuncs(Lcom/android/nfc/RoutingTableParser;)[Lcom/android/nfc/RoutingTableParser$GetEntryStr;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/RoutingTableParser;->mGetEntryStrFuncs:[Lcom/android/nfc/RoutingTableParser$GetEntryStr;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mformatRow(Lcom/android/nfc/RoutingTableParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/RoutingTableParser;->formatRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAidStr(Lcom/android/nfc/RoutingTableParser;[B)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/RoutingTableParser;->getAidStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetBlockCtrlStr(Lcom/android/nfc/RoutingTableParser;B)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/RoutingTableParser;->getBlockCtrlStr(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPrefixSubsetStr(Lcom/android/nfc/RoutingTableParser;BB)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/nfc/RoutingTableParser;->getPrefixSubsetStr(BB)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetProtoStr(Lcom/android/nfc/RoutingTableParser;[B)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/RoutingTableParser;->getProtoStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSystemCodeStr(Lcom/android/nfc/RoutingTableParser;[B)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/RoutingTableParser;->getSystemCodeStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTechStr(Lcom/android/nfc/RoutingTableParser;[B)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/RoutingTableParser;->getTechStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/RoutingTableParser;->DBG:Z

    .line 33
    sput v1, Lcom/android/nfc/RoutingTableParser;->sRoutingTableSize:I

    .line 34
    sput v1, Lcom/android/nfc/RoutingTableParser;->sRoutingTableMaxSize:I

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/android/nfc/RoutingTableParser;->sRoutingTable:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/nfc/RoutingTableParser$GetEntryStr;

    new-instance v1, Lcom/android/nfc/RoutingTableParser$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/RoutingTableParser$1;-><init>(Lcom/android/nfc/RoutingTableParser;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/nfc/RoutingTableParser$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/RoutingTableParser$2;-><init>(Lcom/android/nfc/RoutingTableParser;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/nfc/RoutingTableParser$3;

    invoke-direct {v1, p0}, Lcom/android/nfc/RoutingTableParser$3;-><init>(Lcom/android/nfc/RoutingTableParser;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/nfc/RoutingTableParser$4;

    invoke-direct {v1, p0}, Lcom/android/nfc/RoutingTableParser$4;-><init>(Lcom/android/nfc/RoutingTableParser;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/nfc/RoutingTableParser;->mGetEntryStrFuncs:[Lcom/android/nfc/RoutingTableParser$GetEntryStr;

    return-void
.end method

.method private addRoutingEntry([BI)V
    .locals 18
    .param p1, "rt"    # [B
    .param p2, "offset"    # I

    .line 226
    move-object/from16 v0, p1

    add-int/lit8 v1, p2, 0x1

    array-length v2, v0

    if-lt v1, v2, :cond_0

    return-void

    .line 227
    :cond_0
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, v0, v1

    .line 230
    .local v1, "valueLength":I
    add-int/lit8 v2, p2, 0x2

    add-int/2addr v2, v1

    array-length v3, v0

    if-le v2, v3, :cond_1

    return-void

    .line 232
    :cond_1
    aget-byte v2, v0, p2

    and-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    .line 233
    .local v2, "qualifier":B
    aget-byte v3, v0, p2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v11, v3

    .line 234
    .local v11, "type":B
    add-int/lit8 v3, p2, 0x2

    aget-byte v12, v0, v3

    .line 235
    .local v12, "eeId":B
    add-int/lit8 v3, p2, 0x3

    aget-byte v13, v0, v3

    .line 236
    .local v13, "pwrState":B
    add-int/lit8 v3, v1, -0x2

    new-array v14, v3, [B

    .line 237
    .local v14, "entry":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v1, -0x2

    if-ge v3, v4, :cond_2

    .line 238
    add-int/lit8 v4, p2, 0x4

    add-int/2addr v4, v3

    aget-byte v4, v0, v4

    aput-byte v4, v14, v3

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x3

    if-ne v11, v3, :cond_4

    array-length v3, v14

    const/4 v15, 0x1

    and-int/2addr v3, v15

    if-nez v3, :cond_4

    array-length v3, v14

    const/16 v4, 0x40

    if-gt v3, v4, :cond_4

    .line 242
    const/4 v3, 0x0

    move v10, v3

    .local v10, "i":I
    :goto_1
    array-length v3, v14

    if-ge v10, v3, :cond_3

    .line 243
    const/4 v3, 0x2

    new-array v9, v3, [B

    const/4 v3, 0x0

    aget-byte v4, v14, v10

    aput-byte v4, v9, v3

    add-int/lit8 v3, v10, 0x1

    aget-byte v3, v14, v3

    aput-byte v3, v9, v15

    .line 244
    .local v9, "sc_entry":[B
    sget-object v8, Lcom/android/nfc/RoutingTableParser;->sRoutingTable:Ljava/util/Vector;

    new-instance v7, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;

    const/16 v16, 0x0

    move-object v3, v7

    move-object/from16 v4, p0

    move v5, v2

    move v6, v11

    move-object v15, v7

    move v7, v12

    move-object v0, v8

    move v8, v13

    move/from16 v17, v10

    .end local v10    # "i":I
    .local v17, "i":I
    move-object/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;-><init>(Lcom/android/nfc/RoutingTableParser;BBBB[BLcom/android/nfc/RoutingTableParser$RoutingEntryInfo-IA;)V

    invoke-virtual {v0, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v9    # "sc_entry":[B
    add-int/lit8 v10, v17, 0x2

    move-object/from16 v0, p1

    const/4 v15, 0x1

    .end local v17    # "i":I
    .restart local v10    # "i":I
    goto :goto_1

    :cond_3
    move/from16 v17, v10

    .end local v10    # "i":I
    goto :goto_2

    .line 246
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/android/nfc/RoutingTableParser;->validateEntryInfo(B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 247
    sget-object v15, Lcom/android/nfc/RoutingTableParser;->sRoutingTable:Ljava/util/Vector;

    new-instance v10, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;

    const/16 v16, 0x0

    move-object v3, v10

    move-object/from16 v4, p0

    move v5, v2

    move v6, v11

    move v7, v12

    move v8, v13

    move-object v9, v14

    move-object v0, v10

    move-object/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;-><init>(Lcom/android/nfc/RoutingTableParser;BBBB[BLcom/android/nfc/RoutingTableParser$RoutingEntryInfo-IA;)V

    invoke-virtual {v15, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_5
    :goto_2
    return-void
.end method

.method private formatRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "eeId"    # Ljava/lang/String;
    .param p3, "pwrState"    # Ljava/lang/String;
    .param p4, "blkCtrl"    # Ljava/lang/String;
    .param p5, "extra"    # Ljava/lang/String;

    .line 134
    const-string v0, "\t%-36s\t%8s\t%-11s\t%-10s\t%-10s"

    .line 135
    .local v0, "fmt":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAidStr([B)Ljava/lang/String;
    .locals 8
    .param p1, "aid"    # [B

    .line 87
    const-string v0, ""

    .line 89
    .local v0, "aidStr":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p1, v3

    .line 90
    .local v4, "b":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "%02X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 94
    const-string v1, "Empty_AID"

    return-object v1

    .line 96
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AID_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBlockCtrlStr(B)Ljava/lang/String;
    .locals 1
    .param p1, "mask"    # B

    .line 108
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "True"

    return-object v0

    .line 111
    :cond_0
    const-string v0, "False"

    return-object v0
.end method

.method private getPrefixSubsetStr(BB)Ljava/lang/String;
    .locals 4
    .param p1, "mask"    # B
    .param p2, "type"    # B

    .line 115
    const-string v0, ""

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 116
    return-object v0

    .line 119
    :cond_0
    const-string v1, ""

    .line 120
    .local v1, "prefix_subset_str":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Prefix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    :cond_1
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_2

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Subset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    const-string v0, "Exact"

    return-object v0

    .line 129
    :cond_3
    return-object v1
.end method

.method private getProtoStr([B)Ljava/lang/String;
    .locals 8
    .param p1, "proto"    # [B

    .line 76
    const-string v0, "PROTOCOL_UNDETERMINED"

    const-string v1, "PROTOCOL_T1T"

    const-string v2, "PROTOCOL_T2T"

    const-string v3, "PROTOCOL_T3T"

    const-string v4, "PROTOCOL_ISO_DEP"

    const-string v5, "PROTOCOL_NFC_DEP"

    const-string v6, "PROTOCOL_T5T"

    const-string v7, "PROTOCOL_NDEF"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "proto_mask_list":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-byte v2, p1, v1

    array-length v3, v0

    if-le v2, v3, :cond_0

    .line 81
    const-string v1, "UNSUPPORTED_PROTO"

    return-object v1

    .line 83
    :cond_0
    aget-byte v1, p1, v1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private getSystemCodeStr([B)Ljava/lang/String;
    .locals 8
    .param p1, "sc"    # [B

    .line 100
    const-string v0, ""

    .line 101
    .local v0, "systemCodeStr":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p1, v3

    .line 102
    .local v4, "b":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "%02X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYSTEMCODE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTechStr([B)Ljava/lang/String;
    .locals 4
    .param p1, "tech"    # [B

    .line 65
    const-string v0, "TECHNOLOGY_A"

    const-string v1, "TECHNOLOGY_B"

    const-string v2, "TECHNOLOGY_F"

    const-string v3, "TECHNOLOGY_V"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "tech_mask_list":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-byte v2, p1, v1

    array-length v3, v0

    if-le v2, v3, :cond_0

    .line 70
    const-string v1, "UNSUPPORTED_TECH"

    return-object v1

    .line 72
    :cond_0
    aget-byte v1, p1, v1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private logRoutingTableRawData([B)V
    .locals 8
    .param p1, "lmrt_cmd"    # [B

    .line 310
    sget-boolean v0, Lcom/android/nfc/RoutingTableParser;->DBG:Z

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    const-string v0, ""

    .line 313
    .local v0, "lmrt_str":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-byte v5, p1, v3

    .line 314
    .local v5, "b":B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v4, v2

    const-string v7, "%02X "

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .end local v5    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "RoutingTableSize: %d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RoutingTableParser"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v2, "RoutingTable: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method private validateEntryInfo(B[B)Z
    .locals 4
    .param p1, "type"    # B
    .param p2, "entry"    # [B

    .line 166
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 180
    return v1

    .line 177
    :pswitch_0
    array-length v2, p2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return v1

    .line 174
    :pswitch_1
    array-length v2, p2

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    return v1

    .line 171
    :pswitch_2
    array-length v2, p2

    if-eq v2, v0, :cond_0

    return v1

    .line 168
    :pswitch_3
    array-length v2, p2

    if-eq v2, v0, :cond_0

    return v1

    .line 182
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Lcom/android/nfc/DeviceHost;Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "dh"    # Lcom/android/nfc/DeviceHost;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/nfc/RoutingTableParser;->update(Lcom/android/nfc/DeviceHost;)V

    .line 297
    const-string v0, "--- dumpRoutingTable: start ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/nfc/RoutingTableParser;->sRoutingTableSize:I

    .line 299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/android/nfc/RoutingTableParser;->sRoutingTableMaxSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 298
    const-string v2, "RoutingTableSize: %d/%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    const-string v2, "Entry"

    const-string v3, "NFCEE_ID"

    const-string v4, "Power State"

    const-string v5, "Block Ctrl"

    const-string v6, "Extra Info"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/nfc/RoutingTableParser;->formatRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/android/nfc/RoutingTableParser;->sRoutingTable:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;

    .line 303
    .local v1, "routingEntry":Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;
    invoke-static {v1, p2}, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->-$$Nest$mdump(Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;Ljava/io/PrintWriter;)V

    .line 304
    .end local v1    # "routingEntry":Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;
    goto :goto_0

    .line 306
    :cond_0
    const-string v0, "--- dumpRoutingTable:  end  ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public getCommitStatus(B[B)I
    .locals 8
    .param p1, "type"    # B
    .param p2, "entry"    # [B

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/RoutingTableParser;->validateEntryInfo(B[B)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 191
    :cond_0
    sget-object v0, Lcom/android/nfc/RoutingTableParser;->sRoutingTable:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;

    .line 192
    .local v2, "routingEntry":Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;
    iget-byte v3, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mType:B

    if-eq v3, p1, :cond_1

    .line 193
    goto :goto_0

    .line 195
    :cond_1
    iget-object v3, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mEntry:[B

    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 196
    iget-byte v0, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mNfceeId:B

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    return v4

    .line 198
    :cond_3
    iget-byte v3, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mType:B

    if-eq v3, v1, :cond_4

    .line 199
    goto :goto_0

    .line 201
    :cond_4
    iget-byte v3, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mQualifier:B

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    array-length v3, p2

    iget-object v6, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mEntry:[B

    array-length v6, v6

    if-le v3, v6, :cond_7

    .line 203
    const/4 v3, 0x0

    .line 204
    .local v3, "ptr":I
    :goto_2
    aget-byte v6, p2, v3

    iget-object v7, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mEntry:[B

    aget-byte v7, v7, v3

    if-ne v6, v7, :cond_5

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 207
    :cond_5
    iget-object v6, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mEntry:[B

    array-length v6, v6

    if-ne v3, v6, :cond_7

    .line 208
    iget-byte v0, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mNfceeId:B

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    return v4

    .line 211
    .end local v3    # "ptr":I
    :cond_7
    iget-byte v3, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mQualifier:B

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_a

    array-length v3, p2

    iget-object v6, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mEntry:[B

    array-length v6, v6

    if-ge v3, v6, :cond_a

    .line 213
    const/4 v3, 0x0

    .line 214
    .restart local v3    # "ptr":I
    :goto_4
    aget-byte v6, p2, v3

    iget-object v7, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mEntry:[B

    aget-byte v7, v7, v3

    if-ne v6, v7, :cond_8

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 217
    :cond_8
    array-length v6, p2

    if-ne v3, v6, :cond_a

    .line 218
    iget-byte v0, v2, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mNfceeId:B

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    move v4, v5

    :goto_5
    return v4

    .line 221
    .end local v2    # "routingEntry":Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;
    .end local v3    # "ptr":I
    :cond_a
    goto :goto_0

    .line 222
    :cond_b
    return v1
.end method

.method public parse([B)V
    .locals 6
    .param p1, "rt"    # [B

    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "offset":I
    invoke-direct {p0, p1}, Lcom/android/nfc/RoutingTableParser;->logRoutingTableRawData([B)V

    .line 259
    sget-object v1, Lcom/android/nfc/RoutingTableParser;->sRoutingTable:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 260
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 261
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    .line 262
    .local v1, "type":B
    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "RoutingTableParser"

    if-lt v1, v2, :cond_0

    .line 264
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Unrecognizable entry type: 0x%02X, stop parsing"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 267
    :cond_0
    add-int/lit8 v2, v0, 0x1

    array-length v5, p1

    if-lt v2, v5, :cond_1

    .line 269
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Wrong tlv length, stop parsing"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 273
    :cond_1
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v2, v2, 0x2

    .line 275
    .local v2, "tlvLength":I
    invoke-direct {p0, p1, v0}, Lcom/android/nfc/RoutingTableParser;->addRoutingEntry([BI)V

    .line 277
    add-int/2addr v0, v2

    .line 278
    .end local v1    # "type":B
    .end local v2    # "tlvLength":I
    goto :goto_0

    .line 279
    :cond_2
    return-void
.end method

.method public update(Lcom/android/nfc/DeviceHost;)V
    .locals 2
    .param p1, "dh"    # Lcom/android/nfc/DeviceHost;

    .line 285
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost;->getMaxRoutingTableSize()I

    move-result v0

    sput v0, Lcom/android/nfc/RoutingTableParser;->sRoutingTableMaxSize:I

    .line 286
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost;->getRoutingTable()[B

    move-result-object v0

    .line 287
    .local v0, "rt":[B
    array-length v1, v0

    sput v1, Lcom/android/nfc/RoutingTableParser;->sRoutingTableSize:I

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/nfc/RoutingTableParser;->parse([B)V

    .line 289
    return-void
.end method
