.class public abstract Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "FlingRunnable"
.end annotation


# instance fields
.field protected mCheckFlywheel:Ljava/lang/Runnable;

.field protected final mScroller:Landroid/widget/Scroller;

.field final synthetic this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;)V
    .locals 2

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p1, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/car/launchercommon/TwoWayAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->reportScrollStateChange(I)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->clearScrollingCache()V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v1, v1, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method abstract flywheelTouch()V
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartX()I

    move-result v3

    sub-int v0, v2, v3

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartY()I

    move-result v3

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract run()V
.end method

.method abstract start(I)V
.end method

.method abstract startScroll(II)V
.end method
