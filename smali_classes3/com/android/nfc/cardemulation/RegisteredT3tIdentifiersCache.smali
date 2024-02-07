.class public Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
.super Ljava/lang/Object;
.source "RegisteredT3tIdentifiersCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "RegisteredT3tIdentifiersCache"


# instance fields
.field final mContext:Landroid/content/Context;

.field mEnabledForegroundService:Landroid/content/ComponentName;

.field mEnabledForegroundServiceUserId:I

.field final mForegroundT3tIdentifiersCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mNfcEnabled:Z

.field final mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

.field final mUserNfcFServiceInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mUserNfcFServiceInfo:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundServiceUserId:I

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    .line 90
    const-string v0, "RegisteredT3tIdentifiersCache"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    .line 93
    return-void
.end method

.method private getProfileParentId(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 111
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 114
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v1

    .line 115
    .local v1, "uh":Landroid/os/UserHandle;
    if-nez v1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_0
    return v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 235
    const-string v0, "T3T Identifier cache entries: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    NFCID2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v2, "    NfcFServiceInfo: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v2, p1, p2, p3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 240
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    goto :goto_0

    .line 241
    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 256
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 257
    .local v1, "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const-wide v2, 0x20b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 259
    .local v2, "token":J
    invoke-virtual {v1, p1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 260
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 261
    .end local v1    # "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v2    # "token":J
    goto :goto_0

    .line 262
    :cond_0
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 263
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 264
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 265
    return-void
.end method

.method generateForegroundT3tIdentifiersCacheLocked()V
    .locals 5

    .line 119
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    const-string v1, "RegisteredT3tIdentifiersCache"

    if-eqz v0, :cond_0

    const-string v0, "generateForegroundT3tIdentifiersCacheLocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 121
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mUserNfcFServiceInfo:Ljava/util/Map;

    iget v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundServiceUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 124
    .local v2, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NULL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    .end local v2    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_1
    goto :goto_0

    .line 134
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    if-eqz v0, :cond_3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mForegroundT3tIdentifiersCache: size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    .line 136
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 139
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    goto :goto_2

    .line 144
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->updateRoutingLocked(Z)V

    .line 145
    return-void
.end method

.method generateUserNfcFServiceInfoLocked(ILjava/util/List;)V
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mUserNfcFServiceInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public onEnabledForegroundNfcFServiceChanged(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 189
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredT3tIdentifiersCache"

    const-string v1, "Enabled foreground service changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    if-eqz p2, :cond_2

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundServiceUserId:I

    if-ne v1, p1, :cond_1

    .line 194
    monitor-exit v0

    return-void

    .line 196
    :cond_1
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    .line 197
    iput p1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundServiceUserId:I

    goto :goto_0

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    if-nez v1, :cond_3

    .line 200
    monitor-exit v0

    return-void

    .line 202
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    .line 203
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundServiceUserId:I

    .line 205
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->generateForegroundT3tIdentifiersCacheLocked()V

    .line 206
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNfcDisabled()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    .line 218
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    .line 220
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundServiceUserId:I

    .line 221
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->onNfccRoutingTableCleared()V

    .line 223
    return-void

    .line 221
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onNfcEnabled()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    .line 212
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSecureNfcToggled()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->updateRoutingLocked(Z)V

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredT3tIdentifiersCache"

    const-string v1, "onServicesUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mUserNfcFServiceInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitched()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->updateRoutingLocked(Z)V

    .line 229
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    .line 230
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundServiceUserId:I

    .line 231
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveNfcid2(Ljava/lang/String;)Landroid/nfc/cardemulation/NfcFServiceInfo;
    .locals 5
    .param p1, "nfcid2"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-boolean v1, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "RegisteredT3tIdentifiersCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveNfcid2: resolving NFCID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 100
    .local v1, "resolveInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const-string v2, "RegisteredT3tIdentifiersCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolved to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    if-nez v1, :cond_1

    const-string v4, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-exit v0

    return-object v1

    .line 103
    .end local v1    # "resolveInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateRoutingLocked(Z)V
    .locals 7
    .param p1, "force"    # Z

    .line 148
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    const-string v1, "RegisteredT3tIdentifiersCache"

    if-eqz v0, :cond_0

    const-string v0, "updateRoutingLocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    if-nez v0, :cond_1

    .line 150
    const-string v0, "Not updating routing table because NFC is off."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "t3tIdentifiers":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;>;"
    if-eqz p1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v1, v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->configureRouting(Ljava/util/List;)Z

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    nop

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 166
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v3, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 167
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getT3tPmm()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;-><init>(Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    goto :goto_0

    .line 169
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v2, v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->configureRouting(Ljava/util/List;)Z

    .line 170
    return-void
.end method
