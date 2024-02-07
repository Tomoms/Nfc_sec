.class Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;
.super Ljava/lang/Object;
.source "RoutingTableParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/RoutingTableParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutingEntryInfo"
.end annotation


# instance fields
.field public final mEntry:[B

.field public final mNfceeId:B

.field public final mPowerState:B

.field public final mQualifier:B

.field public final mType:B

.field final synthetic this$0:Lcom/android/nfc/RoutingTableParser;


# direct methods
.method static bridge synthetic -$$Nest$mdump(Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/nfc/RoutingTableParser;BBBB[B)V
    .locals 0
    .param p2, "qualifier"    # B
    .param p3, "type"    # B
    .param p4, "eeId"    # B
    .param p5, "pwrState"    # B
    .param p6, "entry"    # [B

    .line 146
    iput-object p1, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->this$0:Lcom/android/nfc/RoutingTableParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-byte p2, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mQualifier:B

    .line 148
    iput-byte p3, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mType:B

    .line 149
    iput-byte p4, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mNfceeId:B

    .line 150
    iput-byte p5, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mPowerState:B

    .line 151
    iput-object p6, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mEntry:[B

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/RoutingTableParser;BBBB[BLcom/android/nfc/RoutingTableParser$RoutingEntryInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;-><init>(Lcom/android/nfc/RoutingTableParser;BBBB[B)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 155
    iget-object v0, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->this$0:Lcom/android/nfc/RoutingTableParser;

    iget-byte v1, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mQualifier:B

    invoke-static {v0, v1}, Lcom/android/nfc/RoutingTableParser;->-$$Nest$mgetBlockCtrlStr(Lcom/android/nfc/RoutingTableParser;B)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "blkCtrl":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-byte v3, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mNfceeId:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "0x%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "eeId":Ljava/lang/String;
    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mPowerState:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "pwrState":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->this$0:Lcom/android/nfc/RoutingTableParser;

    invoke-static {v2}, Lcom/android/nfc/RoutingTableParser;->-$$Nest$fgetmGetEntryStrFuncs(Lcom/android/nfc/RoutingTableParser;)[Lcom/android/nfc/RoutingTableParser$GetEntryStr;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mType:B

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mEntry:[B

    invoke-interface {v2, v3}, Lcom/android/nfc/RoutingTableParser$GetEntryStr;->getEntryStr([B)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "entry":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->this$0:Lcom/android/nfc/RoutingTableParser;

    iget-byte v3, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mQualifier:B

    iget-byte v4, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->mType:B

    invoke-static {v2, v3, v4}, Lcom/android/nfc/RoutingTableParser;->-$$Nest$mgetPrefixSubsetStr(Lcom/android/nfc/RoutingTableParser;BB)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "extra":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/RoutingTableParser$RoutingEntryInfo;->this$0:Lcom/android/nfc/RoutingTableParser;

    move-object v3, v9

    move-object v4, v8

    move-object v5, v1

    move-object v6, v0

    move-object v7, v10

    invoke-static/range {v2 .. v7}, Lcom/android/nfc/RoutingTableParser;->-$$Nest$mformatRow(Lcom/android/nfc/RoutingTableParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    return-void
.end method
