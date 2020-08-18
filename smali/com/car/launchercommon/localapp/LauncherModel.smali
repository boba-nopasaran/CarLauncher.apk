.class public Lcom/car/launchercommon/localapp/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/localapp/LauncherModel$WidgetAndShortcutNameComparator;,
        Lcom/car/launchercommon/localapp/LauncherModel$ShortcutNameComparator;,
        Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;,
        Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;,
        Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG_LOADERS:Z = false

.field private static final ITEMS_CHUNK:I = 0x6

.field private static final MAIN_THREAD_BINDING_RUNNABLE:I = 0x1

.field private static final MAIN_THREAD_NORMAL_RUNNABLE:I = 0x0

.field static final TAG:Ljava/lang/String; = "CarL.Launcher.Model"

.field private static mCellCountX:I

.field private static mCellCountY:I

.field static final mDeferredBindRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field static final sBgItemsIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/car/launchercommon/localapp/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgLock:Ljava/lang/Object;

.field static final sBgWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAllAppsLoadDelay:I

.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/car/launchercommon/BaseApplication;

.field private final mAppsCanBeOnExternalStorage:Z

.field private mBatchSize:I

.field private mBgAllAppsList:Lcom/car/launchercommon/localapp/AllAppsList;

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mHandler:Lcom/car/launchercommon/localapp/DeferredHandler;

.field private mIconCache:Lcom/car/launchercommon/localapp/IconCache;

.field private mIsLoaderTaskRunning:Z

.field private mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field protected mPreviousConfigMcc:I

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sBgLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    new-instance v0, Lcom/car/launchercommon/localapp/LauncherModel$8;

    invoke-direct {v0}, Lcom/car/launchercommon/localapp/LauncherModel$8;-><init>()V

    sput-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/car/launchercommon/BaseApplication;Lcom/car/launchercommon/localapp/IconCache;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLock:Ljava/lang/Object;

    new-instance v2, Lcom/car/launchercommon/localapp/DeferredHandler;

    invoke-direct {v2}, Lcom/car/launchercommon/localapp/DeferredHandler;-><init>()V

    iput-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mHandler:Lcom/car/launchercommon/localapp/DeferredHandler;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mApp:Lcom/car/launchercommon/BaseApplication;

    new-instance v2, Lcom/car/launchercommon/localapp/AllAppsList;

    invoke-direct {v2, p2}, Lcom/car/launchercommon/localapp/AllAppsList;-><init>(Lcom/car/launchercommon/localapp/IconCache;)V

    iput-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mBgAllAppsList:Lcom/car/launchercommon/localapp/AllAppsList;

    iput-object p2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    invoke-virtual {v2}, Lcom/car/launchercommon/localapp/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/car/launchercommon/localapp/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/car/launchercommon/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput v3, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mAllAppsLoadDelay:I

    iput v3, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mBatchSize:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    iput v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mPreviousConfigMcc:I

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/launchercommon/localapp/LauncherModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->setMapVolumeUp()V

    return-void
.end method

