.class public Lcom/car/launchercommon/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"

# interfaces
.implements Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/BaseApplication$CustomException;,
        Lcom/car/launchercommon/BaseApplication$StorageReceiver;,
        Lcom/car/launchercommon/BaseApplication$MusicStateChangedListener;,
        Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;,
        Lcom/car/launchercommon/BaseApplication$AppListChangedListener;,
        Lcom/car/launchercommon/BaseApplication$MyHandler;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE:I = 0x1

.field private static final BTDEV_CONNECTED_NOFITY:Ljava/lang/String; = "com.car.bthpone.connected.notify"

.field private static final BTDEV_EXTRA:Ljava/lang/String; = "connected"

.field private static final CONFIG:Ljava/lang/String; = "gps_config"

.field private static final CONFIG_GPS_DEFAULT:Ljava/lang/String; = "config_gps_default"

.field public static final FM:Ljava/lang/String; = "fm_enable"

.field public static final FM_FREQ:Ljava/lang/String; = "fm_freq"

.field private static HIDE_APPS:[Ljava/lang/String; = null

.field private static IS_CTA:Z = false

.field private static MUSIC_EQUALS_ALARM:Z = false

.field public static final TAG:Ljava/lang/String; = "LC.BaseApplication"

.field private static final TAKE_FRONT_PICTURE_COMPLETE:I = 0x2

.field public static VOICE_ENGINE_ID:I = 0x0

.field private static final WIFI_SIGNAL_STRENGTH:[I

.field private static instance:Lcom/car/launchercommon/BaseApplication; = null

.field private static mCameraService:Lcom/car/common/CameraServiceImpl; = null

.field static mCarServiceImpl:Lcom/car/common/CarServiceImpl; = null

.field private static sIsScreenLarge:Z = false

.field private static sScreenDensity:F = 0.0f

.field private static final sSharedPreferencesKey:Ljava/lang/String; = "com.android.launcher2.prefs"


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/BaseApplication$AppListChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field public mIconCache:Lcom/car/launchercommon/localapp/IconCache;

.field private volatile mInTakePicture:Z

.field private mLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/car/launchercommon/localapp/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field public mModel:Lcom/car/launchercommon/localapp/LauncherModel;

.field private mNomediaInDvrFolder:Z

.field private mRunnableUpdateGpsState:Ljava/lang/Runnable;

.field private mStorageReceiver:Lcom/car/launchercommon/BaseApplication$StorageReceiver;

.field private mSysStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSysStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiConnected:Z

.field private mWifiEnabled:Z

.field private mWifiIconId:I

.field private mWifiLevel:I

.field private mWifiRssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "persist.vol.music.equals.alarm"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/launchercommon/BaseApplication;->MUSIC_EQUALS_ALARM:Z

    const-string v0, "ro.cta"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/car/launchercommon/BaseApplication;->IS_CTA:Z

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v0

    sput v0, Lcom/car/launchercommon/BaseApplication;->VOICE_ENGINE_ID:I

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.android.music.MusicBrowserActivity"

    aput-object v3, v0, v2

    const-string v3, "cn.kuwo.kwmusiccar.WelcomeActivity"

    aput-object v3, v0, v1

    const-string v3, "com.car.dvr.CameraActivity"

    aput-object v3, v0, v5

    const-string v3, "com.android.contacts.activities.PeopleActivity"

    aput-object v3, v0, v6

    const-string v3, "com.android.settings.Settings"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "com.aispeech.aios.MainActivity"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "com.car.gpstest.YgpsActivity"

    aput-object v4, v0, v3

    sput-object v0, Lcom/car/launchercommon/BaseApplication;->HIDE_APPS:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v3, Lcom/car/launchercommon/R$drawable;->stat_sys_wifi_signal_0_fully:I

    aput v3, v0, v2

    sget v2, Lcom/car/launchercommon/R$drawable;->stat_sys_wifi_signal_1_fully:I

    aput v2, v0, v1

    sget v1, Lcom/car/launchercommon/R$drawable;->stat_sys_wifi_signal_2_fully:I

    aput v1, v0, v5

    sget v1, Lcom/car/launchercommon/R$drawable;->stat_sys_wifi_signal_3_fully:I

    aput v1, v0, v6

    sget v1, Lcom/car/launchercommon/R$drawable;->stat_sys_wifi_signal_4_fully:I

    aput v1, v0, v7

    sput-object v0, Lcom/car/launchercommon/BaseApplication;->WIFI_SIGNAL_STRENGTH:[I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/car/launchercommon/BaseApplication$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/car/launchercommon/BaseApplication$MyHandler;-><init>(Lcom/car/launchercommon/BaseApplication;Lcom/car/launchercommon/BaseApplication$1;)V

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mAppListChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/car/launchercommon/BaseApplication$StorageReceiver;

    invoke-direct {v0, p0, v1}, Lcom/car/launchercommon/BaseApplication$StorageReceiver;-><init>(Lcom/car/launchercommon/BaseApplication;Lcom/car/launchercommon/BaseApplication$1;)V

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mStorageReceiver:Lcom/car/launchercommon/BaseApplication$StorageReceiver;

    iput-boolean v2, p0, Lcom/car/launchercommon/BaseApplication;->mNomediaInDvrFolder:Z

    iput v2, p0, Lcom/car/launchercommon/BaseApplication;->mWifiIconId:I

    new-instance v0, Lcom/car/launchercommon/BaseApplication$2;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/BaseApplication$2;-><init>(Lcom/car/launchercommon/BaseApplication;)V

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mLocationListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/car/launchercommon/BaseApplication$4;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/BaseApplication$4;-><init>(Lcom/car/launchercommon/BaseApplication;)V

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/car/launchercommon/BaseApplication$5;

    iget-object v1, p0, Lcom/car/launchercommon/BaseApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/car/launchercommon/BaseApplication$5;-><init>(Lcom/car/launchercommon/BaseApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/car/launchercommon/BaseApplication$6;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/BaseApplication$6;-><init>(Lcom/car/launchercommon/BaseApplication;)V

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mRunnableUpdateGpsState:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/car/launchercommon/BaseApplication;->mInTakePicture:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/car/launchercommon/BaseApplication;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/BaseApplication;->updateWifiState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/car/launchercommon/BaseApplication;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/BaseApplication;->updateBtState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/car/launchercommon/BaseApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/BaseApplication;->updateMuteState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/car/launchercommon/BaseApplication;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mRunnableUpdateGpsState:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/car/launchercommon/BaseApplication;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/car/launchercommon/BaseApplication;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/BaseApplication;->updateGpsState(I)V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/car/launchercommon/BaseApplication;->IS_CTA:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/car/launchercommon/BaseApplication;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/car/launchercommon/BaseApplication;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/launchercommon/BaseApplication;->mInTakePicture:Z

    return p1
.end method

.method static synthetic access$200()Lcom/car/launchercommon/BaseApplication;
    .locals 1

    sget-object v0, Lcom/car/launchercommon/BaseApplication;->instance:Lcom/car/launchercommon/BaseApplication;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/launchercommon/BaseApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/BaseApplication;->updateFmState()V

    return-void
.end method

.method static synthetic access$400(Lcom/car/launchercommon/BaseApplication;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/launchercommon/BaseApplication;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/launchercommon/BaseApplication;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/launchercommon/BaseApplication;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/BaseApplication;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/car/launchercommon/BaseApplication;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/BaseApplication;->mNomediaInDvrFolder:Z

    return v0
.end method

.method static synthetic access$900(Lcom/car/launchercommon/BaseApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/BaseApplication;->createNomediaFileInDvrFolder()V

    return-void
.end method

.method private addAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/car/launchercommon/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v14, 0x0

    const-string v15, "ro.apps.white.list"

    const-string v16, ""

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ro.apps.white.list2"

    const-string v17, ""

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    const-string v15, "LC.BaseApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ro.apps.white.list="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    :cond_0
    const/4 v2, 0x0

    const-string v15, "ro.apps.black.list"

    const-string v16, ""

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ro.apps.black.list2"

    const-string v17, ""

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    const-string v15, "LC.BaseApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ro.apps.black.list="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/car/launchercommon/localapp/ApplicationInfo;

    iget-object v15, v7, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/car/launchercommon/BaseApplication;->isExisting(Landroid/content/ComponentName;)Z

    move-result v15

    if-nez v15, :cond_2

    iget-object v15, v7, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_2

    iget-object v15, v7, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    if-nez v15, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v15, v7, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v15, 0x1

    if-ne v4, v15, :cond_2

    :cond_4
    const/4 v8, 0x0

    sget-object v1, Lcom/car/launchercommon/BaseApplication;->HIDE_APPS:[Ljava/lang/String;

    array-length v10, v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v10, :cond_5

    aget-object v13, v1, v6

    iget-object v15, v7, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v8, 0x1

    :cond_5
    if-eqz v2, :cond_6

    move-object v1, v2

    array-length v10, v1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v10, :cond_6

    aget-object v13, v1, v6

    iget-object v15, v7, Lcom/car/launchercommon/localapp/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v8, 0x1

    :cond_6
    iget-object v15, v7, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "launcher"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    if-eqz v14, :cond_a

    move-object v1, v14

    array-length v10, v1

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v10, :cond_2

    aget-object v13, v1, v6

    iget-object v15, v7, Lcom/car/launchercommon/localapp/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    if-nez v8, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/BaseApplication;->mAppListChangedListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/launchercommon/BaseApplication;->mAppListChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/car/launchercommon/BaseApplication$AppListChangedListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    invoke-interface {v9, v15}, Lcom/car/launchercommon/BaseApplication$AppListChangedListener;->appListUpdated(Ljava/util/List;)V

    goto :goto_5

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    :cond_c
    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private createNomediaFileInDvrFolder()V
    .locals 4

    invoke-static {}, Lcom/car/common/CarPath;->init()V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/common/CarPath;->getDVRPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private findAppByPackage(Ljava/lang/String;)I
    .locals 4

    iget-object v3, p0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/localapp/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/car/launchercommon/localapp/ItemInfo;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getCameraService()Lcom/car/common/CameraServiceImpl;
    .locals 1

    sget-object v0, Lcom/car/launchercommon/BaseApplication;->mCameraService:Lcom/car/common/CameraServiceImpl;

    return-object v0
.end method

.method public static getCarService()Lcom/car/common/CarServiceImpl;
    .locals 1

    sget-object v0, Lcom/car/launchercommon/BaseApplication;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    return-object v0
.end method

.method public static getInstance()Lcom/car/launchercommon/BaseApplication;
    .locals 1

    sget-object v0, Lcom/car/launchercommon/BaseApplication;->instance:Lcom/car/launchercommon/BaseApplication;

    return-object v0
.end method

.method public static getScreenDensity()F
    .locals 1

    sget v0, Lcom/car/launchercommon/BaseApplication;->sScreenDensity:F

    return v0
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.launcher2.prefs"

    return-object v0
.end method

.method private isExisting(Landroid/content/ComponentName;)Z
    .locals 4

    iget-object v3, p0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/launchercommon/localapp/ApplicationInfo;

    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/car/launchercommon/localapp/ApplicationInfo;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, v2, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isScreenLandscape(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenLarge()Z
    .locals 1

    sget-boolean v0, Lcom/car/launchercommon/BaseApplication;->sIsScreenLarge:Z

    return v0
.end method

.method private removeAppsWithPackageNameInvalidate(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/car/launchercommon/BaseApplication;->findAppByPackage(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/car/launchercommon/BaseApplication;->mAppListChangedListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/car/launchercommon/BaseApplication;->mAppListChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/BaseApplication$AppListChangedListener;

    iget-object v4, p0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    invoke-interface {v1, v4}, Lcom/car/launchercommon/BaseApplication$AppListChangedListener;->appListUpdated(Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private setDefaultMapSys()V
    .locals 7

    const/4 v6, 0x0

    const-string v4, "gps_config"

    invoke-virtual {p0, v4, v6}, Lcom/car/launchercommon/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "config_gps_default"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    aget-object v1, v3, v6

    invoke-static {p0, v1}, Lcom/car/launchercommon/LaunchGpsActivity;->setDefaultMap(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static speechTips(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/car/launchercommon/BaseApplication;->speechTips(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static speechTips(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    return-void
.end method

.method private updateBtState(Landroid/content/Intent;)V
    .locals 9

    if-eqz p1, :cond_0

    const-string v6, "connected"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.car.bthpone.connected.notify"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/car/launchercommon/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v6, "connected"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v2, Lcom/car/launchercommon/R$drawable;->stat_bt_on:I

    :goto_1
    const-string v6, "LC.BaseApplication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateBtState:isConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, " "

    if-eqz v3, :cond_2

    const-string v6, "name"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    iget-object v7, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;

    invoke-interface {v4, v3, v5, v2}, Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;->btStateChanged(ZLjava/lang/String;I)V

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_3
    sget v2, Lcom/car/launchercommon/R$drawable;->stat_bt_off:I

    goto :goto_1

    :cond_4
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private updateFmState()V
    .locals 7

    invoke-virtual {p0}, Lcom/car/launchercommon/BaseApplication;->getFMEnable()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/car/launchercommon/BaseApplication;->getFMFreq()I

    move-result v1

    const-string v4, "LC.BaseApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFmState:isEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", freq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;

    invoke-interface {v3, v0, v1}, Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;->fmStateChanged(ZI)V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private updateGpsState(I)V
    .locals 4

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/launchercommon/BaseApplication;->mRunnableUpdateGpsState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/launchercommon/BaseApplication;->mRunnableUpdateGpsState:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateMuteState()V
    .locals 8

    const/4 v3, 0x0

    sget-boolean v5, Lcom/car/launchercommon/BaseApplication;->MUSIC_EQUALS_ALARM:Z

    if-eqz v5, :cond_2

    const/4 v4, 0x2

    :goto_0
    iget-object v5, p0, Lcom/car/launchercommon/BaseApplication;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v5, p0, Lcom/car/launchercommon/BaseApplication;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    const-string v5, "LC.BaseApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMuteState: mute="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;

    invoke-interface {v2, v3}, Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;->musicMuteStatChanged(Z)V

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private updateWifiIcons()V
    .locals 6

    iget-boolean v2, p0, Lcom/car/launchercommon/BaseApplication;->mWifiConnected:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/car/launchercommon/BaseApplication;->WIFI_SIGNAL_STRENGTH:[I

    iget v3, p0, Lcom/car/launchercommon/BaseApplication;->mWifiLevel:I

    aget v2, v2, v3

    iput v2, p0, Lcom/car/launchercommon/BaseApplication;->mWifiIconId:I

    :goto_0
    iget-object v3, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;

    iget-boolean v2, p0, Lcom/car/launchercommon/BaseApplication;->mWifiEnabled:Z

    const/4 v4, 0x0

    iget v5, p0, Lcom/car/launchercommon/BaseApplication;->mWifiIconId:I

    invoke-interface {v1, v2, v4, v5}, Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;->wifiStateChanged(ZLjava/lang/String;I)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    iget-boolean v2, p0, Lcom/car/launchercommon/BaseApplication;->mWifiEnabled:Z

    if-eqz v2, :cond_1

    const-string v2, "LC.BaseApplication"

    const-string v3, "=========mWifiEnabled==========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/car/launchercommon/R$drawable;->stat_sys_wifi_signal_null:I

    iput v2, p0, Lcom/car/launchercommon/BaseApplication;->mWifiIconId:I

    goto :goto_0

    :cond_1
    const-string v2, "LC.BaseApplication"

    const-string v3, "---------mWifiDisabled-----------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/car/launchercommon/BaseApplication;->mWifiIconId:I

    goto :goto_0

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_2

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/car/launchercommon/BaseApplication;->mWifiEnabled:Z

    const/4 v4, 0x1

    :cond_0
    :goto_1
    if-nez v4, :cond_1

    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    iput-boolean v7, p0, Lcom/car/launchercommon/BaseApplication;->mWifiConnected:Z

    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    if-ne v7, v11, :cond_6

    :goto_2
    iput-boolean v8, p0, Lcom/car/launchercommon/BaseApplication;->mWifiEnabled:Z

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    iput v7, p0, Lcom/car/launchercommon/BaseApplication;->mWifiRssi:I

    iget v7, p0, Lcom/car/launchercommon/BaseApplication;->mWifiRssi:I

    sget-object v8, Lcom/car/launchercommon/BaseApplication;->WIFI_SIGNAL_STRENGTH:[I

    array-length v8, v8

    invoke-static {v7, v8}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    iput v7, p0, Lcom/car/launchercommon/BaseApplication;->mWifiLevel:I

    :cond_1
    invoke-direct {p0}, Lcom/car/launchercommon/BaseApplication;->updateWifiIcons()V

    return-void

    :cond_2
    move v7, v9

    goto :goto_0

    :cond_3
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "networkInfo"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_3
    iput-boolean v7, p0, Lcom/car/launchercommon/BaseApplication;->mWifiConnected:Z

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    move v7, v9

    goto :goto_3

    :cond_5
    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "newRssi"

    const/16 v10, -0xc8

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/car/launchercommon/BaseApplication;->mWifiRssi:I

    iget v7, p0, Lcom/car/launchercommon/BaseApplication;->mWifiRssi:I

    sget-object v10, Lcom/car/launchercommon/BaseApplication;->WIFI_SIGNAL_STRENGTH:[I

    array-length v10, v10

    invoke-static {v7, v10}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    iput v7, p0, Lcom/car/launchercommon/BaseApplication;->mWifiLevel:I

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    move v8, v9

    goto :goto_2
.end method


# virtual methods
.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/car/launchercommon/BaseApplication$3;

    invoke-direct {v0, p0, p1}, Lcom/car/launchercommon/BaseApplication$3;-><init>(Lcom/car/launchercommon/BaseApplication;Ljava/util/ArrayList;)V

    const/16 v1, 0x384

    invoke-virtual {p0, v0, v1}, Lcom/car/launchercommon/BaseApplication;->runDelay(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/car/launchercommon/BaseApplication;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/car/launchercommon/BaseApplication;->removeAppsWithPackageNameInvalidate(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/car/launchercommon/BaseApplication;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    return-void
.end method

.method public bindPackagesUpdated()V
    .locals 0

    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 0

    return-void
.end method

.method public finishBindingItems()V
    .locals 0

    return-void
.end method

.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getFMEnable()I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/car/launchercommon/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fm_enable"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFMFreq()I
    .locals 3

    invoke-virtual {p0}, Lcom/car/launchercommon/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fm_freq"

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIconCache()Lcom/car/launchercommon/localapp/IconCache;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    return-object v0
.end method

.method public getLauncherProvider()Lcom/car/launchercommon/localapp/LauncherProvider;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/localapp/LauncherProvider;

    return-object v0
.end method

.method getModel()Lcom/car/launchercommon/localapp/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mModel:Lcom/car/launchercommon/localapp/LauncherModel;

    return-object v0
.end method

.method public getMusicTool()Lcom/car/launchercommon/MusicTool;
    .locals 2

    sget v0, Lcom/car/launchercommon/BaseApplication;->VOICE_ENGINE_ID:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/car/launchercommon/BaseApplication;->VOICE_ENGINE_ID:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "com.txznet.music"

    invoke-static {p0, v0}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/car/launchercommon/TXZMusic;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/TXZMusic;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "cn.kuwo.kwmusiccar"

    invoke-static {p0, v0}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/car/launchercommon/KuwoMusic;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/KuwoMusic;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.hongfans.rearview"

    invoke-static {p0, v0}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/car/launchercommon/CybMusic;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/CybMusic;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/car/launchercommon/SystemMusic;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/SystemMusic;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public hideDvrFilesInGallary()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/launchercommon/BaseApplication;->mNomediaInDvrFolder:Z

    invoke-direct {p0}, Lcom/car/launchercommon/BaseApplication;->createNomediaFileInDvrFolder()V

    return-void
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAllAppsVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 9

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-object p0, Lcom/car/launchercommon/BaseApplication;->instance:Lcom/car/launchercommon/BaseApplication;

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v2, "cn.kuwo.kwmusiccar"

    invoke-static {p0, v2}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.txznet.music"

    invoke-static {p0, v2}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.hongfans.rearview"

    invoke-static {p0, v2}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    move v8, v0

    :goto_0
    if-nez v8, :cond_1

    sget-object v2, Lcom/car/launchercommon/BaseApplication;->HIDE_APPS:[Ljava/lang/String;

    const-string v3, "xxx"

    aput-object v3, v2, v1

    :cond_1
    sget v2, Lcom/car/launchercommon/BaseApplication;->VOICE_ENGINE_ID:I

    if-eq v2, v4, :cond_2

    sget v2, Lcom/car/launchercommon/BaseApplication;->VOICE_ENGINE_ID:I

    if-eq v2, v5, :cond_2

    sget-object v2, Lcom/car/launchercommon/BaseApplication;->HIDE_APPS:[Ljava/lang/String;

    const-string v3, "com.txznet.music.ui.SplashActivity"

    aput-object v3, v2, v0

    :cond_2
    sget v2, Lcom/car/launchercommon/BaseApplication;->VOICE_ENGINE_ID:I

    if-eq v2, v4, :cond_3

    sget v2, Lcom/car/launchercommon/BaseApplication;->VOICE_ENGINE_ID:I

    if-ne v2, v5, :cond_4

    :cond_3
    const-string v2, "com.txznet.music"

    invoke-static {p0, v2}, Lcom/car/launchercommon/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/car/launchercommon/BaseApplication;->HIDE_APPS:[Ljava/lang/String;

    const-string v3, "xxx"

    aput-object v3, v2, v0

    :cond_4
    invoke-static {}, Lcom/car/launchercommon/BaseApplication$CustomException;->getInstance()Lcom/car/launchercommon/BaseApplication$CustomException;

    move-result-object v6

    invoke-virtual {p0}, Lcom/car/launchercommon/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/car/launchercommon/BaseApplication$CustomException;->init(Landroid/content/Context;)V

    sput-boolean v0, Lcom/car/launchercommon/BaseApplication;->sIsScreenLarge:Z

    invoke-virtual {p0}, Lcom/car/launchercommon/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/car/launchercommon/BaseApplication;->sScreenDensity:F

    new-instance v2, Lcom/car/launchercommon/localapp/IconCache;

    invoke-direct {v2, p0}, Lcom/car/launchercommon/localapp/IconCache;-><init>(Lcom/car/launchercommon/BaseApplication;)V

    iput-object v2, p0, Lcom/car/launchercommon/BaseApplication;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    new-instance v2, Lcom/car/launchercommon/localapp/LauncherModel;

    iget-object v3, p0, Lcom/car/launchercommon/BaseApplication;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    invoke-direct {v2, p0, v3}, Lcom/car/launchercommon/localapp/LauncherModel;-><init>(Lcom/car/launchercommon/BaseApplication;Lcom/car/launchercommon/localapp/IconCache;)V

    iput-object v2, p0, Lcom/car/launchercommon/BaseApplication;->mModel:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-virtual {p0, p0}, Lcom/car/launchercommon/BaseApplication;->setLauncher(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)Lcom/car/launchercommon/localapp/LauncherModel;

    move-result-object v2

    iput-object v2, p0, Lcom/car/launchercommon/BaseApplication;->mModel:Lcom/car/launchercommon/localapp/LauncherModel;

    iget-object v2, p0, Lcom/car/launchercommon/BaseApplication;->mModel:Lcom/car/launchercommon/localapp/LauncherModel;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lcom/car/launchercommon/localapp/LauncherModel;->startLoader(ZI)V

    new-instance v0, Lcom/car/common/TipPlayerHelper;

    invoke-direct {v0}, Lcom/car/common/TipPlayerHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/car/common/TipPlayerHelper;->init(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mAppList:Ljava/util/List;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/launchercommon/BaseApplication$1;

    invoke-direct {v2, p0}, Lcom/car/launchercommon/BaseApplication$1;-><init>(Lcom/car/launchercommon/BaseApplication;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mModel:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-virtual {p0, v0, v7}, Lcom/car/launchercommon/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mModel:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-virtual {p0, v0, v7}, Lcom/car/launchercommon/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mModel:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-virtual {p0, v0, v7}, Lcom/car/launchercommon/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mModel:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-virtual {p0, v0, v7}, Lcom/car/launchercommon/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mStorageReceiver:Lcom/car/launchercommon/BaseApplication$StorageReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/car/launchercommon/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.bthpone.connected.notify"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.syswakeup"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.satellites"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.voiceassitant.restart"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/car/launchercommon/BaseApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/car/launchercommon/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "fm_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/car/launchercommon/BaseApplication;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/car/launchercommon/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "fm_freq"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/car/launchercommon/BaseApplication;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/car/launchercommon/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/car/launchercommon/BaseApplication;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/car/launchercommon/BaseApplication;->setDefaultMapSys()V

    sget-boolean v0, Lcom/car/launchercommon/BaseApplication;->IS_CTA:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x1388

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/car/launchercommon/BaseApplication;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_5
    new-instance v0, Lcom/car/common/CarServiceImpl;

    invoke-direct {v0, p0}, Lcom/car/common/CarServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/car/launchercommon/BaseApplication;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    new-instance v0, Lcom/car/common/CameraServiceImpl;

    invoke-direct {v0, p0}, Lcom/car/common/CameraServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/car/launchercommon/BaseApplication;->mCameraService:Lcom/car/common/CameraServiceImpl;

    const-string v0, "LC.BaseApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MUSIC_EQUALS_ALARM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/car/launchercommon/BaseApplication;->MUSIC_EQUALS_ALARM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    move v8, v1

    goto/16 :goto_0
.end method

.method public onPageBoundSynchronously(I)V
    .locals 0

    return-void
.end method

.method public onTerminate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mModel:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/BaseApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mStorageReceiver:Lcom/car/launchercommon/BaseApplication$StorageReceiver;

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/BaseApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/BaseApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/car/launchercommon/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/BaseApplication;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerAppListChangedListener(Lcom/car/launchercommon/BaseApplication$AppListChangedListener;)V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mAppListChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerSysStateChangedListener(Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;)V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runDelay(Ljava/lang/Runnable;I)V
    .locals 4

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setLauncher(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)Lcom/car/launchercommon/localapp/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mModel:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/localapp/LauncherModel;->initialize(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mModel:Lcom/car/launchercommon/localapp/LauncherModel;

    return-object v0
.end method

.method public setLauncherProvider(Lcom/car/launchercommon/localapp/LauncherProvider;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mLauncherProvider:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setLoadOnResume()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startBinding()V
    .locals 0

    return-void
.end method

.method public takePictureAsync()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/car/launchercommon/BaseApplication;->mInTakePicture:Z

    if-eqz v2, :cond_0

    const-string v1, "LC.BaseApplication"

    const-string v2, "takePictureAsync: wait for previous takePicture to complete"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/car/launchercommon/Util;->isStorageMounted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "LC.BaseApplication"

    const-string v2, "takePictureAsync: no sdcard"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/car/launchercommon/R$string;->tip_insert_sdcard:I

    invoke-static {p0, v1}, Lcom/car/launchercommon/BaseApplication;->speechTips(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/car/launchercommon/BaseApplication;->mInTakePicture:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/car/launchercommon/BaseApplication$8;

    invoke-direct {v2, p0}, Lcom/car/launchercommon/BaseApplication$8;-><init>(Lcom/car/launchercommon/BaseApplication;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v0, v1

    goto :goto_0
.end method

.method public unregisterAppListChangedListener(Lcom/car/launchercommon/BaseApplication$AppListChangedListener;)V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mAppListChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterSysStateChangedListener(Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;)V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateSatellites(I)V
    .locals 4

    iget-object v3, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/car/launchercommon/BaseApplication;->mSysStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;

    invoke-interface {v1, p1}, Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;->satellitesChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public updateSysState()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/car/launchercommon/BaseApplication;->updateFmState()V

    invoke-direct {p0, v0}, Lcom/car/launchercommon/BaseApplication;->updateBtState(Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/car/launchercommon/BaseApplication;->updateWifiState(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/car/launchercommon/BaseApplication;->updateMuteState()V

    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/car/launchercommon/BaseApplication;->updateGpsState(I)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/launchercommon/BaseApplication$7;

    invoke-direct {v1, p0}, Lcom/car/launchercommon/BaseApplication$7;-><init>(Lcom/car/launchercommon/BaseApplication;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
