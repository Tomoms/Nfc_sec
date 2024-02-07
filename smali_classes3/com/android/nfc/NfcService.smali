.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$WatchDogThread;,
        Lcom/android/nfc/NfcService$NfcDtaService;,
        Lcom/android/nfc/NfcService$TagService;,
        Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;,
        Lcom/android/nfc/NfcService$SecNfcAdapterService;,
        Lcom/android/nfc/NfcService$NfcAdapterService;,
        Lcom/android/nfc/NfcService$EnableDisableTask;,
        Lcom/android/nfc/NfcService$ReaderModeParams;
    }
.end annotation


# static fields
.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field public static final ACTION_NOTIF_AVAILABLE_CLEARED:Ljava/lang/String; = "com.android.nfc.action.NOTIF_AVAILABLE_CLEARED"

.field public static final ACTION_NOTIF_ENABLED_CLEARED:Ljava/lang/String; = "com.android.nfc.action.NOTIF_ENABLED_CLEARED"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field static final ANTENNA_BLOCKED_MESSAGE_SHOWN_DEFAULT:Z = false

.field private static final APPLY_ROUTING_RETRY_TIMEOUT_MS:I = 0x1388

.field private static final CHANNEL_ID:Ljava/lang/String; = "nfc_channel"

.field public static final DBG:Z

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field static final FACTORY_MODE_CAL_DONE:B = 0x3t

.field static final FACTORY_MODE_DISABLE:B = 0x0t

.field static final FACTORY_MODE_ENABLE:B = 0x1t

.field static final FACTORY_MODE_GET_CAL:B = 0x4t

.field static final FACTORY_MODE_USER_CAL:B = 0x2t

.field private static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field static final INIT_WATCHDOG_MS:I = 0x15f90

.field static final INVALID_NATIVE_HANDLE:I = -0x1

.field static final MAX_POLLING_PAUSE_TIMEOUT:J = 0x9c40L

.field static final MAX_TOAST_DEBOUNCE_TIME:I = 0x2710

.field static final MSG_APPLY_SCREEN_STATE:I = 0x10

.field static final MSG_COMMIT_ROUTING:I = 0x7

.field static final MSG_DELAY_POLLING:I = 0x14

.field static final MSG_DEREGISTER_T3T_IDENTIFIER:I = 0xd

.field static final MSG_MOCK_NDEF:I = 0x3

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_PREFERRED_PAYMENT_CHANGED:I = 0x12

.field static final MSG_REGISTER_T3T_IDENTIFIER:I = 0xc

.field static final MSG_RESUME_POLLING:I = 0xb

.field static final MSG_RF_FIELD_ACTIVATED:I = 0x9

.field static final MSG_RF_FIELD_DEACTIVATED:I = 0xa

.field static final MSG_ROUTE_AID:I = 0x5

.field static final MSG_ROUTE_AID_PARAM_TAG:Ljava/lang/String; = "power"

.field static final MSG_TAG_DEBOUNCE:I = 0xe

.field static final MSG_TOAST_DEBOUNCE_EVENT:I = 0x13

.field static final MSG_TRANSACTION_EVENT:I = 0x11

.field static final MSG_UNROUTE_AID:I = 0x6

.field static final MSG_UPDATE_STATS:I = 0xf

.field static final NATIVE_CRASH_FILE_SIZE:I = 0x100000

.field static final NATIVE_LOG_FILE_NAME:Ljava/lang/String; = "native_crash_logs"

.field static final NATIVE_LOG_FILE_PATH:Ljava/lang/String; = "/data/misc/nfc/logs"

.field public static final NCI_VERSION_1_0:I = 0x10

.field public static final NCI_VERSION_2_0:I = 0x20

.field public static final NFCEE_DEVICE_HOST_ID:I = 0x0

.field public static final NFCEE_SE_ESE_ID:I = 0x2

.field public static final NFCEE_SE_UICC_ID:I = 0x3

.field static final NFC_LISTEN_A:I = 0x1

.field static final NFC_LISTEN_B:I = 0x2

.field static final NFC_LISTEN_DISABLE:I = 0x0

.field static final NFC_LISTEN_F:I = 0x4

.field static final NFC_ON_DEFAULT:Z = true

.field static final NFC_POLLING_MODE:I = 0x8

.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_KOVIO:I = 0x20

.field static final NFC_POLL_V:I = 0x8

.field static final NOTIF_NFC_AVAILABLE:I = 0x1

.field static final NOTIF_NFC_ENABLED:I = 0x2

.field static final NO_POLL_DELAY:I = -0x1

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field static final PREF_ANTENNA_BLOCKED_MESSAGE_SHOWN:Ljava/lang/String; = "antenna_blocked_message_shown"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field private static final PREF_NOTIFY_NFC_AVAILABLE:Ljava/lang/String; = "notify_nfc_available"

.field private static final PREF_NOTIFY_NFC_ENABLED:Ljava/lang/String; = "notify_nfc_enabled"

.field static final PREF_SECURE_NFC_ON:Ljava/lang/String; = "secure_nfc_on"

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field static final SECURE_NFC_ON_DEFAULT:Z = false

.field static final SEC_PREF_DEFAULT_ROUTE:Ljava/lang/String; = "default_route"

.field static final SEC_PREF_LISTEN_TECH_MASK:Ljava/lang/String; = "listen_mask"

.field static final SEC_PREF_NFC_FACTORY_MODE:Ljava/lang/String; = "factory_mode"

.field static final SEC_PREF_POWEROFF_CARDEMULATION:Ljava/lang/String; = "poweroff_ce"

.field static final SEC_PREF_PREFERRED_SIM:Ljava/lang/String; = "preferred_sim"

.field static final SEC_PREF_SIM_SLOT1:I = 0x0

.field static final SEC_PREF_SIM_SLOT2:I = 0x1

.field static final SEC_PREF_UNDEFINED:I = -0x1

.field static final SEID_ESE:I = 0x2

.field static final SEID_HOST:I = 0x0

.field static final SEID_SIM:I = 0x3

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

.field public static final SOUND_END:I = 0x1

.field public static final SOUND_ERROR:I = 0x2

.field public static final SOUND_START:I = 0x0

.field static final STATS_UPDATE_INTERVAL_MS:J = 0xdbba00L

.field private static final SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field static final TAG:Ljava/lang/String; = "NfcService"

.field static final TASK_BOOT:I = 0x3

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_DISABLE_ALWAYS_ON:I = 0x5

.field static final TASK_ENABLE:I = 0x1

