.class public Lcom/android/nfc/cardemulation/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "RegisteredServicesCache"

.field static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field final mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

.field final mContext:Landroid/content/Context;

.field final mDynamicSettingsFile:Landroid/util/AtomicFile;

.field final mLock:Ljava/lang/Object;

.field final mReceiver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field mUserHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetProfileParentId(Lcom/android/nfc/cardemulation/RegisteredServicesCache;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getProfileParentId(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 80
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 143
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .line 146
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->refreshUserProfilesLocked()V

    .line 148
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    .line 175
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 177
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v3, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 188
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v3, "sdFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object v4, p1

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 194
    .local v1, "dataDir":Ljava/io/File;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "dynamic_aids.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    .line 195
    return-void
.end method

.method private findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .locals 3
    .param p1, "userId"    # I

    .line 126
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 127
    .local v0, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    if-nez v0, :cond_0

    .line 128
    new-instance v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices-IA;)V

    move-object v0, v1

    .line 129
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    :cond_0
    return-object v0
.end method

.method private getProfileParentId(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 135
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 138
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v1

    .line 139
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

.method private readDynamicSettingsLocked()V
    .locals 21

    .line 395
    move-object/from16 v1, p0

    const-string v2, "RegisteredServicesCache"

    const/4 v3, 0x0

    .line 397
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    const-string v0, "Dynamic AIDs file does not exist."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    if-eqz v3, :cond_0

    .line 474
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 476
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v3, v0

    .line 402
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v4, v0

    .line 403
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 404
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 405
    .local v0, "eventType":I
    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_2

    .line 407
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v0, v6

    goto :goto_1

    .line 409
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 410
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "services"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 411
    const/4 v9, 0x0

    .line 412
    .local v9, "inService":Z
    const/4 v10, 0x0

    .line 413
    .local v10, "currentComponent":Landroid/content/ComponentName;
    const/4 v11, -0x1

    .line 414
    .local v11, "currentUid":I
    const/4 v12, 0x0

    .line 415
    .local v12, "currentOffHostSE":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v8

    move v8, v0

    move-object/from16 v0, v20

    .line 416
    .local v0, "tagName":Ljava/lang/String;
    .local v8, "eventType":I
    .local v13, "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    :goto_2
    if-eq v8, v6, :cond_f

    .line 417
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    .end local v0    # "tagName":Ljava/lang/String;
    .local v14, "tagName":Ljava/lang/String;
    const-string v0, "service"

    const/4 v15, 0x3

    if-ne v8, v7, :cond_8

    .line 419
    :try_start_3
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 420
    const-string v0, "component"

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 421
    .local v16, "compString":Ljava/lang/String;
    const-string v0, "uid"

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 422
    .local v17, "uidString":Ljava/lang/String;
    const-string v0, "offHostSE"

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v18, v0

    .line 423
    .local v18, "offHostString":Ljava/lang/String;
    if-eqz v16, :cond_4

    if-nez v17, :cond_3

    goto :goto_3

    .line 427
    :cond_3
    :try_start_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v11, v0

    .line 428
    invoke-static/range {v16 .. v16}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v10, v0

    .line 429
    move-object/from16 v12, v18

    .line 430
    const/4 v9, 0x1

    .line 433
    goto :goto_4

    .line 431
    :catch_1
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v5, "Could not parse service uid"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 424
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_3
    const-string v0, "Invalid service attributes"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v16    # "compString":Ljava/lang/String;
    .end local v17    # "uidString":Ljava/lang/String;
    .end local v18    # "offHostString":Ljava/lang/String;
    :cond_5
    :goto_4
    const-string v0, "aid-group"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, v15, :cond_7

    if-eqz v9, :cond_7

    .line 437
    invoke-static {v4}, Landroid/nfc/cardemulation/AidGroup;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v0

    .line 438
    .local v0, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v0, :cond_6

    .line 439
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 441
    :cond_6
    const-string v5, "Could not parse AID group."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_7
    :goto_5
    move/from16 v19, v8

    goto/16 :goto_9

    .line 444
    :cond_8
    if-ne v8, v15, :cond_e

    .line 445
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 447
    if-eqz v10, :cond_c

    if-ltz v11, :cond_c

    .line 448
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    if-eqz v12, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v19, v8

    goto :goto_8

    .line 449
    :cond_a
    :goto_6
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 450
    .local v0, "userId":I
    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    invoke-direct {v5, v11}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;-><init>(I)V

    .line 451
    .local v5, "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/nfc/cardemulation/AidGroup;

    move-object/from16 v17, v16

    .line 452
    .local v17, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual/range {v17 .. v17}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    move/from16 v19, v8

    move-object/from16 v8, v17

    .end local v17    # "group":Landroid/nfc/cardemulation/AidGroup;
    .local v8, "group":Landroid/nfc/cardemulation/AidGroup;
    .local v19, "eventType":I
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    move/from16 v8, v19

    const/4 v6, 0x1

    const/4 v7, 0x2

    .end local v8    # "group":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_7

    .line 454
    .end local v19    # "eventType":I
    .local v8, "eventType":I
    :cond_b
    move/from16 v19, v8

    .end local v8    # "eventType":I
    .restart local v19    # "eventType":I
    iput-object v12, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 455
    invoke-direct {v1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v6

    .line 456
    .local v6, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v7, v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 447
    .end local v0    # "userId":I
    .end local v5    # "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .end local v6    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v19    # "eventType":I
    .restart local v8    # "eventType":I
    :cond_c
    move/from16 v19, v8

    .line 458
    .end local v8    # "eventType":I
    .restart local v19    # "eventType":I
    :goto_8
    const/4 v0, -0x1

    .line 459
    .end local v11    # "currentUid":I
    .local v0, "currentUid":I
    const/4 v5, 0x0

    .line 460
    .end local v10    # "currentComponent":Landroid/content/ComponentName;
    .local v5, "currentComponent":Landroid/content/ComponentName;
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 461
    const/4 v6, 0x0

    .line 462
    .end local v9    # "inService":Z
    .local v6, "inService":Z
    const/4 v7, 0x0

    move v11, v0

    move-object v10, v5

    move v9, v6

    move-object v12, v7

    .end local v12    # "currentOffHostSE":Ljava/lang/String;
    .local v7, "currentOffHostSE":Ljava/lang/String;
    goto :goto_9

    .line 445
    .end local v0    # "currentUid":I
    .end local v5    # "currentComponent":Landroid/content/ComponentName;
    .end local v6    # "inService":Z
    .end local v7    # "currentOffHostSE":Ljava/lang/String;
    .end local v19    # "eventType":I
    .restart local v8    # "eventType":I
    .restart local v9    # "inService":Z
    .restart local v10    # "currentComponent":Landroid/content/ComponentName;
    .restart local v11    # "currentUid":I
    .restart local v12    # "currentOffHostSE":Ljava/lang/String;
    :cond_d
    move/from16 v19, v8

    .end local v8    # "eventType":I
    .restart local v19    # "eventType":I
    goto :goto_9

    .line 444
    .end local v19    # "eventType":I
    .restart local v8    # "eventType":I
    :cond_e
    move/from16 v19, v8

    .line 465
    .end local v8    # "eventType":I
    .restart local v19    # "eventType":I
    :goto_9
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v8, v0

    move-object v0, v14

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .end local v19    # "eventType":I
    .restart local v8    # "eventType":I
    goto/16 :goto_2

    .line 416
    .end local v14    # "tagName":Ljava/lang/String;
    .local v0, "tagName":Ljava/lang/String;
    :cond_f
    move/from16 v19, v8

    .line 472
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "eventType":I
    .end local v9    # "inService":Z
    .end local v10    # "currentComponent":Landroid/content/ComponentName;
    .end local v11    # "currentUid":I
    .end local v12    # "currentOffHostSE":Ljava/lang/String;
    .end local v13    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_10
    if-eqz v3, :cond_11

    .line 474
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 476
    :goto_a
    goto :goto_b

    .line 475
    :catch_2
    move-exception v0

    goto :goto_a

    .line 472
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_c

    .line 468
    :catch_3
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v4, "Could not parse dynamic AIDs file, trashing."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_11

    .line 474
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_a

    .line 479
    :cond_11
    :goto_b
    return-void

    .line 472
    :goto_c
    if-eqz v3, :cond_12

    .line 474
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 476
    goto :goto_d

    .line 475
    :catch_4
    move-exception v0

    .line 478
    :cond_12
    :goto_d
    throw v2
.end method

.method private refreshUserProfilesLocked()V
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 220
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 222
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserHandles:Ljava/util/List;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, "removeUserHandles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 226
    .local v3, "uh":Landroid/os/UserHandle;
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v3    # "uh":Landroid/os/UserHandle;
    :cond_0
    goto :goto_0

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 231
    return-void
.end method

.method private writeDynamicSettingsLocked()Z
    .locals 12

    .line 482
    const-string v0, "service"

    const-string v1, "services"

    const/4 v2, 0x0

    .line 484
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 485
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 486
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 487
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 488
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 489
    invoke-interface {v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 491
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 492
    .local v7, "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v8, v7, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 493
    .local v9, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    const-string v10, "component"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    const-string v10, "uid"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    iget v11, v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    iget-object v10, v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 497
    const-string v10, "offHostSE"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    iget-object v11, v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    invoke-interface {v3, v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    :cond_0
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    iget-object v10, v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/AidGroup;

    .line 500
    .local v11, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v11, v3}, Landroid/nfc/cardemulation/AidGroup;->writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 501
    .end local v11    # "group":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_2

    .line 502
    :cond_1
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    nop

    .end local v9    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    goto :goto_1

    .line 490
    .end local v7    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 505
    .end local v5    # "i":I
    :cond_3
    invoke-interface {v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 506
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 507
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    return v4

    .line 509
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RegisteredServicesCache"

    const-string v3, "Error writing dynamic AIDs"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    if-eqz v2, :cond_4

    .line 512
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 514
    :cond_4
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 3
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .line 240
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 241
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 242
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 715
    const-string v0, "Registered HCE services for current user: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 719
    .local v2, "uh":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/os/UserManager;

    .line 720
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 721
    .local v3, "um":Landroid/os/UserManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v4

    .line 723
    .local v4, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 724
    .local v6, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v6, p1, p2, p3}, Landroid/nfc/cardemulation/ApduServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 725
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    .end local v6    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_1

    .line 727
    :cond_0
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    .end local v2    # "uh":Landroid/os/UserHandle;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    goto :goto_0

    .line 729
    :cond_1
    monitor-exit v0

    .line 730
    return-void

    .line 729
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 234
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 235
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegisteredServicesCache"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    goto :goto_0

    .line 237
    :cond_1
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 742
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v0

    .line 743
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 744
    .local v2, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-wide v3, 0x20b00000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 745
    .local v3, "token":J
    invoke-virtual {v2, p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 746
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 747
    .end local v2    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v3    # "token":J
    goto :goto_0

    .line 748
    :cond_0
    return-void
.end method

.method public getAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .line 659
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 660
    .local v0, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v1, 0x0

    const-string v2, "RegisteredServicesCache"

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v3

    if-eq v3, p2, :cond_0

    .line 662
    const-string v3, "UID mismatch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-object v1

    .line 665
    :cond_0
    invoke-virtual {v0, p4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v1

    return-object v1

    .line 667
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-object v1
.end method

.method getInstalledServices(I)Ljava/util/ArrayList;
    .locals 16
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 280
    move/from16 v1, p1

    const-string v2, "android.permission.BIND_NFC_SERVICE"

    const-string v3, "android.permission.NFC"

    const-string v4, "Unable to load component info "

    const-string v5, "RegisteredServicesCache"

    move-object/from16 v6, p0

    :try_start_0
    iget-object v0, v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    const-string v7, "android"

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v7, v0

    .line 285
    .local v7, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 289
    .local v8, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x80

    invoke-virtual {v7, v10, v11, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v0

    .line 293
    .local v10, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v12, "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE"

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v11, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 296
    .local v11, "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 300
    .local v13, "resolvedService":Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-interface {v11, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v9

    .line 301
    .local v0, "onHost":Z
    :goto_1
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 302
    .local v14, "si":Landroid/content/pm/ServiceInfo;
    new-instance v15, Landroid/content/ComponentName;

    iget-object v9, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v9, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v15

    .line 304
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v9, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 306
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping application component "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, ": it must request the permission "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    move/from16 v1, p1

    const/4 v9, 0x0

    goto :goto_0

    .line 311
    :cond_1
    iget-object v9, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping APDU service "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, ": it does not require the permission "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    move/from16 v1, p1

    const/4 v9, 0x0

    goto :goto_0

    .line 318
    :cond_2
    new-instance v9, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-direct {v9, v7, v13, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V

    .line 319
    .local v9, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    nop

    .line 320
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 324
    .end local v0    # "onHost":Z
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v14    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 322
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 323
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    nop

    .line 327
    .end local v13    # "resolvedService":Landroid/content/pm/ResolveInfo;
    :goto_3
    move/from16 v1, p1

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 329
    :cond_3
    return-object v8

    .line 282
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v10    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_2
    move-exception v0

    .line 283
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Could not create user package context"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v1, 0x0

    return-object v1
.end method

.method public getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 251
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 253
    .local v1, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    monitor-exit v0

    return-object v2

    .line 254
    .end local v1    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServices(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 261
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 262
    nop

    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    monitor-exit v1

    .line 263
    return-object v0

    .line 262
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getServicesForCategory(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 270
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 271
    .local v4, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v4, p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    goto :goto_0

    .line 273
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_1
    monitor-exit v1

    .line 274
    return-object v0

    .line 273
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasService(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initialize()V
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->readDynamicSettingsLocked()V

    .line 200
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 201
    .local v2, "uh":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(IZ)V

    .line 202
    .end local v2    # "uh":Landroid/os/UserHandle;
    goto :goto_0

    .line 203
    :cond_0
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public invalidateCache(IZ)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "validateInstalled"    # Z

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 337
    .local v0, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v0, :cond_0

    .line 338
    return-void

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 344
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    .line 345
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 346
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    nop

    .line 348
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 349
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 350
    const-string v5, "RegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 353
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_1
    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 355
    .local v5, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "RegisteredServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AIDs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 356
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 355
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_3
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    nop

    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_1

    .line 361
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v4, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 365
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 366
    .local v7, "component":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    .line 367
    .local v8, "dynamicSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    iget-object v9, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 368
    .local v9, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v10

    iget v11, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->uid:I

    if-eq v10, v11, :cond_5

    goto :goto_4

    .line 372
    :cond_5
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/AidGroup;

    .line 373
    .local v11, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v9, v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V

    .line 374
    .end local v11    # "group":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_3

    .line 375
    :cond_6
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 376
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOffHostSecureElement(Ljava/lang/String;)V

    .line 379
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v8    # "dynamicSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .end local v9    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_7
    goto :goto_2

    .line 369
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    .restart local v7    # "component":Landroid/content/ComponentName;
    .restart local v8    # "dynamicSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .restart local v9    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_8
    :goto_4
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    goto :goto_2

    .line 380
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v8    # "dynamicSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .end local v9    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 381
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 382
    .local v6, "component":Landroid/content/ComponentName;
    const-string v7, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dynamic AIDs registered by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    nop

    .end local v6    # "component":Landroid/content/ComponentName;
    goto :goto_5

    .line 386
    :cond_a
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicSettingsLocked()Z

    .line 388
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    .end local v4    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_b
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;Z)V

    .line 391
    sget-boolean v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/util/ArrayList;)V

    .line 392
    :cond_c
    return-void

    .line 388
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onManagedProfileChanged()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->refreshUserProfilesLocked()V

    .line 215
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitched()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->refreshUserProfilesLocked()V

    .line 209
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerAidGroupForService(IILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .line 605
    const/4 v0, 0x0

    .line 607
    .local v0, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 608
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 610
    .local v2, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 611
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 612
    const-string v5, "RegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    monitor-exit v1

    return v4

    .line 615
    :cond_0
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 620
    const-string v5, "RegisteredServicesCache"

    const-string v6, "UID mismatch."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    monitor-exit v1

    return v4

    .line 625
    :cond_1
    invoke-virtual {p4}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v5

    .line 626
    .local v5, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 627
    .local v7, "aid":Ljava/lang/String;
    invoke-static {v7}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 628
    const-string v6, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a valid AID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    monitor-exit v1

    return v4

    .line 631
    .end local v7    # "aid":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 632
    :cond_3
    invoke-virtual {v3, p4}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V

    .line 633
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    .line 634
    .local v4, "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    if-nez v4, :cond_4

    .line 635
    new-instance v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    invoke-direct {v6, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;-><init>(I)V

    move-object v4, v6

    .line 636
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 637
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_4
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicSettingsLocked()Z

    move-result v6

    .line 641
    .local v6, "success":Z
    if-eqz v6, :cond_5

    .line 642
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    .line 643
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    goto :goto_1

    .line 645
    :cond_5
    const-string v7, "RegisteredServicesCache"

    const-string v8, "Failed to persist AID group."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .end local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v4    # "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .end local v5    # "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    if-eqz v6, :cond_6

    .line 652
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;Z)V

    .line 654
    :cond_6
    return v6

    .line 649
    .end local v6    # "success":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 676
    .local v1, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 677
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v3

    .line 678
    .local v3, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v4

    .line 679
    .local v4, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v4, :cond_4

    .line 680
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v5

    const/4 v6, 0x0

    if-eq v5, p2, :cond_0

    .line 682
    const-string v5, "RegisteredServicesCache"

    const-string v7, "UID mismatch"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    monitor-exit v2

    return v6

    .line 685
    :cond_0
    invoke-virtual {v4, p4}, Landroid/nfc/cardemulation/ApduServiceInfo;->removeDynamicAidGroupForCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 686
    const-string v5, "RegisteredServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Could not find dynamic AIDs for category "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    monitor-exit v2

    return v6

    .line 690
    :cond_1
    iget-object v5, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    .line 691
    .local v5, "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    if-eqz v5, :cond_3

    .line 692
    iget-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v7, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/AidGroup;

    .line 693
    .local v7, "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicSettingsLocked()Z

    move-result v8

    move v0, v8

    .line 694
    if-eqz v0, :cond_2

    .line 695
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v6

    .line 701
    .end local v7    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_0

    .line 697
    .restart local v7    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_2
    const-string v8, "RegisteredServicesCache"

    const-string v9, "Could not persist deleted AID group."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v8, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v8, p4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    monitor-exit v2

    return v6

    .line 702
    .end local v7    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_3
    const-string v6, "RegisteredServicesCache"

    const-string v7, "Could not find aid group in local cache."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .end local v5    # "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    :goto_0
    goto :goto_1

    .line 705
    :cond_4
    const-string v5, "RegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v3    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v4    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    if-eqz v0, :cond_5

    .line 709
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v1, v3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;Z)V

    .line 711
    :cond_5
    return v0

    .line 707
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setOffHostSecureElement(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "offHostSE"    # Ljava/lang/String;

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 522
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 524
    .local v2, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 525
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 526
    const-string v5, "RegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    monitor-exit v1

    return v4

    .line 529
    :cond_0
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 534
    const-string v5, "RegisteredServicesCache"

    const-string v6, "UID mismatch."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    monitor-exit v1

    return v4

    .line 537
    :cond_1
    if-eqz p4, :cond_5

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 542
    :cond_2
    iget-object v5, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    .line 543
    .local v5, "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    if-nez v5, :cond_3

    .line 544
    new-instance v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    invoke-direct {v6, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;-><init>(I)V

    move-object v5, v6

    .line 546
    :cond_3
    iput-object p4, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 547
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicSettingsLocked()Z

    move-result v6

    .line 548
    .local v6, "success":Z
    if-nez v6, :cond_4

    .line 549
    const-string v7, "RegisteredServicesCache"

    const-string v8, "Failed to persist AID group."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 551
    monitor-exit v1

    return v4

    .line 554
    :cond_4
    invoke-virtual {v3, p4}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOffHostSecureElement(Ljava/lang/String;)V

    .line 555
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 556
    .end local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v5    # "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .end local v6    # "success":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;Z)V

    .line 559
    return v2

    .line 538
    .restart local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .restart local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_5
    :goto_0
    :try_start_1
    const-string v5, "RegisteredServicesCache"

    const-string v6, "OffHostSE mismatch with Service type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    monitor-exit v1

    return v4

    .line 556
    .end local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public unsetOffHostSecureElement(IILandroid/content/ComponentName;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 567
    .local v2, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 568
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 569
    const-string v5, "RegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    monitor-exit v1

    return v4

    .line 572
    :cond_0
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 577
    const-string v5, "RegisteredServicesCache"

    const-string v6, "UID mismatch."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    monitor-exit v1

    return v4

    .line 580
    :cond_1
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 585
    :cond_2
    iget-object v5, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    .line 586
    .local v5, "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 587
    .local v6, "offHostSE":Ljava/lang/String;
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 588
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicSettingsLocked()Z

    move-result v7

    .line 589
    .local v7, "success":Z
    if-nez v7, :cond_3

    .line 590
    const-string v8, "RegisteredServicesCache"

    const-string v9, "Failed to persist AID group."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iput-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 592
    monitor-exit v1

    return v4

    .line 595
    :cond_3
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->unsetOffHostSecureElement()V

    .line 596
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 597
    .end local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v5    # "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .end local v6    # "offHostSE":Ljava/lang/String;
    .end local v7    # "success":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;Z)V

    .line 600
    return v2

    .line 581
    .restart local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .restart local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_4
    :goto_0
    :try_start_1
    const-string v5, "RegisteredServicesCache"

    const-string v6, "OffHostSE is not set"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    monitor-exit v1

    return v4

    .line 597
    .end local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
