.class Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$1;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$1;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$1;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->access$202(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Z)Z

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$1;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
