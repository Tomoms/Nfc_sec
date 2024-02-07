.class public Lcom/android/nfc/NfcBlockedNotification;
.super Ljava/lang/Object;
.source "NfcBlockedNotification.java"


# static fields
.field private static final NFC_NOTIFICATION_CHANNEL:Ljava/lang/String; = "nfc_notification_channel"

.field public static final NOTIFICATION_ID_NFC:I = -0xf4241


# instance fields
.field mContext:Landroid/content/Context;

.field private mNotificationChannel:Landroid/app/NotificationChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/nfc/NfcBlockedNotification;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public startNotification()V
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/android/nfc/NfcBlockedNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f100021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "infoIntent":Landroid/content/Intent;
    goto :goto_0

    .line 57
    .end local v0    # "infoIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v0    # "infoIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/nfc/NfcBlockedNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    :goto_0
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/nfc/NfcBlockedNotification;->mContext:Landroid/content/Context;

    const-string v3, "nfc_notification_channel"

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    .local v1, "builder":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/android/nfc/NfcBlockedNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f10009e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/nfc/NfcBlockedNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f10009d

    .line 62
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v4, 0x108008a

    .line 63
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 64
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v5, 0x1

    .line 65
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/nfc/NfcBlockedNotification;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x44000000    # 512.0f

    .line 66
    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 68
    new-instance v2, Landroid/app/NotificationChannel;

    iget-object v5, p0, Lcom/android/nfc/NfcBlockedNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f10009c

    .line 69
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v2, p0, Lcom/android/nfc/NfcBlockedNotification;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 70
    iget-object v2, p0, Lcom/android/nfc/NfcBlockedNotification;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 72
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    iget-object v3, p0, Lcom/android/nfc/NfcBlockedNotification;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 73
    const v3, -0xf4241

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 74
    return-void
.end method
