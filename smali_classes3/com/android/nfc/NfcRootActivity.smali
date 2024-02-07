.class public Lcom/android/nfc/NfcRootActivity;
.super Landroid/app/Activity;
.source "NfcRootActivity.java"


# static fields
.field static final EXTRA_LAUNCH_INTENT:Ljava/lang/String; = "launchIntent"

.field static final EXTRA_LAUNCH_INTENT_USER_HANDLE:Ljava/lang/String; = "launchIntentUserHandle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    const-string v0, "launchIntentUserHandle"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 34
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    const-string v2, "launchIntent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 36
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 38
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    :goto_0
    nop

    .line 41
    .local v0, "user":Landroid/os/UserHandle;
    invoke-virtual {p0, v2, v0}, Lcom/android/nfc/NfcRootActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "user":Landroid/os/UserHandle;
    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_1

    .line 42
    :catch_2
    move-exception v0

    .line 52
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->finish()V

    .line 53
    return-void
.end method
