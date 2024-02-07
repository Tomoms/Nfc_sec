.class public Lcom/android/nfc/cardemulation/TapAgainDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "TapAgainDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "com.android.nfc.cardemulation.action.CLOSE_TAP_DIALOG"

.field public static final EXTRA_APDU_SERVICE:Ljava/lang/String; = "apdu_service"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"


# instance fields
.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mClosedOnRequest:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fputmClosedOnRequest(Lcom/android/nfc/cardemulation/TapAgainDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    .line 52
    new-instance v0, Lcom/android/nfc/cardemulation/TapAgainDialog$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/TapAgainDialog$1;-><init>(Lcom/android/nfc/cardemulation/TapAgainDialog;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 117
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->finish()V

    .line 118
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f110172

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->setTheme(I)V

    .line 66
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 67
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 68
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "category"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "category":Ljava/lang/String;
    const-string v3, "apdu_service"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 71
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.nfc.cardemulation.action.CLOSE_TAP_DIALOG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v5, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v4}, Lcom/android/nfc/cardemulation/TapAgainDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    iget-object v5, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 76
    .local v5, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0c006b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 81
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x7f090184

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar;

    .line 82
    .local v7, "toolbar":Landroidx/appcompat/widget/Toolbar;
    const v8, 0x7f08006f

    invoke-virtual {p0, v8}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 83
    new-instance v8, Lcom/android/nfc/cardemulation/TapAgainDialog$2;

    invoke-direct {v8, p0}, Lcom/android/nfc/cardemulation/TapAgainDialog$2;-><init>(Lcom/android/nfc/cardemulation/TapAgainDialog;)V

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v8, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v9, 0x7f090183

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 91
    .local v8, "iv":Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 92
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 91
    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 94
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->setupAlert()V

    .line 97
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 98
    .local v10, "window":Landroid/view/Window;
    const/high16 v11, 0x400000

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 110
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultForNextTap(Landroid/content/ComponentName;)Z

    .line 113
    :cond_0
    return-void
.end method
