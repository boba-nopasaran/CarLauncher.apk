.class Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;
.super Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalFlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field protected mLastFlingX:I

.field final synthetic this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;


# direct methods
.method private constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;Lcom/car/launchercommon/TwoWayAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;)V

    return-void
.end method


# virtual methods
.method public flywheelTouch()V
    .locals 4

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable$1;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;)V

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/launchercommon/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 10

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v8, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v8, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->endFling()V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v7

    iget v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mLastFlingX:I

    sub-int v1, v8, v7

    if-lez v1, :cond_2

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v9, v9, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    iput v9, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-virtual {v8, v1, v1}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->invalidate()V

    iput v7, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mLastFlingX:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8, p0}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v9, v9, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v9, v5

    iput v9, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    neg-int v8, v8

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->endFling()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method start(I)V
    .locals 9

    const v6, 0x7fffffff

    const/4 v2, 0x0

    if-gez p1, :cond_0

    move v1, v6

    :goto_0
    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v2, 0x4

    iput v2, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method startScroll(II)V
    .locals 6

    const/4 v2, 0x0

    if-gez p1, :cond_0

    const v1, 0x7fffffff

    :goto_0
    iput v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v2, 0x4

    iput v2, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method
