.class Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$1;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iput-boolean v1, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mCachingStarted:Z

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2500(Lcom/car/launchercommon/TwoWayAbsListView;Z)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2600(Lcom/car/launchercommon/TwoWayAbsListView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->invalidate()V

    :cond_1
    return-void
.end method
