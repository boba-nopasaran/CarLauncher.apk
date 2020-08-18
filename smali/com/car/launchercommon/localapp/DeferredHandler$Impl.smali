.class Lcom/car/launchercommon/localapp/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/localapp/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/localapp/DeferredHandler;


# direct methods
.method private constructor <init>(Lcom/car/launchercommon/localapp/DeferredHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/DeferredHandler$Impl;->this$0:Lcom/car/launchercommon/localapp/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/launchercommon/localapp/DeferredHandler;Lcom/car/launchercommon/localapp/DeferredHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/DeferredHandler$Impl;-><init>(Lcom/car/launchercommon/localapp/DeferredHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v2, p0, Lcom/car/launchercommon/localapp/DeferredHandler$Impl;->this$0:Lcom/car/launchercommon/localapp/DeferredHandler;

    invoke-static {v2}, Lcom/car/launchercommon/localapp/DeferredHandler;->access$100(Lcom/car/launchercommon/localapp/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/car/launchercommon/localapp/DeferredHandler$Impl;->this$0:Lcom/car/launchercommon/localapp/DeferredHandler;

    invoke-static {v2}, Lcom/car/launchercommon/localapp/DeferredHandler;->access$100(Lcom/car/launchercommon/localapp/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/car/launchercommon/localapp/DeferredHandler$Impl;->this$0:Lcom/car/launchercommon/localapp/DeferredHandler;

    invoke-static {v2}, Lcom/car/launchercommon/localapp/DeferredHandler;->access$100(Lcom/car/launchercommon/localapp/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v2, p0, Lcom/car/launchercommon/localapp/DeferredHandler$Impl;->this$0:Lcom/car/launchercommon/localapp/DeferredHandler;

    invoke-static {v2}, Lcom/car/launchercommon/localapp/DeferredHandler;->access$100(Lcom/car/launchercommon/localapp/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/car/launchercommon/localapp/DeferredHandler$Impl;->this$0:Lcom/car/launchercommon/localapp/DeferredHandler;

    invoke-virtual {v2}, Lcom/car/launchercommon/localapp/DeferredHandler;->scheduleNextLocked()V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public queueIdle()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/localapp/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    return v0
.end method