.method static synthetic access$100(Lcom/car/launchercommon/localapp/LauncherModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/car/launchercommon/localapp/LauncherModel;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/launchercommon/localapp/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic access$102(Lcom/car/launchercommon/localapp/LauncherModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mBgAllAppsList:Lcom/car/launchercommon/localapp/AllAppsList;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/os/HandlerThread;
    .locals 1

    sget-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/car/launchercommon/localapp/LauncherModel;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mBatchSize:I

    return v0
.end method

.method static synthetic access$1500(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/IconCache;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/car/launchercommon/localapp/LauncherModel;)I
    .locals 1

    iget v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mAllAppsLoadDelay:I

    return v0
.end method

.method static synthetic access$1700(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/BaseApplication;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mApp:Lcom/car/launchercommon/BaseApplication;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/DeferredHandler;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mHandler:Lcom/car/launchercommon/localapp/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/launchercommon/localapp/LauncherModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/car/launchercommon/localapp/LauncherModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/launchercommon/localapp/LauncherModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mIsLoaderTaskRunning:Z

    return v0
.end method

.method static synthetic access$602(Lcom/car/launchercommon/localapp/LauncherModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mIsLoaderTaskRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$802(Lcom/car/launchercommon/localapp/LauncherModel;Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;)Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/car/launchercommon/localapp/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/car/launchercommon/localapp/ShortcutInfo;
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/car/launchercommon/localapp/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/car/launchercommon/localapp/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;JIIIZ)V
    .locals 14

    move-wide/from16 v0, p2

    iput-wide v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    move/from16 v0, p5

    iput v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    move/from16 v0, p6

    iput v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    move/from16 v0, p4

    iput v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p1, v11}, Lcom/car/launchercommon/localapp/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/car/launchercommon/BaseApplication;

    invoke-virtual {v12}, Lcom/car/launchercommon/BaseApplication;->getLauncherProvider()Lcom/car/launchercommon/localapp/LauncherProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/car/launchercommon/localapp/LauncherProvider;->generateNewId()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    const-string v3, "_id"

    iget-wide v4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    iget v4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    invoke-virtual {p1, v11, v3, v4}, Lcom/car/launchercommon/localapp/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    new-instance v2, Lcom/car/launchercommon/localapp/LauncherModel$4;

    move-object v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lcom/car/launchercommon/localapp/LauncherModel$4;-><init>(Lcom/car/launchercommon/localapp/ItemInfo;JIIILandroid/content/ContentResolver;ZLandroid/content/ContentValues;)V

    invoke-static {v2}, Lcom/car/launchercommon/localapp/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;JIII)V
    .locals 8

    iget-wide v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/car/launchercommon/localapp/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;JIIIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/car/launchercommon/localapp/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;JIII)V

    goto :goto_0
.end method

