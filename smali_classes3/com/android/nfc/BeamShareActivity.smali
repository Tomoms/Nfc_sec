.class public Lcom/android/nfc/BeamShareActivity;
.super Landroid/app/Activity;
.source "BeamShareActivity.java"


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "BeamShareActivity"


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mNdefMessage:Landroid/nfc/NdefMessage;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 262
    new-instance v0, Lcom/android/nfc/BeamShareActivity$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$4;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private showNfcDialogAndExit(I)V
    .locals 6
    .param p1, "msgId"    # I

    .line 97
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/BeamShareActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f110112

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 102
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 103
    new-instance v1, Lcom/android/nfc/BeamShareActivity$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/BeamShareActivity$1;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    new-instance v1, Lcom/android/nfc/BeamShareActivity$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/BeamShareActivity$2;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    new-instance v1, Lcom/android/nfc/BeamShareActivity$3;

    invoke-direct {v1, p0}, Lcom/android/nfc/BeamShareActivity$3;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 129
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 72
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 73
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 75
    const-string v0, "BeamShareActivity"

    const-string v1, "NFC adapter not present."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const v0, 0x7f10002e

    invoke-direct {p0, v0}, Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExit(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    .line 84
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BeamShareActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 94
    return-void
.end method

.method public parseShareIntentAndFinish(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .line 152
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 157
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    .line 158
    .local v4, "clipData":Landroid/content/ClipData;
    const/4 v5, 0x0

    const-string v6, "BeamShareActivity"

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 159
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 160
    invoke-virtual {v4, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 162
    .local v7, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 163
    .local v8, "uri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 165
    .local v9, "plainText":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v7, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v9    # "plainText":Ljava/lang/String;
    .local v0, "plainText":Ljava/lang/String;
    nop

    .line 170
    if-eqz v8, :cond_2

    .line 171
    sget-boolean v9, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "Found uri in ClipData."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    invoke-virtual {v1, v8}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 173
    :cond_2
    if-eqz v0, :cond_4

    .line 174
    sget-boolean v9, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "Found text in ClipData."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_4
    sget-boolean v9, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "Did not find any shareable data in ClipData."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    .end local v0    # "plainText":Ljava/lang/String;
    .restart local v9    # "plainText":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-boolean v10, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v10, :cond_5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_5
    nop

    .line 159
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "item":Landroid/content/ClipData$Item;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "plainText":Ljava/lang/String;
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_7
    goto/16 :goto_4

    .line 181
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "android.intent.extra.TEXT"

    const-string v7, "android.intent.extra.STREAM"

    if-eqz v0, :cond_e

    .line 182
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 183
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 184
    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_a

    .line 185
    sget-boolean v7, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v7, :cond_9

    const-string v7, "Found uri in ACTION_SEND intent."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_9
    invoke-virtual {v1, v0}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    goto :goto_2

    .line 187
    :cond_a
    if-eqz v3, :cond_c

    .line 188
    sget-boolean v7, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v7, :cond_b

    const-string v7, "Found EXTRA_TEXT in ACTION_SEND intent."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_b
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_2

    .line 191
    :cond_c
    sget-boolean v7, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v7, :cond_d

    const-string v7, "Did not find any shareable data in ACTION_SEND intent."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_d
    :goto_2
    goto :goto_4

    .line 194
    :cond_e
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 195
    .local v0, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 198
    .local v3, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_11

    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 200
    .restart local v8    # "uri":Landroid/net/Uri;
    sget-boolean v9, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v9, :cond_f

    const-string v9, "Found uri in ACTION_SEND_MULTIPLE intent."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_f
    invoke-virtual {v1, v8}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 202
    .end local v8    # "uri":Landroid/net/Uri;
    goto :goto_3

    :cond_10
    goto :goto_4

    .line 203
    :cond_11
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_13

    .line 205
    sget-boolean v7, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v7, :cond_12

    const-string v7, "Found text in ACTION_SEND_MULTIPLE intent."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_12
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    goto :goto_4

    .line 208
    :cond_13
    sget-boolean v7, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v7, :cond_14

    const-string v7, "Did not find any shareable data in ACTION_SEND_MULTIPLE intent."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v3    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_14
    :goto_4
    const/4 v3, 0x0

    .line 215
    .local v3, "shareData":Landroid/nfc/BeamShareData;
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object v7, v0

    .line 216
    .local v7, "myUserHandle":Landroid/os/UserHandle;
    iget-object v0, v1, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 218
    iget-object v0, v1, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v9, v0, [Landroid/net/Uri;

    .line 219
    .local v9, "uriArray":[Landroid/net/Uri;
    const/4 v0, 0x0

    .line 220
    .local v0, "numValidUris":I
    iget-object v10, v1, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v0

    .end local v0    # "numValidUris":I
    .local v11, "numValidUris":I
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/net/Uri;

    .line 222
    .local v12, "uri":Landroid/net/Uri;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v13

    invoke-interface {v0, v13}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    .line 223
    .local v0, "uid":I
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    const-string v14, "file"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_15

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v15, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v8, -0x1

    invoke-virtual {v13, v15, v8, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_15

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f10002d

    invoke-static {v8, v10, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 228
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 229
    const-string v8, "File based Uri doesn\'t have External Storage Permission."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const v8, 0x534e4554

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const-string v13, "37287958"

    aput-object v13, v10, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v14

    const/4 v13, 0x2

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    invoke-static {v8, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 231
    goto :goto_8

    .line 233
    :cond_15
    const-string v8, "com.android.nfc"

    invoke-virtual {v1, v8, v12, v14}, Lcom/android/nfc/BeamShareActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 234
    add-int/lit8 v8, v11, 0x1

    .end local v11    # "numValidUris":I
    .local v8, "numValidUris":I
    :try_start_2
    aput-object v12, v9, v11

    .line 235
    sget-boolean v11, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v11, :cond_16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found uri: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 242
    .end local v0    # "uid":I
    :cond_16
    nop

    .line 243
    .end local v12    # "uri":Landroid/net/Uri;
    move v11, v8

    goto/16 :goto_5

    .line 239
    .restart local v12    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v0

    move v11, v8

    goto :goto_6

    .line 236
    :catch_2
    move-exception v0

    move v11, v8

    goto :goto_7

    .line 239
    .end local v8    # "numValidUris":I
    .restart local v11    # "numValidUris":I
    :catch_3
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    :goto_6
    const-string v8, "Remote exception accessing uid of the calling process."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    goto :goto_8

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_7
    const-string v8, "Security exception granting uri permission to NFC process."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    nop

    .line 244
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_17
    :goto_8
    if-eqz v11, :cond_18

    iget-object v0, v1, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v11, v0, :cond_18

    .line 245
    new-instance v0, Landroid/nfc/BeamShareData;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v9, v7, v5}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .end local v3    # "shareData":Landroid/nfc/BeamShareData;
    .local v0, "shareData":Landroid/nfc/BeamShareData;
    goto :goto_9

    .line 244
    .end local v0    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v3    # "shareData":Landroid/nfc/BeamShareData;
    :cond_18
    const/4 v8, 0x0

    .line 248
    new-instance v0, Landroid/nfc/BeamShareData;

    invoke-direct {v0, v8, v8, v7, v5}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 250
    .end local v3    # "shareData":Landroid/nfc/BeamShareData;
    .end local v9    # "uriArray":[Landroid/net/Uri;
    .end local v11    # "numValidUris":I
    .restart local v0    # "shareData":Landroid/nfc/BeamShareData;
    :goto_9
    goto :goto_a

    .end local v0    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v3    # "shareData":Landroid/nfc/BeamShareData;
    :cond_19
    const/4 v8, 0x0

    iget-object v0, v1, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_1a

    .line 251
    new-instance v0, Landroid/nfc/BeamShareData;

    iget-object v9, v1, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    invoke-direct {v0, v9, v8, v7, v5}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 252
    .end local v3    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v0    # "shareData":Landroid/nfc/BeamShareData;
    sget-boolean v3, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created NDEF message:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 254
    .end local v0    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v3    # "shareData":Landroid/nfc/BeamShareData;
    :cond_1a
    sget-boolean v0, Lcom/android/nfc/BeamShareActivity;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "Could not find any data to parse."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1b
    new-instance v0, Landroid/nfc/BeamShareData;

    const/4 v6, 0x0

    invoke-direct {v0, v6, v6, v7, v5}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 258
    .end local v3    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v0    # "shareData":Landroid/nfc/BeamShareData;
    :cond_1c
    :goto_a
    iget-object v3, v1, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3, v0}, Landroid/nfc/NfcAdapter;->invokeBeam(Landroid/nfc/BeamShareData;)Z

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 260
    return-void

    .line 154
    .end local v0    # "shareData":Landroid/nfc/BeamShareData;
    .end local v4    # "clipData":Landroid/content/ClipData;
    .end local v7    # "myUserHandle":Landroid/os/UserHandle;
    :cond_1d
    :goto_b
    return-void
.end method

.method tryText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 143
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 145
    .local v0, "parsedUri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 146
    .end local v0    # "parsedUri":Landroid/net/Uri;
    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/nfc/NdefRecord;->createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 149
    :goto_0
    return-void
.end method

.method tryUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 132
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_1

    .line 135
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_1
    return-void
.end method
