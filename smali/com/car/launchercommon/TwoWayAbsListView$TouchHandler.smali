.class abstract Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TouchHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;,
        Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;
    }
.end annotation


# instance fields
.field protected mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

.field mMotionCorrection:I

.field protected mPositionScroller:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;

.field final synthetic this$0:Lcom/car/launchercommon/TwoWayAbsListView;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearScrollingCache()V
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2400(Lcom/car/launchercommon/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    new-instance v1, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$1;

    invoke-direct {v1, p0}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$1;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;)V

    invoke-static {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2402(Lcom/car/launchercommon/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v1}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2400(Lcom/car/launchercommon/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected createScrollingCache()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2200(Lcom/car/launchercommon/TwoWayAbsListView;Z)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2300(Lcom/car/launchercommon/TwoWayAbsListView;Z)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iput-boolean v1, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method protected abstract getFlingRunnable()Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;
.end method

.method protected abstract getPositionScroller()Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->hideSelector()V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->layoutChildren()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/car/launchercommon/TwoWayAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v3, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->access$1700(Lcom/car/launchercommon/TwoWayAbsListView;Z)V

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v3, v4}, Lcom/car/launchercommon/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v3}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->endFling()V

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/car/launchercommon/TwoWayAbsListView;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/car/launchercommon/TwoWayAbsListView;->getScrollX()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->scrollTo(II)V

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/car/launchercommon/TwoWayAbsListView;->invalidate()V

    :cond_0
    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v2, v2, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    iput v2, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mResurrectToPosition:I

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v1, v0}, Lcom/car/launchercommon/TwoWayAbsListView;->access$1802(Lcom/car/launchercommon/TwoWayAbsListView;I)I

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v3}, Lcom/car/launchercommon/TwoWayAbsListView;->access$1800(Lcom/car/launchercommon/TwoWayAbsListView;)I

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v3}, Lcom/car/launchercommon/TwoWayAbsListView;->access$1800(Lcom/car/launchercommon/TwoWayAbsListView;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->resurrectSelection()Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/car/launchercommon/TwoWayAbsListView;->hideSelector()V

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iput v1, v2, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/car/launchercommon/TwoWayAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method reportScrollStateChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2000(Lcom/car/launchercommon/TwoWayAbsListView;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2100(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2100(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-interface {v0, v1, p1}, Lcom/car/launchercommon/TwoWayAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/car/launchercommon/TwoWayAbsListView;I)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2002(Lcom/car/launchercommon/TwoWayAbsListView;I)I

    :cond_0
    return-void
.end method

.method abstract resurrectSelection()Z
.end method

.method public smoothScrollBy(II)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->getFlingRunnable()Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    :goto_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->startScroll(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->endFling()V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->getPositionScroller()Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->start(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->getPositionScroller()Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->start(II)V

    return-void
.end method

.method public startScrollIfNeeded(I)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayAbsListView;->access$1900(Lcom/car/launchercommon/TwoWayAbsListView;)I

    move-result v5

    if-le v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->createScrollingCache()V

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v6, 0x3

    iput v6, v5, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    iput p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->mMotionCorrection:I

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v5}, Lcom/car/launchercommon/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayAbsListView;->access$600(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v5, v4}, Lcom/car/launchercommon/TwoWayAbsListView;->setPressed(Z)V

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v6, v6, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v7, v7, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->reportScrollStateChange(I)V

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v4, v3}, Lcom/car/launchercommon/TwoWayAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method abstract trackMotionScroll(II)Z
.end method
