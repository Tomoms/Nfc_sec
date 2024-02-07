.class public Lcom/android/nfc/NfcPermissions;
.super Ljava/lang/Object;
.source "NfcPermissions.java"


# static fields
.field private static final ADMIN_PERM:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field private static final ADMIN_PERM_ERROR:Ljava/lang/String; = "WRITE_SECURE_SETTINGS permission required"

.field static final NFC_PERMISSION:Ljava/lang/String; = "android.permission.NFC"

.field private static final NFC_PERM_ERROR:Ljava/lang/String; = "NFC permission required"

.field static final NFC_PREFERRED_PAYMENT_INFO_PERMISSION:Ljava/lang/String; = "android.permission.NFC_PREFERRED_PAYMENT_INFO"

.field private static final NFC_PREFERRED_PAYMENT_INFO_PERM_ERROR:Ljava/lang/String; = "NFC_PREFERRED_PAYMENT_INFO permission required"

.field static final NFC_SET_CONTROLLER_ALWAYS_ON:Ljava/lang/String; = "android.permission.NFC_SET_CONTROLLER_ALWAYS_ON"

.field private static final NFC_SET_CONTROLLER_ALWAYS_ON_ERROR:Ljava/lang/String; = "NFC_SET_CONTROLLER_ALWAYS_ON permission required"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enforceAdminPermissions(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v1, "WRITE_SECURE_SETTINGS permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static enforcePreferredPaymentInfoPermissions(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    const-string v0, "android.permission.NFC_PREFERRED_PAYMENT_INFO"

    const-string v1, "NFC_PREFERRED_PAYMENT_INFO permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static enforceSetControllerAlwaysOnPermissions(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    const-string v0, "android.permission.NFC_SET_CONTROLLER_ALWAYS_ON"

    const-string v1, "NFC_SET_CONTROLLER_ALWAYS_ON permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static enforceUserPermissions(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    const-string v0, "android.permission.NFC"

    const-string v1, "NFC permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static validateProfileId(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profileId"    # I

    .line 51
    nop

    .line 52
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 54
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 57
    .local v3, "uh":Landroid/os/UserHandle;
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 58
    return-void

    .line 60
    .end local v3    # "uh":Landroid/os/UserHandle;
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "profileId passed in does not belong to the calling user."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static validateUserId(I)V
    .locals 2
    .param p0, "userId"    # I

    .line 41
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 44
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "userId passed in is not the calling user."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
