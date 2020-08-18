.class public Lcom/car/launchercommon/localapp/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/localapp/DeferredHandler$1;,
        Lcom/car/launchercommon/localapp/DeferredHandler$IdleRunnable;,
        Lcom/car/launchercommon/localapp/DeferredHandler$Impl;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/car/launchercommon/localapp/DeferredHandler$Impl;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v0, Lcom/car/launchercommon/localapp/DeferredHandler$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/car/launchercommon/localapp/DeferredHandler$Impl;-><init>(Lcom/car/launchercommon/localapp/DeferredHandler;Lcom/car/launchercommon/localapp/DeferredHandler$1;)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mHandler:Lcom/car/launchercommon/localapp/DeferredHandler$Impl;

    return-void
.end method

.method static synthetic access$100(Lcom/car/launchercommon/localapp/DeferredHandler;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelAllRunnablesOfType(I)V
    .locals 4

    iget-object v3, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public cancelRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 5

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/car/launchercommon/localapp/DeferredHandler;->post(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;I)V
    .locals 4

    iget-object v1, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/DeferredHandler;->scheduleNextLocked()V

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

.method public postIdle(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/car/launchercommon/localapp/DeferredHandler;->postIdle(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public postIdle(Ljava/lang/Runnable;I)V
    .locals 1

    new-instance v0, Lcom/car/launchercommon/localapp/DeferredHandler$IdleRunnable;

    invoke-direct {v0, p0, p1}, Lcom/car/launchercommon/localapp/DeferredHandler$IdleRunnable;-><init>(Lcom/car/launchercommon/localapp/DeferredHandler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/car/launchercommon/localapp/DeferredHandler;->post(Ljava/lang/Runnable;I)V

    return-void
.end method

.method scheduleNextLocked()V
    .locals 4

    iget-object v2, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    instance-of v2, v1, Lcom/car/launchercommon/localapp/DeferredHandler$IdleRunnable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v3, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mHandler:Lcom/car/launchercommon/localapp/DeferredHandler$Impl;

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/car/launchercommon/localapp/DeferredHandler;->mHandler:Lcom/car/launchercommon/localapp/DeferredHandler$Impl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/car/launchercommon/localapp/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
