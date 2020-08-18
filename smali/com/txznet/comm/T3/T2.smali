.class public Lcom/txznet/comm/T3/T2;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T2$Tw;,
        Lcom/txznet/comm/T3/T2$T;,
        Lcom/txznet/comm/T3/T2$TN;,
        Lcom/txznet/comm/T3/T2$Te;,
        Lcom/txznet/comm/T3/T2$T3;,
        Lcom/txznet/comm/T3/T2$T2;
    }
.end annotation


# static fields
.field private static TG:I

.field private static Tn:I

.field static Ty:Lcom/txznet/comm/T3/T2;


# instance fields
.field T:Landroid/os/HandlerThread;

.field T2:Lcom/txznet/comm/T3/T2$Te;

.field T3:Lcom/txznet/txz/util/Te;

.field TN:Ljava/lang/String;

.field private TR:I

.field private TW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/txznet/comm/T3/T2$T;",
            ">;"
        }
    .end annotation
.end field

.field public Te:Z

.field Tw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/txznet/comm/T3/T2$TN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v7, 0x3e8

    const/16 v6, 0x7530

    sput v6, Lcom/txznet/comm/T3/T2;->Tn:I

    sput v7, Lcom/txznet/comm/T3/T2;->TG:I

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.txznet."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xbb8

    sput v6, Lcom/txznet/comm/T3/T2;->Tn:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v6, "/etc/txz/txz_service.json"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    const/4 v5, 0x0

    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_1

    array-length v6, v0

    sub-int/2addr v6, v5

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    new-instance v3, Lcom/txznet/comm/TN/T;

    invoke-direct {v3, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    const-string v6, "DEFAULT_RECONNECT_DELAY"

    const-class v7, Ljava/lang/Integer;

    const/16 v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/txznet/comm/T3/T2;->TG:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const-string v6, "txz_service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DEFAULT_RECONNECT_DELAY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/txznet/comm/T3/T2;->TG:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/txznet/comm/T3/T2;

    invoke-direct {v6}, Lcom/txznet/comm/T3/T2;-><init>()V

    sput-object v6, Lcom/txznet/comm/T3/T2;->Ty:Lcom/txznet/comm/T3/T2;

    return-void

    :cond_2
    add-int/2addr v5, v4

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->T2:Lcom/txznet/comm/T3/T2$Te;

    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->TN:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/txznet/comm/T3/T2;->Te:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/txznet/comm/T3/T2;->TR:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->TW:Ljava/util/Set;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ServiceManagerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->T:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/txznet/comm/T3/T2;->T:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/txznet/comm/T3/T2$1;

    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->T:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/txznet/comm/T3/T2$1;-><init>(Lcom/txznet/comm/T3/T2;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/txznet/comm/T3/T2;->T3:Lcom/txznet/txz/util/Te;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/txznet/comm/T3/T2$2;

    invoke-direct {v2, p0}, Lcom/txznet/comm/T3/T2$2;-><init>(Lcom/txznet/comm/T3/T2;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/T3/T2;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/T3/T2;->TW:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic T(Lcom/txznet/comm/T3/T2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/txznet/comm/T3/T2;->T3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method private T(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/txznet/comm/T3/T2$Te;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txznet/comm/T3/T2$Te;

    iget-wide v8, v4, Lcom/txznet/comm/T3/T2$Te;->Te:J

    cmp-long v5, v2, v8

    if-ltz v5, :cond_2

    iget-object v5, v4, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/txznet/comm/T3/T2$T3;->T2:Z

    iget-object v5, v4, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/txznet/comm/T3/T2$T3;->T(Lcom/txznet/comm/T3/T2$T2;)V

    :cond_0
    iget-object v5, v4, Lcom/txznet/comm/T3/T2$Te;->T3:Ljava/lang/String;

    const-string v8, "comm.log"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    iget-object v5, v4, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    invoke-virtual {v5}, Lcom/txznet/comm/T3/T2$T3;->T()I

    move-result v5

    int-to-long v6, v5

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[FROM="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",TO="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",CMD="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v4, Lcom/txznet/comm/T3/T2$Te;->T3:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] timeout="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget v5, Lcom/txznet/comm/T3/T2;->Tn:I

    int-to-long v6, v5

    goto :goto_1

    :cond_4
    return-void
.end method

.method static synthetic T2()I
    .locals 1

    sget v0, Lcom/txznet/comm/T3/T2;->Tn:I

    return v0
.end method

.method public static T3()Lcom/txznet/comm/T3/T2;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T3/T2;->Ty:Lcom/txznet/comm/T3/T2;

    return-object v0
.end method

.method private T3(Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/T3/T2$TN;

    if-eqz v0, :cond_1

    const-string v1, "logServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset ServiceRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/txznet/comm/T3/T2$TN;->TN:Z

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic TN()I
    .locals 1

    sget v0, Lcom/txznet/comm/T3/T2;->TG:I

    return v0
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    .locals 6

    iget-boolean v1, p0, Lcom/txznet/comm/T3/T2;->Te:Z

    if-eqz v1, :cond_0

    const-string v1, "txz.camera."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sss"

    const-string v2, "pbh disable send invoke: send invoke"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/txznet/comm/T3/T2$Te;

    invoke-direct {v0, p0}, Lcom/txznet/comm/T3/T2$Te;-><init>(Lcom/txznet/comm/T3/T2;)V

    iget v1, p0, Lcom/txznet/comm/T3/T2;->TR:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/txznet/comm/T3/T2;->TR:I

    iput v1, v0, Lcom/txznet/comm/T3/T2$Te;->T:I

    iput-object p2, v0, Lcom/txznet/comm/T3/T2$Te;->T3:Ljava/lang/String;

    iput-object p3, v0, Lcom/txznet/comm/T3/T2$Te;->T2:[B

    iput-object p4, v0, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    iget-object v1, v0, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    iget v2, v0, Lcom/txznet/comm/T3/T2$Te;->T:I

    iput v2, v1, Lcom/txznet/comm/T3/T2$T3;->TN:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, v0, Lcom/txznet/comm/T3/T2$Te;->TN:Lcom/txznet/comm/T3/T2$T3;

    invoke-virtual {v1}, Lcom/txznet/comm/T3/T2$T3;->T()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/txznet/comm/T3/T2$Te;->Te:J

    :goto_1
    iget-object v1, p0, Lcom/txznet/comm/T3/T2;->T3:Lcom/txznet/txz/util/Te;

    new-instance v2, Lcom/txznet/comm/T3/T2$4;

    invoke-direct {v2, p0, p1, v0, p1}, Lcom/txznet/comm/T3/T2$4;-><init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Lcom/txznet/comm/T3/T2$Te;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    iget v1, v0, Lcom/txznet/comm/T3/T2$Te;->T:I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget v1, Lcom/txznet/comm/T3/T2;->Tn:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/txznet/comm/T3/T2$Te;->Te:J

    goto :goto_1
.end method

.method public T(Ljava/lang/String;Ljava/lang/String;[B)Lcom/txznet/comm/T3/T2$T2;
    .locals 5

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/txznet/comm/T3/T2;->Te:Z

    if-eqz v3, :cond_1

    const-string v3, "txz.camera."

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "sss"

    const-string v4, "pbh disable send invoke: send invoke sync"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;)Lcom/txznet/txz/T3/T;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v3, Lcom/txznet/comm/T3/T2$T2;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4, p2, p3}, Lcom/txznet/txz/T3/T;->T(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/txznet/comm/T3/T2$T2;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public T(Ljava/lang/String;)Lcom/txznet/txz/T3/T;
    .locals 5

    iget-object v3, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/T3/T2$TN;

    iget-object v2, v1, Lcom/txznet/comm/T3/T2$TN;->T:Lcom/txznet/comm/T3/T2$Tw;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/txznet/comm/T3/T2$TN;->T3:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/txznet/comm/T3/T2$TN;->T2:Lcom/txznet/txz/T3/T;

    monitor-exit v3

    :goto_0
    return-object v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method T(Lcom/txznet/txz/T3/T;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v3, p3, p4}, Lcom/txznet/txz/T3/T;->T(Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    const-string v3, "ServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",TO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",CMD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] NullPointerException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "ServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",TO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",CMD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] DeadObjectException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v3, "ServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",TO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",CMD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Throwable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public T()V
    .locals 5

    iget-object v3, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/txznet/comm/T3/T2;->Tw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/comm/T3/T2$TN;

    iget-object v2, v1, Lcom/txznet/comm/T3/T2$TN;->T:Lcom/txznet/comm/T3/T2$Tw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lcom/txznet/comm/T3/T2$TN;->T()V

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v1, Lcom/txznet/comm/T3/T2$TN;->T:Lcom/txznet/comm/T3/T2$Tw;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public T(Lcom/txznet/comm/T3/T2$T;)V
    .locals 2

    new-instance v0, Lcom/txznet/comm/T3/T2$3;

    invoke-direct {v0, p0, p1}, Lcom/txznet/comm/T3/T2$3;-><init>(Lcom/txznet/comm/T3/T2;Lcom/txznet/comm/T3/T2$T;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public T(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/T3/T2;->T3:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p1}, Lcom/txznet/txz/util/Te;->T3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public T(Ljava/lang/Runnable;I)V
    .locals 4

    iget-object v0, p0, Lcom/txznet/comm/T3/T2;->T3:Lcom/txznet/txz/util/Te;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public T(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    new-instance v0, Lcom/txznet/comm/T3/T2$5;

    invoke-direct {v0, p0, p2}, Lcom/txznet/comm/T3/T2$5;-><init>(Lcom/txznet/comm/T3/T2;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/txznet/comm/T3/T2$6;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/txznet/comm/T3/T2$6;-><init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Lcom/txznet/comm/T3/T2$T3;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/txznet/comm/T3/T2;->T(Lcom/txznet/comm/T3/T2$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/txznet/comm/T3/T2$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/txznet/comm/T3/T2$7;-><init>(Lcom/txznet/comm/T3/T2;Ljava/lang/String;Lcom/txznet/comm/T3/T2$T3;)V

    new-instance v3, Landroid/content/IntentFilter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".onCreateApp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public T(Ljava/lang/String;[B)[B
    .locals 3

    const-string v2, "com.txznet.txz"

    invoke-virtual {p0, v2, p1, p2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[B)Lcom/txznet/comm/T3/T2$T2;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/txznet/comm/T3/T2$T2;->T3()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "\u8bf7\u5148\u521d\u59cb\u5316\u8bed\u97f3\u58f0\u63a7\u5f15\u64ce"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method
