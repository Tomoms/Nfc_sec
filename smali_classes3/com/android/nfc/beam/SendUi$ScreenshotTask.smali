.class final Lcom/android/nfc/beam/SendUi$ScreenshotTask;
.super Landroid/os/AsyncTask;
.source "SendUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/SendUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenshotTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/beam/SendUi;


# direct methods
.method constructor <init>(Lcom/android/nfc/beam/SendUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/beam/SendUi;

    .line 563
    iput-object p1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .line 566
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->createScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 563
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 571
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v0, v0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput-object p1, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 574
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput v1, v0, Lcom/android/nfc/beam/SendUi;->mState:I

    goto :goto_2

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v0, v0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput v4, v0, Lcom/android/nfc/beam/SendUi;->mState:I

    goto :goto_2

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v0, v0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v3, 0x2

    const/4 v5, 0x3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v0, v0, Lcom/android/nfc/beam/SendUi;->mState:I

    if-ne v0, v5, :cond_2

    goto :goto_0

    .line 585
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state on screenshot completion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v1, v1, Lcom/android/nfc/beam/SendUi;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SendUi"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 580
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput-object p1, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 581
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v0, v0, Lcom/android/nfc/beam/SendUi;->mState:I

    if-ne v0, v5, :cond_4

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    move v0, v2

    .line 582
    .local v0, "requestTap":Z
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput v1, v2, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 583
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v1, v0}, Lcom/android/nfc/beam/SendUi;->showPreSend(Z)V

    .line 584
    .end local v0    # "requestTap":Z
    nop

    .line 587
    :goto_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 563
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
