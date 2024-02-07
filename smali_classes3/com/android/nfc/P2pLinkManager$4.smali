.class Lcom/android/nfc/P2pLinkManager$4;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/P2pLinkManager;

    .line 1023
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$4;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 3
    .param p1, "acceptableLength"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .line 1032
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$4;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v0}, Lcom/android/nfc/P2pLinkManager;->-$$Nest$fgetmPutBeforeGet(Lcom/android/nfc/P2pLinkManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    const/16 v0, -0x40

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    return-object v0

    .line 1034
    :cond_0
    const/16 v0, 0x1f5

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$4;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v0, v1}, Lcom/android/nfc/P2pLinkManager;->-$$Nest$fputmPutBeforeGet(Lcom/android/nfc/P2pLinkManager;Z)V

    .line 1036
    const/16 v0, -0x3f

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    return-object v0

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$4;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v0}, Lcom/android/nfc/P2pLinkManager;->-$$Nest$fgetmPutBeforeGet(Lcom/android/nfc/P2pLinkManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x400

    if-ne p1, v0, :cond_2

    .line 1039
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$4;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v0, v1}, Lcom/android/nfc/P2pLinkManager;->-$$Nest$fputmPutBeforeGet(Lcom/android/nfc/P2pLinkManager;Z)V

    .line 1040
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getLargeNdef()Landroid/nfc/NdefMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getSuccessResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$4;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v2, v1}, Lcom/android/nfc/P2pLinkManager;->-$$Nest$fputmPutBeforeGet(Lcom/android/nfc/P2pLinkManager;Z)V

    .line 1043
    const/4 v1, 0x0

    return-object v1

    .line 1046
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$4;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v0, v1}, Lcom/android/nfc/P2pLinkManager;->-$$Nest$fputmPutBeforeGet(Lcom/android/nfc/P2pLinkManager;Z)V

    .line 1047
    const/16 v0, -0x20

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    return-object v0
.end method

.method public doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .line 1026
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$4;->this$0:Lcom/android/nfc/P2pLinkManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/nfc/P2pLinkManager;->-$$Nest$fputmPutBeforeGet(Lcom/android/nfc/P2pLinkManager;Z)V

    .line 1027
    const/16 v0, -0x7f

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    return-object v0
.end method
