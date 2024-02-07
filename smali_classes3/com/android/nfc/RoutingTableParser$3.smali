.class Lcom/android/nfc/RoutingTableParser$3;
.super Ljava/lang/Object;
.source "RoutingTableParser.java"

# interfaces
.implements Lcom/android/nfc/RoutingTableParser$GetEntryStr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/RoutingTableParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/RoutingTableParser;


# direct methods
.method constructor <init>(Lcom/android/nfc/RoutingTableParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/RoutingTableParser;

    .line 58
    iput-object p1, p0, Lcom/android/nfc/RoutingTableParser$3;->this$0:Lcom/android/nfc/RoutingTableParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryStr([B)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # [B

    .line 59
    iget-object v0, p0, Lcom/android/nfc/RoutingTableParser$3;->this$0:Lcom/android/nfc/RoutingTableParser;

    invoke-static {v0, p1}, Lcom/android/nfc/RoutingTableParser;->-$$Nest$mgetAidStr(Lcom/android/nfc/RoutingTableParser;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