.method static checkItemInfo(Lcom/car/launchercommon/localapp/ItemInfo;)V
    .locals 5

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    iget-wide v0, p0, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    new-instance v2, Lcom/car/launchercommon/localapp/LauncherModel$2;

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/car/launchercommon/localapp/LauncherModel$2;-><init>(JLcom/car/launchercommon/localapp/ItemInfo;[Ljava/lang/StackTraceElement;)V

    invoke-static {v2}, Lcom/car/launchercommon/localapp/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static checkItemInfoLocked(JLcom/car/launchercommon/localapp/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-object v5, Lcom/car/launchercommon/localapp/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/localapp/ItemInfo;

    if-eqz v1, :cond_1

    if-eq p2, v1, :cond_1

    instance-of v5, v1, Lcom/car/launchercommon/localapp/ShortcutInfo;

    if-eqz v5, :cond_2

    instance-of v5, p2, Lcom/car/launchercommon/localapp/ShortcutInfo;

    if-eqz v5, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/car/launchercommon/localapp/ShortcutInfo;

    move-object v4, p2

    check-cast v4, Lcom/car/launchercommon/localapp/ShortcutInfo;

    iget-object v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v6, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v6, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->id:J

    iget-wide v8, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    iget v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->itemType:I

    iget v6, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->itemType:I

    if-ne v5, v6, :cond_2

    iget-wide v6, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->container:J

    iget-wide v8, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->container:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    iget v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->screen:I

    iget v6, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->screen:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->cellX:I

    iget v6, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->cellX:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->cellY:I

    iget v6, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->cellY:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->spanX:I

    iget v6, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->spanX:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->spanY:I

    iget v6, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->spanY:I

    if-ne v5, v6, :cond_2

    iget-object v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->dropPos:[I

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->dropPos:[I

    aget v5, v5, v10

    iget-object v6, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->dropPos:[I

    aget v6, v6, v10

    if-ne v5, v6, :cond_2

    iget-object v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;->dropPos:[I

    aget v5, v5, v11

    iget-object v6, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->dropPos:[I

    aget v6, v6, v11

    if-ne v5, v6, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/car/launchercommon/localapp/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "modelItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/car/launchercommon/localapp/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_3
    throw v0

    :cond_4
    const-string v5, "null"

    goto :goto_0

    :cond_5
    const-string v5, "null"

    goto :goto_1
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/car/launchercommon/localapp/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Lcom/car/launchercommon/localapp/LauncherModel$5;

    invoke-direct {v1, p1, v0, v2}, Lcom/car/launchercommon/localapp/LauncherModel$5;-><init>(Lcom/car/launchercommon/localapp/ItemInfo;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/car/launchercommon/localapp/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private forceReload()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/car/launchercommon/localapp/LauncherModel;->resetLoadedState(ZZ)V

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->startLoaderFromBackground()V

    return-void
.end method

.method public static final getAppNameComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    new-instance v1, Lcom/car/launchercommon/localapp/LauncherModel$7;

    invoke-direct {v1, v0}, Lcom/car/launchercommon/localapp/LauncherModel$7;-><init>(Ljava/text/Collator;)V

    return-object v1
.end method

.method static getCellCountX()I
    .locals 1

    sget v0, Lcom/car/launchercommon/localapp/LauncherModel;->mCellCountX:I

    return v0
.end method

.method static getCellCountY()I
    .locals 1

    sget v0, Lcom/car/launchercommon/localapp/LauncherModel;->mCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(JIIIII)I
    .locals 2

    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/car/launchercommon/localapp/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "itemType"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "container"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "screen"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "spanY"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-string v3, "itemType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v3, "spanX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v3, "spanY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v13, Lcom/car/launchercommon/localapp/ItemInfo;

    invoke-direct {v13}, Lcom/car/launchercommon/localapp/ItemInfo;-><init>()V

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/car/launchercommon/localapp/ItemInfo;->spanX:I

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/car/launchercommon/localapp/ItemInfo;->spanY:I

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v13, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/car/launchercommon/localapp/ItemInfo;->itemType:I

    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v12

    :try_start_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v15

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/car/launchercommon/localapp/ShortcutInfo;
    .locals 11

    const/4 v1, 0x0

    new-instance v4, Lcom/car/launchercommon/localapp/ShortcutInfo;

    invoke-direct {v4}, Lcom/car/launchercommon/localapp/ShortcutInfo;-><init>()V

    const/4 v9, 0x1

    iput v9, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->itemType:I

    move/from16 v0, p7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->usingFallbackIcon:Z

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->customIcon:Z

    :cond_0
    :goto_0
    invoke-virtual {v4, v1}, Lcom/car/launchercommon/localapp/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    return-object v4

    :pswitch_0
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->customIcon:Z

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v9, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    invoke-virtual {v9, v8, v3}, Lcom/car/launchercommon/localapp/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/car/launchercommon/localapp/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    move/from16 v0, p6

    invoke-virtual {p0, p1, v0, p2}, Lcom/car/launchercommon/localapp/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    :pswitch_1
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0, p2}, Lcom/car/launchercommon/localapp/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->customIcon:Z

    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->customIcon:Z

    goto :goto_0

    :catch_0
    move-exception v9

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final getWidgetNameComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    new-instance v1, Lcom/car/launchercommon/localapp/LauncherModel$9;

    invoke-direct {v1, v0}, Lcom/car/launchercommon/localapp/LauncherModel$9;-><init>(Ljava/text/Collator;)V

    return-object v1
.end method

.method static getWorkspaceShortcutItemInfosWithIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/car/launchercommon/localapp/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/launchercommon/localapp/ItemInfo;

    instance-of v5, v2, Lcom/car/launchercommon/localapp/ShortcutInfo;

    if-eqz v5, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/car/launchercommon/localapp/ShortcutInfo;

    move-object v4, v0

    iget-object v5, v4, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method static modifyItemInDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;JIIIII)V
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbDebug    Modify item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in db, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarL.Launcher.Model"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p5, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    iput p6, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    iput p7, p1, Lcom/car/launchercommon/localapp/ItemInfo;->spanX:I

    iput p8, p1, Lcom/car/launchercommon/localapp/ItemInfo;->spanY:I

    iput p4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "container"

    iget-wide v4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "cellX"

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cellY"

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanX"

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanY"

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screen"

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "modifyItemInDatabase"

    invoke-static {p0, v1, p1, v2}, Lcom/car/launchercommon/localapp/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/car/launchercommon/localapp/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;JIII)V
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbDebug    Modify item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in db, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarL.Launcher.Model"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p2, p1, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    iput p5, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    iput p6, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    iput p4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "container"

    iget-wide v4, p1, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "cellX"

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cellY"

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screen"

    iget v3, p1, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "moveItemInDatabase"

    invoke-static {p0, v1, p1, v2}, Lcom/car/launchercommon/localapp/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/car/launchercommon/localapp/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/launchercommon/localapp/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;I)V

    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;I)V
    .locals 2

    sget-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mHandler:Lcom/car/launchercommon/localapp/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/localapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private declared-synchronized setMapVolumeUp()V
    .locals 13

    monitor-enter p0

    :try_start_0
    const-string v11, "geo:0,0"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v4, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mApp:Lcom/car/launchercommon/BaseApplication;

    invoke-virtual {v11}, Lcom/car/launchercommon/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v11, 0x10000

    invoke-virtual {v5, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    const-string v8, "0.08:0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v11, "com.iflytek.tts"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :goto_0
    if-eqz v7, :cond_0

    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    const-string v11, "sys.car.volume_uid"

    const-string v12, "0.08:0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "sys.car.volume_uid"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_2
    const/4 v2, 0x0

    :goto_1
    :try_start_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/launchercommon/localapp/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v7

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private stopLoaderLocked()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->stopLocked()V

    :cond_1
    return v0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v0}, Lcom/car/launchercommon/localapp/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    iget v1, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    iget v2, p1, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/car/launchercommon/localapp/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/car/launchercommon/localapp/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/car/launchercommon/localapp/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/car/launchercommon/localapp/ItemInfo;Ljava/lang/String;)V
    .locals 8

    iget-wide v4, p2, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/car/launchercommon/localapp/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    new-instance v0, Lcom/car/launchercommon/localapp/LauncherModel$3;

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/car/launchercommon/localapp/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/car/launchercommon/localapp/ItemInfo;[Ljava/lang/StackTraceElement;)V

    invoke-static {v0}, Lcom/car/launchercommon/localapp/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0

    sput p0, Lcom/car/launchercommon/localapp/LauncherModel;->mCellCountX:I

    sput p1, Lcom/car/launchercommon/localapp/LauncherModel;->mCellCountY:I

    return-void
.end method


# virtual methods
.method addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/car/launchercommon/localapp/ShortcutInfo;
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/car/launchercommon/localapp/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/car/launchercommon/localapp/ShortcutInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    move-object v0, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/car/launchercommon/localapp/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;JIIIZ)V

    goto :goto_0
.end method

.method bindRemainingSynchronousPages()V
    .locals 4

    sget-object v2, Lcom/car/launchercommon/localapp/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/car/launchercommon/localapp/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mHandler:Lcom/car/launchercommon/localapp/DeferredHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/car/launchercommon/localapp/DeferredHandler;->post(Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/car/launchercommon/localapp/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public dumpState()V
    .locals 3

    const-string v0, "CarL.Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarL.Launcher.Model"

    const-string v1, "mAllAppsList.data"

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mBgAllAppsList:Lcom/car/launchercommon/localapp/AllAppsList;

    iget-object v2, v2, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/localapp/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "CarL.Launcher.Model"

    const-string v1, "mAllAppsList.added"

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mBgAllAppsList:Lcom/car/launchercommon/localapp/AllAppsList;

    iget-object v2, v2, Lcom/car/launchercommon/localapp/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/localapp/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "CarL.Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mBgAllAppsList:Lcom/car/launchercommon/localapp/AllAppsList;

    iget-object v2, v2, Lcom/car/launchercommon/localapp/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/localapp/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "CarL.Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mBgAllAppsList:Lcom/car/launchercommon/localapp/AllAppsList;

    iget-object v2, v2, Lcom/car/launchercommon/localapp/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/localapp/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->dumpState()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CarL.Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method enqueuePackageUpdated(Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;)V
    .locals 1

    sget-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method findAppWidgetProviderInfoWithComponent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/car/launchercommon/localapp/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/car/launchercommon/localapp/ShortcutInfo;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/car/launchercommon/localapp/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/car/launchercommon/localapp/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/car/launchercommon/localapp/ShortcutInfo;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/car/launchercommon/localapp/ShortcutInfo;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v10, Lcom/car/launchercommon/localapp/ShortcutInfo;

    invoke-direct {v10}, Lcom/car/launchercommon/localapp/ShortcutInfo;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v10, 0x0

    :goto_0
    return-object v10

    :cond_0
    :try_start_0
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v17, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v17, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v17, "CarL.Launcher.Model"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getPackInfo failed for package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v16, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    new-instance v13, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v16, v7

    goto :goto_1

    :cond_3
    if-nez v16, :cond_4

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    :cond_4
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, p7

    invoke-virtual {v0, v5, v1, v2}, Lcom/car/launchercommon/localapp/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_5
    if-nez v9, :cond_6

    if-eqz p4, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/launchercommon/localapp/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_6
    if-nez v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/car/launchercommon/localapp/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v9

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/car/launchercommon/localapp/ShortcutInfo;->usingFallbackIcon:Z

    :cond_7
    invoke-virtual {v10, v9}, Lcom/car/launchercommon/localapp/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    if-eqz v16, :cond_8

    invoke-static/range {v16 .. v16}, Lcom/car/launchercommon/localapp/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    if-eqz p7, :cond_b

    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    :cond_8
    :goto_2
    iget-object v0, v10, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    :cond_9
    iget-object v0, v10, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_a

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Lcom/car/launchercommon/localapp/ShortcutInfo;->itemType:I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz p7, :cond_8

    iget-object v0, v10, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/car/launchercommon/localapp/ShortcutInfo;
    .locals 16

    const-string v13, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    const-string v13, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v9, :cond_0

    const-string v13, "CarL.Launcher.Model"

    const-string v14, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    instance-of v13, v1, Landroid/graphics/Bitmap;

    if-eqz v13, :cond_3

    new-instance v13, Lcom/car/launchercommon/localapp/FastBitmapDrawable;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v13, v1}, Lcom/car/launchercommon/localapp/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/car/launchercommon/localapp/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v2, 0x1

    :cond_1
    :goto_1
    new-instance v8, Lcom/car/launchercommon/localapp/ShortcutInfo;

    invoke-direct {v8}, Lcom/car/launchercommon/localapp/ShortcutInfo;-><init>()V

    if-nez v5, :cond_2

    if-eqz p3, :cond_4

    move-object/from16 v5, p3

    :cond_2
    :goto_2
    invoke-virtual {v8, v5}, Lcom/car/launchercommon/localapp/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    iput-object v10, v8, Lcom/car/launchercommon/localapp/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iput-object v9, v8, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    iput-boolean v2, v8, Lcom/car/launchercommon/localapp/ShortcutInfo;->customIcon:Z

    iput-object v6, v8, Lcom/car/launchercommon/localapp/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    goto :goto_0

    :cond_3
    const-string v13, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v13, v4, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v13, :cond_1

    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/launchercommon/localapp/LauncherModel;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    invoke-virtual {v13, v12, v7}, Lcom/car/launchercommon/localapp/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/car/launchercommon/localapp/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v13, "CarL.Launcher.Model"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not load shortcut icon: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/car/launchercommon/localapp/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/car/launchercommon/localapp/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_2
.end method

.method public initialize(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAllAppsLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method isLoadingWorkspace()Z
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->isLoadingWorkspace()Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v7, Lcom/car/launchercommon/localapp/LauncherModel$6;

    invoke-direct {v7, p0}, Lcom/car/launchercommon/localapp/LauncherModel$6;-><init>(Lcom/car/launchercommon/localapp/LauncherModel;)V

    invoke-virtual {v7}, Lcom/car/launchercommon/localapp/LauncherModel$6;->start()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v3, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v3, 0x2

    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    new-instance v7, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-direct {v7, p0, v3, v8}, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;-><init>(Lcom/car/launchercommon/localapp/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/localapp/LauncherModel;->enqueuePackageUpdated(Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    :cond_4
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v6, :cond_3

    const/4 v3, 0x3

    goto :goto_1

    :cond_5
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v6, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x2

    goto :goto_1

    :cond_7
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;

    invoke-direct {v7, p0, v8, v5}, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;-><init>(Lcom/car/launchercommon/localapp/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/localapp/LauncherModel;->enqueuePackageUpdated(Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;)V

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->startLoaderFromBackground()V

    goto :goto_0

    :cond_8
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v8, v5}, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;-><init>(Lcom/car/launchercommon/localapp/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/localapp/LauncherModel;->enqueuePackageUpdated(Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    :cond_9
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->forceReload()V

    goto :goto_0

    :cond_a
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v7, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mPreviousConfigMcc:I

    iget v8, v2, Landroid/content/res/Configuration;->mcc:I

    if-eq v7, v8, :cond_b

    const-string v7, "CarL.Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reload apps on config change. curr_mcc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prevmcc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mPreviousConfigMcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->forceReload()V

    :cond_b
    iget v7, v2, Landroid/content/res/Configuration;->mcc:I

    iput v7, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mPreviousConfigMcc:I

    goto/16 :goto_0

    :cond_c
    const-string v7, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_d
    iget-object v7, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->bindSearchablesChanged()V

    goto/16 :goto_0
.end method

.method queueIconToBeChecked(Ljava/util/HashMap;Lcom/car/launchercommon/localapp/ShortcutInfo;Landroid/database/Cursor;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/car/launchercommon/localapp/ShortcutInfo;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p2, Lcom/car/launchercommon/localapp/ShortcutInfo;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/car/launchercommon/localapp/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetLoadedState(ZZ)V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->stopLoaderLocked()Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mAllAppsLoaded:Z

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mWorkspaceLoaded:Z

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoader(ZI)V
    .locals 3

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    invoke-virtual {v0}, Lcom/car/launchercommon/localapp/IconCache;->flush()V

    :cond_0
    sget-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 p1, 0x1

    :goto_0
    new-instance v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mApp:Lcom/car/launchercommon/BaseApplication;

    invoke-direct {v0, p0, v2, p1}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;-><init>(Lcom/car/launchercommon/localapp/LauncherModel;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    const/4 v0, -0x1

    if-le p2, v0, :cond_4

    iget-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    invoke-virtual {v0, p2}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->runBindSynchronousPage(I)V

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    sget-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/car/launchercommon/localapp/LauncherModel;->startLoader(ZI)V

    :cond_1
    return-void
.end method

.method public stopLoader()V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mLoaderTask:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->stopLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindItemInfosAndClearQueuedBindRunnables()V
    .locals 2

    sget-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected unbindLauncherItemInfos() to be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/car/launchercommon/localapp/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mHandler:Lcom/car/launchercommon/localapp/DeferredHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/localapp/DeferredHandler;->cancelAllRunnablesOfType(I)V

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    return-void
.end method

.method unbindWorkspaceItemsOnMainThread()V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/car/launchercommon/localapp/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/car/launchercommon/localapp/LauncherModel$1;

    invoke-direct {v0, p0, v2, v1}, Lcom/car/launchercommon/localapp/LauncherModel$1;-><init>(Lcom/car/launchercommon/localapp/LauncherModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/car/launchercommon/localapp/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/car/launchercommon/localapp/ShortcutInfo;[B)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const/4 v5, 0x0

    :try_start_0
    array-length v6, p3

    invoke-static {p3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherModel;->mIconCache:Lcom/car/launchercommon/localapp/IconCache;

    invoke-virtual {p2, v5}, Lcom/car/launchercommon/localapp/ShortcutInfo;->getIcon(Lcom/car/launchercommon/localapp/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    const-string v4, "CarL.Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "going to save icon bitmap for info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/car/launchercommon/localapp/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/car/launchercommon/localapp/ItemInfo;)V

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    goto :goto_0
.end method