.field static final TASK_ENABLE_ALWAYS_ON:I = 0x4

.field static final TASK_LOCALE_CHANGED:I = 0x9

.field static final TASK_NOTIF_AVAILABLE_CLEARED:I = 0x7

.field static final TASK_NOTIF_ENABLED_CLEARED:I = 0x8

.field static final TASK_RESTART:I = 0x6

.field static final TRON_NFC_CE:Ljava/lang/String; = "nfc_ce"

.field static final TRON_NFC_P2P:Ljava/lang/String; = "nfc_p2p"

.field static final TRON_NFC_TAG:Ljava/lang/String; = "nfc_tag"

.field private static mDispatchFailedCount:I

.field private static mDispatchFailedMax:I

.field private static nci_version:I

.field public static sIsDtaMode:Z

.field public static sIsShortRecordLayout:Z

.field private static sNfcOnOob:Z

.field private static sService:Lcom/android/nfc/NfcService;

.field private static sToast_debounce:Z

.field private static sToast_debounce_time_ms:I


# instance fields
.field private final mAlwaysOnListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/nfc/INfcControllerAlwaysOnListener;",
            ">;"
        }
    .end annotation
.end field

.field mAlwaysOnState:I

.field mAntennaBlockedMessageShown:Z

.field private mAvailNotifShown:Z

.field private final mBackupManager:Landroid/app/backup/BackupManager;

.field private mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private final mCookieGenerator:Ljava/security/SecureRandom;

.field mCookieUpToDate:J

.field mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

.field mDebounceTagDebounceMs:I

.field mDebounceTagNativeHandle:I

.field mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

