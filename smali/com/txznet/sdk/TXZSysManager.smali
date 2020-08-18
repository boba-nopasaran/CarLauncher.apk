.class public Lcom/txznet/sdk/TXZSysManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;,
        Lcom/txznet/sdk/TXZSysManager$AppInfo;,
        Lcom/txznet/sdk/TXZSysManager$AppMgrTool;,
        Lcom/txznet/sdk/TXZSysManager$WakeLockTool;,
        Lcom/txznet/sdk/TXZSysManager$MuteAllTool;,
        Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;
    }
.end annotation


# static fields
.field private static T:Lcom/txznet/sdk/TXZSysManager;


# instance fields
.field private T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

.field private T3:Z

.field private TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

.field private TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

.field private TN:Z

.field private TR:[B

.field private TW:Z

.field private Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

.field private Tn:Z

.field private Tw:Z

.field private Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->T3:Z

    iput-object v1, p0, Lcom/txznet/sdk/TXZSysManager;->T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TN:Z

    iput-object v1, p0, Lcom/txznet/sdk/TXZSysManager;->Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tw:Z

    iput-object v1, p0, Lcom/txznet/sdk/TXZSysManager;->Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tn:Z

    iput-object v1, p0, Lcom/txznet/sdk/TXZSysManager;->TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TW:Z

    iput-object v1, p0, Lcom/txznet/sdk/TXZSysManager;->TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    return-object v0
.end method

.method static synthetic T(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/txznet/sdk/TXZSysManager;->T3(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic T2(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$WakeLockTool;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;

    return-object v0
.end method

.method static synthetic T3(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$MuteAllTool;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    return-object v0
.end method

.method private T3()V
    .locals 5

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TR:[B

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.pkg.sync"

    iget-object v3, p0, Lcom/txznet/sdk/TXZSysManager;->TR:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_0
    return-void
.end method

.method private static T3(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    :try_start_0
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :catch_0
    move-exception v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic TN(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$AppMgrTool;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    return-object v0
.end method

.method static synthetic Te(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    return-object v0
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZSysManager;
    .locals 2

    sget-object v0, Lcom/txznet/sdk/TXZSysManager;->T:Lcom/txznet/sdk/TXZSysManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/txznet/sdk/TXZSysManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/txznet/sdk/TXZSysManager;->T:Lcom/txznet/sdk/TXZSysManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/txznet/sdk/TXZSysManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZSysManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZSysManager;->T:Lcom/txznet/sdk/TXZSysManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/txznet/sdk/TXZSysManager;->T:Lcom/txznet/sdk/TXZSysManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method T()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->T3:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.volume.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tw:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.wakelock.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.appmgr.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TW:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.screensleep.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TN:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.muteall.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/txznet/sdk/TXZSysManager;->T3()V

    return-void

    :cond_5
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.volume.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.wakelock.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.appmgr.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.screensleep.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.muteall.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_4
.end method

.method public setAppMgrTool(Lcom/txznet/sdk/TXZSysManager$AppMgrTool;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tn:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager;->TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TG:Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.appmgr.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "tool.appmgr."

    new-instance v1, Lcom/txznet/sdk/TXZSysManager$4;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZSysManager$4;-><init>(Lcom/txznet/sdk/TXZSysManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.appmgr.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setMuteAllTool(Lcom/txznet/sdk/TXZSysManager$MuteAllTool;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TN:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager;->Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Te:Lcom/txznet/sdk/TXZSysManager$MuteAllTool;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.muteall.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "tool.muteall."

    new-instance v1, Lcom/txznet/sdk/TXZSysManager$2;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZSysManager$2;-><init>(Lcom/txznet/sdk/TXZSysManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.muteall.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setScreenSleepTool(Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->TW:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager;->TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->TJ:Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.screensleep.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "tool.screensleep."

    new-instance v1, Lcom/txznet/sdk/TXZSysManager$5;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZSysManager$5;-><init>(Lcom/txznet/sdk/TXZSysManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.screensleep.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setVolumeMgrTool(Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->T3:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager;->T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->T2:Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.volume.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "tool.volume."

    new-instance v1, Lcom/txznet/sdk/TXZSysManager$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZSysManager$1;-><init>(Lcom/txznet/sdk/TXZSysManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.volume.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setWakeLockTool(Lcom/txznet/sdk/TXZSysManager$WakeLockTool;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZSysManager;->Tw:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager;->Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;

    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager;->Ty:Lcom/txznet/sdk/TXZSysManager$WakeLockTool;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.wakelock.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "tool.wakelock."

    new-instance v1, Lcom/txznet/sdk/TXZSysManager$3;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZSysManager$3;-><init>(Lcom/txznet/sdk/TXZSysManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.sys.wakelock.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public syncAppInfoList([Lcom/txznet/sdk/TXZSysManager$AppInfo;)V
    .locals 8

    :try_start_0
    new-instance v3, Lcom/T/T/T3;

    invoke-direct {v3}, Lcom/T/T/T3;-><init>()V

    move-object v0, p1

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    new-instance v5, Lcom/txznet/comm/TN/T;

    invoke-direct {v5}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v6, "strAppName"

    iget-object v7, v2, Lcom/txznet/sdk/TXZSysManager$AppInfo;->strAppName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v5

    const-string v6, "strPackageName"

    iget-object v7, v2, Lcom/txznet/sdk/TXZSysManager$AppInfo;->strPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txznet/comm/TN/T;->T3()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/T/T/T3;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncAppInfoList list="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    new-instance v5, Lcom/txznet/comm/TN/T;

    invoke-direct {v5}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v6, "infos"

    invoke-virtual {v5, v6, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v5

    iput-object v5, p0, Lcom/txznet/sdk/TXZSysManager;->TR:[B

    invoke-direct {p0}, Lcom/txznet/sdk/TXZSysManager;->T3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v5

    goto :goto_1
.end method
