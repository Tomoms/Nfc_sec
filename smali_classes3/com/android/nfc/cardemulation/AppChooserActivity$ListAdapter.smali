.class final Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/AppChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIsPayment:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/AppChooserActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/AppChooserActivity;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iput-object v7, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-direct/range {p0 .. p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 212
    const-string v1, "layout_inflater"

    move-object/from16 v8, p2

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 215
    .local v9, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mList:Ljava/util/List;

    .line 216
    invoke-static/range {p1 .. p1}, Lcom/android/nfc/cardemulation/AppChooserActivity;->-$$Nest$fgetmCategory(Lcom/android/nfc/cardemulation/AppChooserActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "payment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mIsPayment:Z

    .line 217
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 218
    .local v11, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "label":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    invoke-virtual {v11, v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    move-object v12, v1

    .line 221
    .end local v1    # "label":Ljava/lang/CharSequence;
    .local v12, "label":Ljava/lang/CharSequence;
    invoke-virtual {v11, v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 222
    invoke-virtual {v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 221
    invoke-virtual {v9, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 224
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 225
    .local v1, "banner":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mIsPayment:Z

    if-eqz v2, :cond_2

    .line 226
    invoke-virtual {v11, v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 227
    if-nez v1, :cond_1

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not showing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because no banner specified."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppChooserActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    goto :goto_0

    .line 227
    :cond_1
    move-object v14, v1

    goto :goto_1

    .line 225
    :cond_2
    move-object v14, v1

    .line 232
    .end local v1    # "banner":Landroid/graphics/drawable/Drawable;
    .local v14, "banner":Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v15, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;-><init>(Lcom/android/nfc/cardemulation/AppChooserActivity;Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 233
    .local v1, "info":Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    iget-object v2, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v1    # "info":Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    .end local v11    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v12    # "label":Ljava/lang/CharSequence;
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "banner":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 235
    :cond_3
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 244
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 249
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 255
    if-nez p2, :cond_1

    .line 256
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mIsPayment:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c001d

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    goto :goto_0

    .line 260
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c001c

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 263
    .restart local v0    # "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 264
    .local v1, "holder":Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 266
    .end local v1    # "holder":Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;
    goto :goto_1

    .line 267
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    move-object v0, p2

    .line 270
    .restart local v0    # "view":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;

    .line 271
    .restart local v1    # "holder":Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;

    .line 272
    .local v2, "appInfo":Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    iget-boolean v3, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->mIsPayment:Z

    if-eqz v3, :cond_2

    .line 273
    iget-object v3, v1, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;->banner:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->displayBanner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 275
    :cond_2
    iget-object v3, v1, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v3, v1, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_2
    return-object v0
.end method