.field mDebounceTagUid:[B

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field private mEnabledNotifShown:Z

.field mEndSound:I

.field mErrorSound:I

.field private mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field private mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field private mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field mInProvisionMode:Z

.field private final mIsAlwaysOnSupported:Z

.field mIsDebugBuild:Z

.field mIsHceCapable:Z

.field mIsHceFCapable:Z

.field mIsRecovering:Z

.field mIsRequestUnlockShowed:Z

.field mIsSecureNfcCapable:Z

.field mIsSecureNfcEnabled:Z

.field mIsVrModeEnabled:Z

.field private mIsWaitForRestart:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field mLastReadNdefMessage:Landroid/nfc/NdefMessage;

.field private final mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

.field private mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

.field mNfcDtaService:Lcom/android/nfc/NfcService$NfcDtaService;

.field mNfcEventInstalledPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mNfcPreferredPaymentChangedInstalledPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field mNotifyDispatchFailed:Z

.field mNotifyReadFailed:Z

.field mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field final mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field mPollDelay:I

.field mPollingDelayed:Z

.field private final mPollingDisableAllowed:Z

.field private mPollingDisableDeathRecipients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field mPollingPaused:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequireUnlockWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRestartingNfc:Z

.field mRoutingTableParser:Lcom/android/nfc/RoutingTableParser;

.field private mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSEService:Landroid/se/omapi/ISecureElementService;

.field mScreenState:I

.field private mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field mSecNfcAdapter:Lcom/android/nfc/NfcService$SecNfcAdapterService;

.field private mSecureElementManager:Lcom/android/nfc/SecureElementManager;

.field mSkipNdefRead:Z

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field private mStartedInProvisionMode:Z

.field mState:I

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mVibrationEffect:Landroid/os/VibrationEffect;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private vrManager:Landroid/service/vr/IVrManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlwaysOnListeners(Lcom/android/nfc/NfcService;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mAlwaysOnListeners:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailNotifShown(Lcom/android/nfc/NfcService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/nfc/NfcService;->mAvailNotifShown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackupManager(Lcom/android/nfc/NfcService;)Landroid/app/backup/BackupManager;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCardEmulationManager(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCookieGenerator(Lcom/android/nfc/NfcService;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mCookieGenerator:Ljava/security/SecureRandom;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnabledNotifShown(Lcom/android/nfc/NfcService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/nfc/NfcService;->mEnabledNotifShown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmForegroundUtils(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAlwaysOnSupported(Lcom/android/nfc/NfcService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/nfc/NfcService;->mIsAlwaysOnSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyguard(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNfcDispatcher(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNfcUnlockManager(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPollingDisableAllowed(Lcom/android/nfc/NfcService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/nfc/NfcService;->mPollingDisableAllowed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPollingDisableDeathRecipients(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mPollingDisableDeathRecipients:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefs(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefsEditor(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReaderModeDeathRecipient(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceiver(Lcom/android/nfc/NfcService;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestartingNfc(Lcom/android/nfc/NfcService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/nfc/NfcService;->mRestartingNfc:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoutingWakeLock(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSEService(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenStateHelper(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecureElementManager(Lcom/android/nfc/NfcService;)Lcom/android/nfc/SecureElementManager;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mSecureElementManager:Lcom/android/nfc/SecureElementManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartedInProvisionMode(Lcom/android/nfc/NfcService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/nfc/NfcService;->mStartedInProvisionMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/nfc/NfcService;)I
    .locals 0

    iget p0, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrationEffect(Lcom/android/nfc/NfcService;)Landroid/os/VibrationEffect;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrator(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAvailNotifShown(Lcom/android/nfc/NfcService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mAvailNotifShown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnabledNotifShown(Lcom/android/nfc/NfcService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mEnabledNotifShown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRestartingNfc(Lcom/android/nfc/NfcService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mRestartingNfc:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserId(Lcom/android/nfc/NfcService;I)V
    .locals 0

    iput p1, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mStopPresenceChecking(Lcom/android/nfc/NfcService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->StopPresenceChecking()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcomputeDiscoveryParameters(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misSEServiceAvailable(Lcom/android/nfc/NfcService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isSEServiceAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetPaymentForegroundPreference(Lcom/android/nfc/NfcService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->setPaymentForegroundPreference(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstoreNativeCrashLogs(Lcom/android/nfc/NfcService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->storeNativeCrashLogs()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetHARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES()Landroid/os/VibrationAttributes;
    .locals 1

    sget-object v0, Lcom/android/nfc/NfcService;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmDispatchFailedCount()I
    .locals 1

    sget v0, Lcom/android/nfc/NfcService;->mDispatchFailedCount:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmDispatchFailedMax()I
    .locals 1

    sget v0, Lcom/android/nfc/NfcService;->mDispatchFailedMax:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetnci_version()I
    .locals 1

    sget v0, Lcom/android/nfc/NfcService;->nci_version:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsNfcOnOob()Z
    .locals 1

    sget-boolean v0, Lcom/android/nfc/NfcService;->sNfcOnOob:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsToast_debounce()Z
    .locals 1

    sget-boolean v0, Lcom/android/nfc/NfcService;->sToast_debounce:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsToast_debounce_time_ms()I
    .locals 1

    sget v0, Lcom/android/nfc/NfcService;->sToast_debounce_time_ms:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmDispatchFailedCount(I)V
    .locals 0

    sput p0, Lcom/android/nfc/NfcService;->mDispatchFailedCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputnci_version(I)V
    .locals 0

    sput p0, Lcom/android/nfc/NfcService;->nci_version:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsToast_debounce(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/nfc/NfcService;->sToast_debounce:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 135
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "persist.nfc.debug_enabled"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    .line 282
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsShortRecordLayout:Z

    .line 302
    nop

    .line 303
    const/16 v1, 0x32

    invoke-static {v1}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v1

    sput-object v1, Lcom/android/nfc/NfcService;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 314
    const/16 v1, 0x10

    sput v1, Lcom/android/nfc/NfcService;->nci_version:I

    .line 426
    sput-boolean v0, Lcom/android/nfc/NfcService;->sToast_debounce:Z

    .line 427
    const/16 v1, 0xbb8

    sput v1, Lcom/android/nfc/NfcService;->sToast_debounce_time_ms:I

    .line 428
    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 27
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .line 577
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPollingDisableDeathRecipients:Ljava/util/HashMap;

    .line 320
    new-instance v0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 325
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mCookieGenerator:Ljava/security/SecureRandom;

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/HashMap;

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcPreferredPaymentChangedInstalledPackages:Ljava/util/HashMap;

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 345
    nop

    .line 346
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 362
    const/4 v2, -0x1

    iput v2, v1, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 410
    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/android/nfc/NfcService;->mCookieUpToDate:J

    .line 434
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 435
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mAlwaysOnListeners:Ljava/util/Set;

    .line 438
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mIsWaitForRestart:Z

    .line 439
    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mRestartingNfc:Z

    .line 449
    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mEnabledNotifShown:Z

    .line 450
    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mAvailNotifShown:Z

    .line 3867
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 3891
    new-instance v0, Lcom/android/nfc/NfcService$1;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3975
    new-instance v0, Lcom/android/nfc/NfcService$2;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 4000
    new-instance v0, Lcom/android/nfc/NfcService$3;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 4028
    new-instance v0, Lcom/android/nfc/NfcService$4;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$4;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 4040
    new-instance v0, Lcom/android/nfc/NfcService$5;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$5;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 578
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, v1, Lcom/android/nfc/NfcService;->mUserId:I

    .line 579
    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 581
    new-instance v0, Lcom/android/nfc/NfcService$TagService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 582
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 583
    new-instance v0, Lcom/android/nfc/RoutingTableParser;

    invoke-direct {v0}, Lcom/android/nfc/RoutingTableParser;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mRoutingTableParser:Lcom/android/nfc/RoutingTableParser;

    .line 584
    new-instance v0, Lcom/android/nfc/NfcService$SecNfcAdapterService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$SecNfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSecNfcAdapter:Lcom/android/nfc/NfcService$SecNfcAdapterService;

    .line 585
    const-string v5, "NfcService"

    const-string v0, "Starting NFC service"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    sput-object v1, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 590
    const-string v0, "ro.mot.NfcEnabled"

    const/4 v6, 0x1

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->sNfcOnOob:Z

    .line 593
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    iget-object v7, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 594
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 595
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager;

    iget-object v7, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v1}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 597
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 599
    new-instance v0, Lcom/android/nfc/handover/HandoverDataParser;

    invoke-direct {v0}, Lcom/android/nfc/handover/HandoverDataParser;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 600
    const/4 v7, 0x0

    .line 602
    .local v7, "isNfcProvisioningEnabled":Z
    :try_start_0
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f050004

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    .line 605
    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 607
    :goto_0
    if-eqz v7, :cond_1

    .line 608
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "device_provisioned"

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    goto :goto_1

    :cond_0
    move v0, v3

    :goto_1
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto :goto_2

    .line 611
    :cond_1
    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 614
    :goto_2
    iget-boolean v0, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mStartedInProvisionMode:Z

    .line 616
    new-instance v0, Lcom/android/nfc/NfcDispatcher;

    iget-object v8, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-boolean v10, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-direct {v0, v8, v9, v10}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 619
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcMetrics;->setContext(Landroid/content/Context;)V

    .line 622
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v8, "NfcServicePrefs"

    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 623
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 625
    iput v6, v1, Lcom/android/nfc/NfcService;->mState:I

    .line 626
    iput v6, v1, Lcom/android/nfc/NfcService;->mAlwaysOnState:I

    .line 628
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "userdebug"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move v0, v3

    goto :goto_4

    :cond_3
    :goto_3
    move v0, v6

    :goto_4
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 630
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 632
    const-string v8, "NfcService:mRoutingWakeLock"

    invoke-virtual {v0, v6, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 635
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const v8, 0x3000000a

    const-string v9, "NfcService:mRequireUnlockWakeLock"

    invoke-virtual {v0, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mRequireUnlockWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 639
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 640
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    .line 641
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    .line 642
    const-wide/16 v8, 0xc8

    invoke-static {v8, v9, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 644
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    iput v0, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 646
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 647
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 648
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 650
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v2, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 653
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 654
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 657
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    const-string v0, "com.android.nfc.action.NOTIF_AVAILABLE_CLEARED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    const-string v0, "com.android.nfc.action.NOTIF_ENABLED_CLEARED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    iget-object v8, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v2

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 666
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v14, v0

    .line 667
    .local v14, "managedProfileFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 671
    iget-object v8, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v11, v14

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 674
    new-instance v0, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, "ownerFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    iget-object v15, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v8

    move-object/from16 v18, v0

    invoke-virtual/range {v15 .. v20}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 679
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 680
    .end local v0    # "ownerFilter":Landroid/content/IntentFilter;
    .local v8, "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 683
    iget-object v15, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    move-object/from16 v18, v8

    invoke-virtual/range {v15 .. v20}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 690
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 703
    nop

    .line 704
    const-string v0, "android.hardware.nfc.hce"

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v10, "android.hardware.nfc.hcef"

    if-nez v0, :cond_7

    .line 705
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v3

    goto :goto_7

    :cond_7
    :goto_6
    move v0, v6

    :goto_7
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 706
    nop

    .line 707
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceFCapable:Z

    .line 708
    iget-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_8

    .line 709
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 711
    :cond_8
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 713
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->deviceSupportsNfcSecure()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsSecureNfcCapable:Z

    .line 714
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 715
    const-string v10, "secure_nfc_on"

    invoke-interface {v0, v10, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsSecureNfcCapable:Z

    if-eqz v0, :cond_9

    move v0, v6

    goto :goto_8

    :cond_9
    move v0, v3

    :goto_8
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    .line 717
    iget-object v10, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v10, v0}, Lcom/android/nfc/DeviceHost;->setNfcSecure(Z)Z

    .line 719
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 720
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f0a004d

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/nfc/NfcService;->sToast_debounce_time_ms:I

    .line 721
    const/16 v10, 0x2710

    if-le v0, v10, :cond_a

    .line 722
    sput v10, Lcom/android/nfc/NfcService;->sToast_debounce_time_ms:I

    .line 726
    :cond_a
    sput v3, Lcom/android/nfc/NfcService;->mDispatchFailedCount:I

    .line 727
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f050002

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 728
    const-string v10, "antenna_blocked_message_shown"

    invoke-interface {v0, v10, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 729
    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mAntennaBlockedMessageShown:Z

    .line 730
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 731
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f0a0035

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/nfc/NfcService;->mDispatchFailedMax:I

    goto :goto_9

    .line 733
    :cond_b
    iput-boolean v6, v1, Lcom/android/nfc/NfcService;->mAntennaBlockedMessageShown:Z

    .line 737
    :goto_9
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f0a004e

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/nfc/NfcService;->mPollDelay:I

    .line 738
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f050006

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mNotifyDispatchFailed:Z

    .line 739
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f050007

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mNotifyReadFailed:Z

    .line 741
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f05000b

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mPollingDisableAllowed:Z

    .line 744
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    const-string v10, "nfc"

    invoke-static {v10, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 745
    new-instance v0, Lcom/android/nfc/SecureElementManager;

    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/android/nfc/SecureElementManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSecureElementManager:Lcom/android/nfc/SecureElementManager;

    .line 747
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 748
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f050009

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsAlwaysOnSupported:Z

    .line 750
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v3

    invoke-virtual {v0, v6}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 752
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v3, 0xf

    const-wide/32 v10, 0xdbba00

    invoke-virtual {v0, v3, v10, v11}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 754
    const-string v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v3

    .line 756
    .local v3, "mVrManager":Landroid/service/vr/IVrManager;
    if-eqz v3, :cond_c

    .line 758
    :try_start_1
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v3, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 759
    invoke-interface {v3}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsVrModeEnabled:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 762
    goto :goto_a

    .line 760
    :catch_1
    move-exception v0

    .line 761
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to register VR mode state listener: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_c
    :goto_a
    const-string v0, "secure_element"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    .line 766
    return-void
.end method

.method private StopPresenceChecking()V
    .locals 6

    .line 2766
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2767
    .local v0, "objectValues":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2768
    .local v3, "object":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v4, :cond_0

    .line 2769
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2770
    .local v4, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    move-object v5, v3

    check-cast v5, Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$TagEndpoint;->stopPresenceChecking()V

    .line 2767
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2773
    :cond_1
    return-void
.end method

.method private computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 6
    .param p1, "screenState"    # I

    .line 2705
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    move-result-object v0

    .line 2707
    .local v0, "paramsBuilder":Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-lt p1, v2, :cond_7

    .line 2709
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v5, :cond_6

    .line 2710
    const/4 v1, 0x0

    .line 2711
    .local v1, "techMask":I
    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_0

    .line 2712
    or-int/lit8 v1, v1, 0x1

    .line 2713
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 2714
    or-int/lit8 v1, v1, 0x2

    .line 2715
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_2

    .line 2716
    or-int/lit8 v1, v1, 0x4

    .line 2717
    :cond_2
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    .line 2718
    or-int/lit8 v1, v1, 0x8

    .line 2719
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 2720
    or-int/lit8 v1, v1, 0x20

    .line 2722
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2723
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2724
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 2725
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2727
    .end local v1    # "techMask":I
    :cond_5
    goto :goto_0

    .line 2728
    :cond_6
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2729
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 2731
    :cond_7
    if-ne p1, v4, :cond_8

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v2, :cond_8

    .line 2732
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2729
    # not needed?
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 2735
    :cond_8
    if-ne p1, v4, :cond_a

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 2736
    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2737
    const/4 v1, 0x0

    .line 2738
    .restart local v1    # "techMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2739
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 2740
    :cond_9
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2741
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2742
    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2748
    .end local v1    # "techMask":I
    :cond_a
    :goto_0
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_c

    sget v1, Lcom/android/nfc/NfcService;->nci_version:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_b

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-lt v1, v4, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-nez v1, :cond_c

    .line 2750
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2753
    :cond_c
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    return-object v1
.end method

.method private copyNativeCrashLogsIfAny(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4105
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/nfc/logs"

    const-string v2, "native_crash_logs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4106
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4107
    return-void

    .line 4109
    :cond_0
    const-string v1, "---BEGIN: NATIVE CRASH LOG----"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4110
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 4111
    .local v1, "sc":Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4112
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 4113
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4114
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 4115
    :cond_1
    const-string v2, "---END: NATIVE CRASH LOG----"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4116
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4119
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "sc":Ljava/util/Scanner;
    goto :goto_1

    .line 4117
    :catch_0
    move-exception v0

    .line 4118
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in copyNativeCrashLogsIfAny "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 4221
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-static {v0}, Lcom/android/nfc/NfcService;->stateToProtoEnum(I)I

    move-result v0

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4222
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v0, 0x0

    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4224
    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 4225
    invoke-static {v0}, Lcom/android/nfc/ScreenStateHelper;->screenStateToProtoEnum(I)I

    move-result v0

    .line 4224
    const-wide v1, 0x10e00000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4226
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4227
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    const-wide v1, 0x10800000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4228
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-wide v1, 0x10500000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4229
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-wide v1, 0x10500000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4230
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-wide v1, 0x10500000009L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4231
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    const-wide v1, 0x1080000000aL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4232
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceFCapable:Z

    const-wide v1, 0x1080000000bL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v0, 0x0

    const-wide v1, 0x1080000000cL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4234
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsSecureNfcCapable:Z

    const-wide v1, 0x1080000000dL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4235
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsVrModeEnabled:Z

    const-wide v1, 0x1080000000eL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4237
    const-wide v0, 0x10b0000000fL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4238
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 4239
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const/4 v2, 0x0

    .line 4247
    :cond_0
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_1

    .line 4248
    const-wide v2, 0x10b00000011L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4249
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 4250
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4253
    :cond_1
    const-wide v2, 0x10b00000012L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4254
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcDispatcher;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 4255
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4258
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/nfc/logs"

    const-string v4, "native_crash_logs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4259
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4260
    return-void

    .line 4263
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v3

    const-string v4, "\n"

    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4264
    .local v3, "logs":Ljava/lang/String;
    const-wide v4, 0x10900000013L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4267
    .end local v3    # "logs":Ljava/lang/String;
    goto :goto_0

    .line 4265
    :catch_0
    move-exception v3

    .line 4266
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException in dumpDebug(ProtoOutputStream): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NfcService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .locals 1

    .line 455
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method private getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 2902
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2903
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2904
    invoke-static {p2}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2905
    invoke-static {p3}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2906
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    new-array v1, v1, [B

    .line 2907
    .local v1, "t3tIdBytes":[B
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2908
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2910
    return-object v1
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 2641
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2642
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2643
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2645
    add-int/lit8 v0, v0, 0x1

    .line 2647
    :cond_1
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 2648
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2649
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 2650
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 2648
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2652
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 2641
    .end local v0    # "len":I
    .end local v1    # "data":[B
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isSEServiceAvailable()Z
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    if-nez v0, :cond_0

    .line 770
    const-string v0, "secure_element"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTagPresent()Z
    .locals 3

    .line 2757
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2758
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v2, :cond_0

    .line 2759
    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v0

    return v0

    .line 2761
    .end local v1    # "object":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 2762
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setPaymentForegroundPreference(I)V
    .locals 4
    .param p1, "user"    # I

    .line 4051
    const-string v0, "nfc_payment_foreground"

    sget-boolean v1, Landroid/os/Build;->IS_PRC_PRODUCT:Z

    if-nez v1, :cond_0

    .line 4054
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4062
    goto :goto_0

    .line 4056
    :catch_0
    move-exception v1

    .line 4057
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 4058
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 4059
    .local v2, "foregroundPreference":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4060
    nop

    .line 4059
    invoke-static {v3, v0, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set NFC_PAYMENT_FOREGROUND preference:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NfcService"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v2    # "foregroundPreference":Z
    :cond_0
    :goto_0
    return-void
.end method

.method static stateToProtoEnum(I)I
    .locals 1
    .param p0, "state"    # I

    .line 4085
    packed-switch p0, :pswitch_data_0

    .line 4095
    const/4 v0, 0x0

    return v0

    .line 4093
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 4091
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 4089
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 4087
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 4070
    packed-switch p0, :pswitch_data_0

    .line 4080
    const-string v0, "<error>"

    return-object v0

    .line 4078
    :pswitch_0
    const-string v0, "turning off"

    return-object v0

    .line 4076
    :pswitch_1
    const-string v0, "on"

    return-object v0

    .line 4074
    :pswitch_2
    const-string v0, "turning on"

    return-object v0

    .line 4072
    :pswitch_3
    const-string v0, "off"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private storeNativeCrashLogs()V
    .locals 8

    .line 4123
    const-string v0, "Exception in storeNativeCrashLogs: file close "

    const-string v1, "NfcService"

    const/4 v2, 0x0

    .line 4125
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/nfc/logs"

    const-string v5, "native_crash_logs"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4126
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 4127
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 4130
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v4

    .line 4131
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost;->dump(Ljava/io/FileDescriptor;)V

    .line 4132
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4136
    .end local v3    # "file":Ljava/io/File;
    nop

    .line 4138
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4141
    :goto_0
    goto :goto_2

    .line 4139
    :catch_0
    move-exception v3

    .line 4140
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 4136
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 4133
    :catch_1
    move-exception v3

    .line 4134
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in storeNativeCrashLogs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4136
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 4138
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 4139
    :catch_2
    move-exception v3

    .line 4140
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 4144
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 4136
    :goto_3
    if-eqz v2, :cond_2

    .line 4138
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 4141
    goto :goto_4

    .line 4139
    :catch_3
    move-exception v4

    .line 4140
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4143
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v3
.end method


# virtual methods
.method applyRouting(Z)V
    .locals 5
    .param p1, "force"    # Z

    .line 2659
    monitor-enter p0

    .line 2660
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2661
    monitor-exit p0

    return-void

    .line 2663
    :cond_0
    new-instance v0, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string v1, "applyRouting"

    const/16 v2, 0x2710

    invoke-direct {v0, p0, v1, v2}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 2664
    .local v0, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v1, :cond_2

    .line 2665
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 2667
    if-nez v3, :cond_2

    .line 2670
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 2675
    :cond_2
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2676
    const-string v1, "NfcService"

    const-string v2, "Not updating discovery parameters, tag connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2679
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 2683
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 2685
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    .line 2686
    .local v1, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 2695
    :cond_4
    const-string v2, "NfcService"

    const-string v3, "Discovery configuration equal, not updating."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2687
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2688
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v2}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    .line 2689
    .local v2, "shouldRestart":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 2690
    .end local v2    # "shouldRestart":Z
    goto :goto_1

    .line 2691
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 2693
    :goto_1
    iput-object v1, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2698
    .end local v1    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 2699
    nop

    .line 2700
    .end local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    monitor-exit p0

    .line 2701
    return-void

    .line 2698
    .restart local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 2699
    nop

    .end local p0    # "this":Lcom/android/nfc/NfcService;
    .end local p1    # "force":Z
    throw v1

    .line 2700
    .end local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    .restart local p0    # "this":Lcom/android/nfc/NfcService;
    .restart local p1    # "force":Z
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public clearT3tIdentifiersCache()V
    .locals 2

    .line 2928
    const-string v0, "NfcService"

    const-string v1, "clear T3t Identifiers Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->clearT3tIdentifiersCache()V

    .line 2930
    return-void
.end method

.method public commitRouting()V
    .locals 2

    .line 2937
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 2938
    return-void
.end method

.method public createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 2857
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 6
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 2865
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 2849
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method public deregisterT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 2921
    const-string v0, "NfcService"

    const-string v1, "request to deregister LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 2924
    .local v0, "t3tIdentifier":[B
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2925
    return-void
.end method

.method doFactoryRf()V
    .locals 3

    .line 3178
    const-string v0, "NfcService"

    const-string v1, "doFactoryRfCalibration do user calibration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "factory_mode"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3181
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->restartNfcService()V

    .line 3182
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4147
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump nfc from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4150
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4149
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4152
    return-void

    .line 4155
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p3, v1

    .line 4156
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4157
    const/4 v0, 0x0

    .line 4159
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v1

    .line 4160
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4161
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4162
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 4163
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4164
    :try_start_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4168
    .end local v1    # "proto":Landroid/util/proto/ProtoOutputStream;
    nop

    .line 4170
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4173
    :goto_1
    goto :goto_3

    .line 4171
    :catch_0
    move-exception v1

    .line 4172
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v5, "Exception in storeNativeCrashLogs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 4163
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "arg":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/nfc/NfcService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4168
    .end local v1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "arg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/nfc/NfcService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 4165
    :catch_1
    move-exception v1

    .line 4166
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in dump nfc --proto "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4168
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 4170
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 4171
    :catch_2
    move-exception v1

    .line 4172
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 4176
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-void

    .line 4168
    :goto_4
    if-eqz v0, :cond_2

    .line 4170
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 4173
    goto :goto_5

    .line 4171
    :catch_3
    move-exception v3

    .line 4172
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in storeNativeCrashLogs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    throw v1

    .line 4155
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "arg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 4180
    :cond_4
    monitor-enter p0

    .line 4181
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAlwaysOnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mAlwaysOnState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsZeroClickRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSecureNfcEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAlwaysOnSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAlwaysOnSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4187
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4191
    :cond_5
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_6

    .line 4192
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4194
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4195
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 4196
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingTableParser:Lcom/android/nfc/RoutingTableParser;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-virtual {v0, v2, p2}, Lcom/android/nfc/RoutingTableParser;->dump(Lcom/android/nfc/DeviceHost;Ljava/io/PrintWriter;)V

    .line 4198
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService;->copyNativeCrashLogsIfAny(Ljava/io/PrintWriter;)V

    .line 4199
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4202
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    if-ne v0, v1, :cond_8

    .line 4203
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->dump(Ljava/io/FileDescriptor;)V

    goto :goto_6

    .line 4205
    :cond_8
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "NfcService"

    const-string v1, "Device state is off, so we won\'t do dump."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    :cond_9
    :goto_6
    monitor-exit p0

    .line 4209
    return-void

    .line 4208
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method

.method findAndRemoveObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "handle"    # I

    .line 2821
    monitor-enter p0

    .line 2822
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2823
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2824
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2826
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2828
    :goto_0
    monitor-exit p0

    return-object v0

    .line 2829
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method findObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .line 2811
    monitor-enter p0

    .line 2812
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2813
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2814
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_0
    monitor-exit p0

    return-object v0

    .line 2817
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAidRoutingTableSize()I
    .locals 2

    .line 2870
    const/4 v0, 0x0

    .line 2871
    .local v0, "aidTableSize":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getAidTableSize()I

    move-result v0

    .line 2872
    return v0
.end method

.method public getDefaultRoute()I
    .locals 3

    .line 2974
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_route"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2975
    .local v0, "defaultRoute":I
    if-ne v0, v2, :cond_0

    .line 2976
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultRoute()I

    move-result v0

    .line 2978
    :cond_0
    return v0
.end method

.method getFactoryRf()[B
    .locals 9

    .line 3147
    const-string v0, "NfcService"

    const-string v1, "getFactoryRf..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "factory_mode"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3149
    .local v1, "factoryMode":I
    const/4 v4, 0x0

    .line 3150
    .local v4, "wait_cnt":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v5

    const-string v6, "InterruptedException"

    const/4 v7, 0x3

    if-nez v5, :cond_1

    if-eq v3, v1, :cond_1

    if-eq v1, v7, :cond_1

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "wait_cnt":I
    .local v5, "wait_cnt":I
    const/16 v8, 0x14

    if-ge v4, v8, :cond_0

    .line 3153
    const-wide/16 v7, 0xc8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3156
    goto :goto_1

    .line 3154
    :catch_0
    move-exception v4

    .line 3155
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-static {v0, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3157
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v4, v5

    goto :goto_0

    .line 3150
    :cond_0
    move v4, v5

    .line 3159
    .end local v5    # "wait_cnt":I
    .local v4, "wait_cnt":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 3160
    const-string v2, "NFC needs to be enabled to get calibration result!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    return-object v3

    .line 3163
    :cond_2
    if-eq v1, v7, :cond_3

    .line 3164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Factory calibration not performed yet.factoryMode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    return-object v3

    .line 3168
    :cond_3
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3171
    goto :goto_2

    .line 3169
    :catch_1
    move-exception v2

    .line 3170
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {v0, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3172
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost;->doSetFactoryTestMode(B)[B

    move-result-object v2

    .line 3173
    .local v2, "result":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFactoryRf="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_4

    array-length v5, v2

    goto :goto_3

    :cond_4
    const/4 v5, -0x1

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    return-object v2
.end method

.method public getLfT3tMax()I
    .locals 1

    .line 2933
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getLfT3tMax()I

    move-result v0

    return v0
.end method

.method getListenTechMask()I
    .locals 1

    .line 3126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doGetListenTechMask()I

    move-result v0

    return v0
.end method

.method public getNciVersion()I
    .locals 1

    .line 2898
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getNciVersion()I

    move-result v0

    return v0
.end method

.method public getNfaStorageDir()Ljava/lang/String;
    .locals 1

    .line 4100
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getNfaStorageDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSimSlot()I
    .locals 3

    .line 3020
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "preferred_sim"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSecureElementList()[I
    .locals 1

    .line 3053
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getUserId()I
    .locals 1

    monitor-enter p0

    .line 1434
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1434
    .end local p0    # "this":Lcom/android/nfc/NfcService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initSoundPool()V
    .locals 4

    .line 777
    monitor-enter p0

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 779
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 780
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xd

    .line 783
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/4 v3, 0x4

    .line 784
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 785
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 781
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 787
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0002

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 788
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f0f0000

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 789
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0001

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    .line 791
    :cond_0
    monitor-exit p0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabled()Z
    .locals 2

    .line 2592
    monitor-enter p0

    .line 2593
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 2594
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .locals 2

    .line 2586
    monitor-enter p0

    .line 2587
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 2588
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isRestartToSwitchSim()Z
    .locals 5

    .line 3058
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    const-string v1, "NfcService"

    if-eqz v0, :cond_0

    const-string v2, "isRestartToSwitchSim"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 3060
    if-eqz v0, :cond_1

    const-string v0, "Default route is not a UICC, do nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    :cond_1
    return v4

    .line 3063
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getSimDetection()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mSecureElementManager:Lcom/android/nfc/SecureElementManager;

    .line 3064
    invoke-virtual {v2}, Lcom/android/nfc/SecureElementManager;->isSupportAutoSwitch()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mSecureElementManager:Lcom/android/nfc/SecureElementManager;

    .line 3065
    invoke-virtual {v2}, Lcom/android/nfc/SecureElementManager;->isSupportDualSim()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3066
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mSecureElementManager:Lcom/android/nfc/SecureElementManager;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getPreferredSimSlot()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/SecureElementManager;->simAutoSelectionCheck(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3067
    if-eqz v0, :cond_3

    const-string v0, "need to restart service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 3070
    :cond_4
    if-eqz v0, :cond_5

    const-string v0, "don\'t need to restart service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_5
    return v4

    .line 3074
    :cond_6
    return v4
.end method

.method public isSecureNfcEnabled()Z
    .locals 1

    .line 1463
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    return v0
.end method

.method public isWaitForRestarting()Z
    .locals 1

    .line 3091
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsWaitForRestart:Z

    return v0
.end method

.method maybeDisconnectTarget()V
    .locals 7

    .line 2779
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2780
    return-void

    .line 2783
    :cond_0
    monitor-enter p0

    .line 2784
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2787
    .local v0, "objectValues":[Ljava/lang/Object;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 2788
    .local v1, "objectsToDisconnect":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2789
    .end local v0    # "objectValues":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2790
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, v1, v2

    .line 2791
    .local v3, "o":Ljava/lang/Object;
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnecting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    :cond_1
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v4, :cond_2

    .line 2794
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2795
    .local v4, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .end local v4    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    goto :goto_1

    .line 2796
    :cond_2
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v4, :cond_3

    .line 2798
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 2799
    .local v4, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v5

    if-nez v5, :cond_4

    .line 2801
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_2

    .line 2796
    .end local v4    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    :cond_3
    :goto_1
    nop

    .line 2790
    .end local v3    # "o":Ljava/lang/Object;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2808
    :cond_5
    return-void

    .line 2789
    .end local v1    # "objectsToDisconnect":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onEeActionProtocolEvent(IILjava/lang/String;)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "protocol"    # I
    .param p3, "evtBuffer"    # Ljava/lang/String;

    .line 541
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 542
    .local v0, "eeActInfo":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ee action ntf.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void
.end method

.method public onEeUpdated()V
    .locals 2

    .line 556
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 557
    return-void
.end method

.method public onHostCardEmulationActivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 468
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated(I)V

    .line 471
    :cond_0
    return-void
.end method

.method public onHostCardEmulationData(I[B)V
    .locals 1
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .line 475
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationData(I[B)V

    .line 478
    :cond_0
    return-void
.end method

.method public onHostCardEmulationDeactivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 482
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 485
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated(I)V

    .line 487
    :cond_0
    return-void
.end method

.method public onHwErrorReported()V
    .locals 5

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregisterScreenState BroadCastReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsRecovering:Z

    .line 567
    new-instance v1, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v2, v0, [Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 568
    new-instance v1, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v2, v0, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 569
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    return-void
.end method

.method public onNfcTransactionEvent([B[BLjava/lang/String;)V
    .locals 4
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "seName"    # Ljava/lang/String;

    .line 548
    const/4 v0, 0x3

    new-array v1, v0, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 549
    .local v1, "dataObj":[[B
    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 550
    const/16 v2, 0x89

    invoke-static {v2, v0, p3}, Lcom/android/nfc/NfcStatsLog;->write(IILjava/lang/String;)V

    .line 552
    return-void
.end method

.method public onPreferredPaymentChanged(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 2945
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2946
    return-void
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 461
    return-void
.end method

.method public onRemoteFieldActivated()V
    .locals 2

    .line 519
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 520
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .locals 2

    .line 524
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 525
    return-void
.end method

.method public onSeListenActivated()V
    .locals 2

    .line 529
    const-string v0, "NfcService"

    const-string v1, "se listen activated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void
.end method

.method public onSeListenDeactivated()V
    .locals 2

    .line 535
    const-string v0, "NfcService"

    const-string v1, "se listen deactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void
.end method

.method public playSound(I)V
    .locals 7
    .param p1, "sound"    # I

    .line 1409
    monitor-enter p0

    .line 1410
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1411
    const-string v0, "NfcService"

    const-string v1, "Not playing sound when NFC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    monitor-exit p0

    return-void

    .line 1415
    :cond_0
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsVrModeEnabled:Z

    if-eqz v1, :cond_1

    .line 1416
    const-string v0, "NfcService"

    const-string v1, "Not playing NFC sound when Vr Mode is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    monitor-exit p0

    return-void

    .line 1419
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1427
    :pswitch_0
    iget v1, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 1424
    :pswitch_1
    iget v1, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1425
    goto :goto_0

    .line 1421
    :pswitch_2
    iget v1, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1422
    nop

    .line 1430
    :goto_0
    monitor-exit p0

    .line 1431
    return-void

    .line 1430
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 2914
    const-string v0, "NfcService"

    const-string v1, "request to register LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 2917
    .local v0, "t3tIdentifier":[B
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2918
    return-void
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 2
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2833
    monitor-enter p0

    .line 2834
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    monitor-exit p0

    .line 2836
    return-void

    .line 2835
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseSoundPool()V
    .locals 1

    .line 795
    monitor-enter p0

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 800
    :cond_0
    monitor-exit p0

    .line 801
    return-void

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAidMessages()V
    .locals 2

    .line 3012
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "remove pending messages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 3014
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 3015
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 3016
    return-void
.end method

.method public restartNfcService()V
    .locals 4

    .line 3037
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    const-string v1, "NfcService"

    if-eqz v0, :cond_0

    const-string v2, "restartNfcService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    :cond_0
    iget v2, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 3040
    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "Restart NFC due to SIM state change"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    :cond_2
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3043
    :cond_3
    return-void
.end method

.method public routeAids(Ljava/lang/String;III)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I
    .param p3, "aidInfo"    # I
    .param p4, "power"    # I

    .line 2880
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2881
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2882
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2883
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2884
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 2886
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2887
    .local v1, "aidPowerState":Landroid/os/Bundle;
    const-string v2, "power"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2888
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2890
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2891
    return-void
.end method

.method saveNfcOnSetting(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 1401
    monitor-enter p0

    .line 1402
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1403
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1404
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1405
    monitor-exit p0

    .line 1406
    return-void

    .line 1405
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendData([B)Z
    .locals 1
    .param p1, "data"    # [B

    .line 2941
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result v0

    return v0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 2949
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2950
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2951
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2952
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2953
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .line 2876
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2877
    return-void
.end method

.method public sendRequireUnlockIntent()V
    .locals 2

    .line 2959
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsRequestUnlockShowed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2960
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "Request unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsRequestUnlockShowed:Z

    .line 2962
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRequireUnlockWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2963
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.REQUIRE_UNLOCK_FOR_NFC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2965
    .local v0, "requireUnlockIntent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2966
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2967
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mRequireUnlockWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2969
    .end local v0    # "requireUnlockIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setDefaultRoute(IZ)Z
    .locals 4
    .param p1, "defaultRoute"    # I
    .param p2, "restart"    # Z

    .line 2983
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultRoute route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 2988
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2989
    monitor-enter p0

    .line 2990
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, p1, p2}, Lcom/android/nfc/DeviceHost;->setDefaultRoute(IZ)Z

    .line 2991
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2996
    if-eqz p2, :cond_1

    .line 2997
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "default_route"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2998
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3000
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3001
    const-string v1, "NfcService"

    const-string v2, "NFC needs to be enabled to do setDefaultRoute"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    return v0

    .line 3004
    :cond_2
    monitor-enter p0

    .line 3005
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->setDefaultRoute(IZ)Z

    .line 3006
    monitor-exit p0

    .line 3007
    return v2

    .line 3006
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2991
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2993
    :cond_3
    const-string v0, "NfcService"

    const-string v1, "setDefaultRoute() called while NFC is not enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    return v2

    .line 2985
    :cond_4
    :goto_0
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultRoute invalid route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    return v0
.end method

.method public setFirmwareDebugLevel(IZ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "enable"    # Z

    .line 3101
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "setFirmwareDebugLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3103
    monitor-enter p0

    .line 3104
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->doSetFirmwareDebugLevel(IZ)V

    .line 3105
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3107
    :cond_1
    :goto_0
    return-void
.end method

.method setListenTechMask(I)Z
    .locals 4
    .param p1, "techMask"    # I

    .line 3130
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 3135
    :cond_0
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListenTechMask, value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3137
    const-string v1, "NfcService"

    const-string v2, "NFC needs to be enabled to do ListenTech"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    return v0

    .line 3140
    :cond_2
    monitor-enter p0

    .line 3141
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->doSetListenTechMask(I)V

    .line 3142
    monitor-exit p0

    .line 3143
    const/4 v0, 0x1

    return v0

    .line 3142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3131
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid tech mask, value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :cond_4
    return v0
.end method

.method setPowerOffCardEmulation(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 3079
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "poweroff_ce"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3080
    .local v0, "current":Z
    const-string v2, "NfcService"

    if-ne v0, p1, :cond_1

    .line 3081
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "No need to update"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    :cond_0
    return-void

    .line 3084
    :cond_1
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPowerOffCardEmulation, enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3086
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3087
    return-void
.end method

.method public setPreferredSimSlot(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 3025
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "preferred_sim"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3026
    .local v0, "curSlot":I
    if-ne v0, p1, :cond_0

    .line 3027
    return-void

    .line 3030
    :cond_0
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredSimSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3032
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3033
    return-void
.end method

.method public setRfOptionFilePath(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 3110
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRfOptionFilePath, filepath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    :cond_0
    const/4 v0, 0x0

    .line 3113
    .local v0, "rfResult":Z
    if-nez p1, :cond_1

    .line 3114
    const-string v1, "NfcService"

    const-string v2, "checkFileExists,file does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    const/4 v1, 0x0

    return v1

    .line 3117
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3118
    monitor-enter p0

    .line 3119
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost;->doRFoptionUpdate([B)Z

    move-result v1

    move v0, v1

    .line 3120
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3122
    :cond_2
    :goto_0
    return v0
.end method

.method public setWaitForRestarting(Z)V
    .locals 2
    .param p1, "isWait"    # Z

    .line 3095
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWaitForRestarting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    :cond_0
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mIsWaitForRestart:Z

    .line 3097
    return-void
.end method

.method unregisterObject(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 2839
    monitor-enter p0

    .line 2840
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2841
    monitor-exit p0

    .line 2842
    return-void

    .line 2841
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unrouteAids(Ljava/lang/String;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .line 2894
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2895
    return-void
.end method

.method updatePackageCache()V
    .locals 12

    .line 804
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 805
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 804
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    .line 806
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 807
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v1

    .line 809
    .local v1, "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    monitor-enter p0

    .line 810
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 811
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcPreferredPaymentChangedInstalledPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 812
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 813
    .local v4, "uh":Landroid/os/UserHandle;
    invoke-virtual {v0, v4}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_0

    .line 817
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    .local v5, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 823
    :try_start_2
    const-string v6, "android.permission.NFC_TRANSACTION_EVENT"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 826
    .local v6, "packagesNfcEvents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v8, "android.permission.NFC_PREFERRED_PAYMENT_INFO"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    .line 827
    invoke-virtual {v5, v8, v7}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 830
    .local v7, "packagesNfcPreferredPaymentChanged":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v8, "packageListNfcEvent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 832
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 834
    .end local v9    # "i":I
    :cond_1
    iget-object v9, p0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v9, "packageListNfcPreferredPaymentChanged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 838
    nop

    .line 839
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 838
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 841
    .end local v10    # "i":I
    :cond_2
    iget-object v10, p0, Lcom/android/nfc/NfcService;->mNfcPreferredPaymentChangedInstalledPackages:Ljava/util/HashMap;

    .line 842
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 841
    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    nop

    .end local v4    # "uh":Landroid/os/UserHandle;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "packagesNfcEvents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "packagesNfcPreferredPaymentChanged":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "packageListNfcEvent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "packageListNfcPreferredPaymentChanged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 818
    .restart local v4    # "uh":Landroid/os/UserHandle;
    :catch_0
    move-exception v5

    .line 819
    .local v5, "e":Ljava/lang/IllegalStateException;
    const-string v6, "NfcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to get PackageManager for user: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    goto/16 :goto_0

    .line 844
    .end local v4    # "uh":Landroid/os/UserHandle;
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    monitor-exit p0

    .line 845
    return-void

    .line 844
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public waitNfcEeDiscovery(Z)V
    .locals 2
    .param p1, "isWait"    # Z

    .line 3047
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "Set to wait NFC EE discovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->doSetWaitNfcEeDiscovery(Z)V

    .line 3049
    return-void
.end method
