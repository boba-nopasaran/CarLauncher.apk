.class public Lcom/txznet/txz/util/Te;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field protected static T2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/txznet/txz/util/Te;",
            ">;>;"
        }
    .end annotation
.end field

.field public static T3:I

.field protected static TN:J


# instance fields
.field Te:Ljava/lang/Thread;

.field Tw:Landroid/os/Handler;

.field Ty:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x2710

    sput v0, Lcom/txznet/txz/util/Te;->T3:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/txznet/txz/util/Te;->T2:Ljava/util/List;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/txznet/txz/util/Te;->TN:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/txznet/txz/util/Te;->Ty:J

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/txz/util/Te;->Te:Ljava/lang/Thread;

    new-instance v0, Lcom/txznet/txz/util/Te$1;

    invoke-direct {v0, p0, p1}, Lcom/txznet/txz/util/Te$1;-><init>(Lcom/txznet/txz/util/Te;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    sget-object v1, Lcom/txznet/txz/util/Te;->T2:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/txznet/txz/util/Te;->T2:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public T()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/txz/util/Te;->Ty:J

    return-void
.end method

.method public T(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public T(Ljava/lang/Runnable;)Z
    .locals 3

    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    new-instance v2, Lcom/txznet/txz/util/Te$4;

    invoke-direct {v2, p0}, Lcom/txznet/txz/util/Te$4;-><init>(Lcom/txznet/txz/util/Te;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    new-instance v2, Lcom/txznet/txz/util/Te$5;

    invoke-direct {v2, p0}, Lcom/txznet/txz/util/Te$5;-><init>(Lcom/txznet/txz/util/Te;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0
.end method

.method public T(Ljava/lang/Runnable;J)Z
    .locals 4

    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    new-instance v2, Lcom/txznet/txz/util/Te$2;

    invoke-direct {v2, p0}, Lcom/txznet/txz/util/Te$2;-><init>(Lcom/txznet/txz/util/Te;)V

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    iget-object v1, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    new-instance v2, Lcom/txznet/txz/util/Te$3;

    invoke-direct {v2, p0}, Lcom/txznet/txz/util/Te$3;-><init>(Lcom/txznet/txz/util/Te;)V

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method

.method public T3(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/txz/util/Te;->Tw:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
