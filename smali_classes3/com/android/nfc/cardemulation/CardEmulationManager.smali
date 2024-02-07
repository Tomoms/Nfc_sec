.class public Lcom/android/nfc/cardemulation/CardEmulationManager;
.super Ljava/lang/Object;
.source "CardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
.implements Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;
.implements Lcom/android/nfc/cardemulation/PreferredServices$Callback;
.implements Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;,
        Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final NFC_HCE_APDU:I = 0x1

.field static final NFC_HCE_NFCF:I = 0x4

.field static final TAG:Ljava/lang/String; = "CardEmulationManager"


# instance fields
.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field final mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

.field final mContext:Landroid/content/Context;

.field final mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

.field final mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

.field final mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

.field final mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

.field final mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

.field final mPowerManager:Landroid/os/PowerManager;

.field final mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

.field final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 85
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    .line 86
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 87
    new-instance v1, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 88
    new-instance v2, Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-direct {v2, p1, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 89
    new-instance v2, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-direct {v2, p1, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;)V

    iput-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    .line 90
    new-instance v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v2, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 91
    new-instance v3, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-direct {v3, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V

    iput-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 92
    new-instance v4, Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-direct {v4, p1, v2, v0, p0}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 93
    new-instance v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-direct {v0, p1, v3, v1, p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    .line 95
    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->initialize()V

    .line 96
    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->initialize()V

    .line 97
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    .line 98
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/PreferredServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 210
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 211
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 212
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 214
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 215
    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 216
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 218
    const-wide v2, 0x10b00000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 219
    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 220
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 222
    const-wide v2, 0x10b00000004L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 223
    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 224
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 226
    const-wide v2, 0x10b00000005L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 227
    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 228
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 230
    const-wide v2, 0x10b00000006L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 231
    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 232
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 234
    const-wide v2, 0x10b00000007L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 235
    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 236
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 238
    const-wide v2, 0x10b00000008L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 239
    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 240
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 241
    return-void
.end method

.method getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "validateInstalled"    # Z

    .line 328
    const-string v0, "payment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowing defaults for category "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CardEmulationManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object v1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 333
    const-string v2, "nfc_payment_default_component"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 337
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 338
    .local v2, "service":Landroid/content/ComponentName;
    if-eqz p3, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1

    .line 339
    :cond_3
    :goto_0
    return-object v2

    .line 344
    .end local v2    # "service":Landroid/content/ComponentName;
    :cond_4
    return-object v1
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    return-object v0
.end method

.method public getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    return-object v0
.end method

.method isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 382
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 383
    .local v0, "serviceFound":Z
    if-nez v0, :cond_1

    .line 389
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CardEmulationManager"

    const-string v2, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method isServiceRegistered(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 368
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 369
    .local v0, "serviceFound":Z
    if-nez v0, :cond_1

    .line 375
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CardEmulationManager"

    const-string v2, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(IZ)V

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public onEnabledForegroundNfcFServiceChanged(ILandroid/content/ComponentName;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 700
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onEnabledForegroundNfcFServiceChanged(ILandroid/content/ComponentName;)V

    .line 701
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onEnabledForegroundNfcFServiceChanged(ILandroid/content/ComponentName;)V

    .line 702
    return-void
.end method

.method public onHostCardEmulationActivated(I)V
    .locals 5
    .param p1, "technology"    # I

    .line 110
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 113
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationActivated()V

    .line 115
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationActivated()V

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationActivated()V

    .line 118
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onHostEmulationActivated()V

    .line 119
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onHostEmulationActivated()V

    .line 121
    :cond_2
    :goto_0
    return-void
.end method

.method public onHostCardEmulationData(I[B)V
    .locals 5
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .line 124
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 127
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationData([B)V

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationData([B)V

    .line 132
    :cond_2
    :goto_0
    return-void
.end method

.method public onHostCardEmulationDeactivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 135
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationDeactivated()V

    .line 137
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationDeactivated()V

    goto :goto_0

    .line 138
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationDeactivated()V

    .line 140
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onHostEmulationDeactivated()V

    .line 141
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onHostEmulationDeactivated()V

    .line 143
    :cond_1
    :goto_0
    return-void
.end method

.method public onManagedProfileChanged()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->onManagedProfileChanged()V

    .line 164
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onManagedProfileChanged()V

    .line 165
    return-void
.end method

.method public onNfcDisabled()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcDisabled()V

    .line 178
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onNfcDisabled()V

    .line 179
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onNfcDisabled()V

    .line 180
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onNfcDisabled()V

    .line 181
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onNfcDisabled()V

    .line 182
    return-void
.end method

.method public onNfcEnabled()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcEnabled()V

    .line 171
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onNfcEnabled()V

    .line 172
    return-void
.end method

.method public onNfcFServicesUpdated(ILjava/util/List;)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onServicesUpdated(ILjava/util/List;)V

    .line 261
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onServicesUpdated()V

    .line 262
    return-void
.end method

.method public onOffHostAidSelected()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onOffHostAidSelected()V

    .line 147
    return-void
.end method

.method public onPreferredForegroundServiceChanged(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 691
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredForegroundServiceChanged(ILandroid/content/ComponentName;)V

    .line 692
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredForegroundServiceChanged(ILandroid/content/ComponentName;)V

    .line 694
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->onPreferredPaymentChanged(I)V

    .line 696
    return-void
.end method

.method public onPreferredPaymentServiceChanged(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 682
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredPaymentServiceChanged(ILandroid/content/ComponentName;)V

    .line 683
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredPaymentServiceChanged(ILandroid/content/ComponentName;)V

    .line 685
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->onPreferredPaymentChanged(I)V

    .line 687
    return-void
.end method

.method public onSecureNfcToggled()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onSecureNfcToggled()V

    .line 186
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onSecureNfcToggled()V

    .line 187
    return-void
.end method

.method public onServicesUpdated(ILjava/util/List;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p3, "validateInstalled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 247
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->verifyDefaults(ILjava/util/List;Z)V

    .line 249
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onServicesUpdated(ILjava/util/List;)V

    .line 251
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onServicesUpdated()V

    .line 253
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->onPreferredPaymentChanged(I)V

    .line 254
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 151
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->onUserSwitched()V

    .line 152
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->onUserSwitched(I)V

    .line 154
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onUserSwitched()V

    .line 155
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onUserSwitched()V

    .line 156
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onUserSwitched(I)V

    .line 157
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onUserSwitched()V

    .line 158
    return-void
.end method

.method public packageHasPreferredService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->packageHasPreferredService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .line 350
    const-string v0, "payment"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CardEmulationManager"

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowing defaults for category "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, 0x0

    return v0

    .line 357
    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find default service to make default: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 358
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 360
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 358
    :goto_1
    const-string v2, "nfc_payment_default_component"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 364
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method verifyDefaults(ILjava/util/List;Z)V
    .locals 16
    .param p1, "userId"    # I
    .param p3, "validateInstalled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 265
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 266
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 265
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/UserManager;

    .line 266
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 267
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v3

    .line 269
    .local v3, "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v5, 0x0

    .line 270
    .local v5, "defaultPaymentService":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 271
    .local v6, "numDefaultPaymentServices":I
    move/from16 v7, p1

    .line 273
    .local v7, "userIdDefaultPaymentService":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, " for user:"

    const-string v11, "CardEmulationManager"

    const-string v12, "payment"

    const/4 v13, 0x1

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    .line 274
    .local v9, "uh":Landroid/os/UserHandle;
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    if-eqz p3, :cond_0

    .line 276
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    if-ne v15, v1, :cond_0

    goto :goto_1

    :cond_0
    move v13, v4

    .line 274
    :goto_1
    invoke-virtual {v0, v14, v12, v13}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v12

    .line 277
    .local v12, "paymentService":Landroid/content/ComponentName;
    sget-boolean v13, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "default: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    if-eqz v12, :cond_2

    .line 279
    add-int/lit8 v6, v6, 0x1

    .line 280
    move-object v5, v12

    .line 281
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 283
    .end local v9    # "uh":Landroid/os/UserHandle;
    .end local v12    # "paymentService":Landroid/content/ComponentName;
    :cond_2
    goto :goto_0

    .line 284
    :cond_3
    const/4 v4, 0x0

    if-le v6, v13, :cond_5

    .line 285
    const-string v8, "Current default is not aligned across multiple users"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    .line 288
    .restart local v9    # "uh":Landroid/os/UserHandle;
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v0, v10, v4, v12}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 290
    .end local v9    # "uh":Landroid/os/UserHandle;
    goto :goto_2

    :cond_4
    goto :goto_3

    .line 292
    :cond_5
    sget-boolean v8, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v8, :cond_6

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current default: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_6
    :goto_3
    if-nez v5, :cond_e

    .line 301
    const/4 v8, 0x0

    .line 302
    .local v8, "numPaymentServices":I
    const/4 v9, 0x0

    .line 303
    .local v9, "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 304
    .local v14, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v14, v12}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 305
    add-int/lit8 v8, v8, 0x1

    .line 306
    invoke-virtual {v14}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 308
    .end local v14    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_7
    goto :goto_4

    .line 309
    :cond_8
    if-le v8, v13, :cond_a

    .line 311
    sget-boolean v10, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v10, :cond_9

    const-string v10, "No default set, more than one service left."

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_9
    invoke-virtual {v0, v1, v4, v12}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_5

    .line 313
    :cond_a
    if-ne v8, v13, :cond_c

    .line 315
    sget-boolean v4, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v4, :cond_b

    const-string v4, "No default set, making single service default."

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_b
    invoke-virtual {v0, v1, v9, v12}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_5

    .line 320
    :cond_c
    sget-boolean v10, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v10, :cond_d

    const-string v10, "No default set, last payment service removed."

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_d
    invoke-virtual {v0, v1, v4, v12}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 324
    .end local v8    # "numPaymentServices":I
    .end local v9    # "lastFoundPaymentService":Landroid/content/ComponentName;
    :cond_e
    :goto_5
    return-void
.end method
