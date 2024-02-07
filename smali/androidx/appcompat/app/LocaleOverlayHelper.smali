.class final Landroidx/appcompat/app/LocaleOverlayHelper;
.super Ljava/lang/Object;
.source "LocaleOverlayHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineLocales(Landroidx/core/os/LocaleListCompat;Landroidx/core/os/LocaleListCompat;)Landroidx/core/os/LocaleListCompat;
    .locals 4
    .param p0, "overlayLocales"    # Landroidx/core/os/LocaleListCompat;
    .param p1, "baseLocales"    # Landroidx/core/os/LocaleListCompat;

    .line 65
    nop

    .line 66
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/util/Locale;

    .line 67
    .local v0, "combinedLocales":[Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v0, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 71
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v0, v2

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroid/os/LocaleList;

    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 75
    .local v1, "combineLocaleList":Landroid/os/LocaleList;
    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v2

    return-object v2
.end method

.method static combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;
    .locals 2
    .param p0, "overlayLocales"    # Landroid/os/LocaleList;
    .param p1, "baseLocales"    # Landroid/os/LocaleList;

    .line 52
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 56
    invoke-static {p1}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Landroidx/appcompat/app/LocaleOverlayHelper;->combineLocales(Landroidx/core/os/LocaleListCompat;Landroidx/core/os/LocaleListCompat;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0

    .line 53
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method static combineLocalesIfOverlayExists(Landroidx/core/os/LocaleListCompat;Landroidx/core/os/LocaleListCompat;)Landroidx/core/os/LocaleListCompat;
    .locals 1
    .param p0, "overlayLocales"    # Landroidx/core/os/LocaleListCompat;
    .param p1, "baseLocales"    # Landroidx/core/os/LocaleListCompat;

    .line 44
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/app/LocaleOverlayHelper;->combineLocales(Landroidx/core/os/LocaleListCompat;Landroidx/core/os/LocaleListCompat;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0

    .line 45
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method
