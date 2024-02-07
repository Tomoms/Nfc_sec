.class public Lcom/android/nfc/cardemulation/AppChooserActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;,
        Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;,
        Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    }
.end annotation


# static fields
.field public static final EXTRA_APDU_SERVICES:Ljava/lang/String; = "services"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final EXTRA_FAILED_COMPONENT:Ljava/lang/String; = "failed_component"

.field static final TAG:Ljava/lang/String; = "AppChooserActivity"


# instance fields
.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mCategory:Ljava/lang/String;

.field private mIconSize:I

.field private mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

.field private mListView:Landroid/widget/ListView;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCategory(Lcom/android/nfc/cardemulation/AppChooserActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/android/nfc/cardemulation/AppChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/AppChooserActivity$1;-><init>(Lcom/android/nfc/cardemulation/AppChooserActivity;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-android-nfc-cardemulation-AppChooserActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 115
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 171
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "services"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 173
    .local v1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const-string v2, "category"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "category":Ljava/lang/String;
    const-string v3, "failed_component"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 175
    .local v3, "failedComponent":Landroid/content/ComponentName;
    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/android/nfc/cardemulation/AppChooserActivity;->onCreate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/ComponentName;)V

    .line 176
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "category"    # Ljava/lang/String;
    .param p4, "failedComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 86
    .local p3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p4, :cond_1

    .line 92
    const-string v1, "AppChooserActivity"

    const-string v2, "No components passed in."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->finish()V

    .line 94
    return-void

    .line 97
    :cond_1
    iput-object p2, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;

    .line 98
    const-string v1, "payment"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 100
    .local v1, "isPayment":Z
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 101
    .local v2, "adapter":Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 103
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 104
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v4

    iput v4, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mIconSize:I

    .line 110
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 112
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const v5, 0x7f0c001f

    invoke-virtual {p0, v5}, Lcom/android/nfc/cardemulation/AppChooserActivity;->setContentView(I)V

    .line 115
    const v5, 0x7f09019c

    invoke-virtual {p0, v5}, Lcom/android/nfc/cardemulation/AppChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/nfc/cardemulation/AppChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/nfc/cardemulation/AppChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/nfc/cardemulation/AppChooserActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v5, 0x7f09005b

    invoke-virtual {p0, v5}, Lcom/android/nfc/cardemulation/AppChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v5

    new-instance v6, Lcom/android/nfc/cardemulation/AppChooserActivity$2;

    invoke-direct {v6, p0}, Lcom/android/nfc/cardemulation/AppChooserActivity$2;-><init>(Lcom/android/nfc/cardemulation/AppChooserActivity;)V

    .line 117
    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 133
    const-string v5, "unknown"

    .line 134
    .local v5, "applicationLabel":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    if-eqz p4, :cond_2

    .line 136
    :try_start_0
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 137
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v7, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v8

    .line 139
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 138
    :catch_0
    move-exception v7

    .line 142
    :cond_2
    :goto_0
    const v7, 0x7f09004a

    invoke-virtual {p0, v7}, Lcom/android/nfc/cardemulation/AppChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mTextView:Landroid/widget/TextView;

    .line 143
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_3

    if-eqz p4, :cond_3

    .line 144
    const v7, 0x7f1000c0

    invoke-virtual {p0, v7}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "formatString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mTextView:Landroid/widget/TextView;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .end local v7    # "formatString":Ljava/lang/String;
    goto :goto_2

    .line 147
    :cond_3
    new-instance v7, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    invoke-direct {v7, p0, p0, p3}, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;-><init>(Lcom/android/nfc/cardemulation/AppChooserActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v7, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    .line 148
    if-eqz p4, :cond_4

    .line 149
    const v7, 0x7f100042

    invoke-virtual {p0, v7}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 150
    .restart local v7    # "formatString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mTextView:Landroid/widget/TextView;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .end local v7    # "formatString":Ljava/lang/String;
    :cond_4
    const v7, 0x7f090134

    invoke-virtual {p0, v7}, Lcom/android/nfc/cardemulation/AppChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    .line 154
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 155
    if-eqz v1, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 157
    .local v6, "height":I
    iget-object v7, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 158
    .end local v6    # "height":I
    goto :goto_1

    .line 159
    :cond_5
    iget-object v7, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6, v6, v6, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 161
    :goto_1
    iget-object v6, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v6, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    :goto_2
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 165
    .local v6, "window":Landroid/view/Window;
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 166
    const/high16 v7, 0x400000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 167
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 180
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;

    .line 181
    .local v0, "info":Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v2, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->serviceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 182
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->serviceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 183
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 181
    invoke-virtual {v1, v2, v3}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v1, "dialogIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;

    const-string v3, "category"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v2, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->serviceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    const-string v3, "apdu_service"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/AppChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->finish()V

    .line 189
    return-void
.end method
