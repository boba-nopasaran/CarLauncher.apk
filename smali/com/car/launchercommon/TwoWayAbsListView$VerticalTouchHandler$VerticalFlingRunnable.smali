.class Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;
.super Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalFlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field protected mLastFlingY:I

.field final synthetic this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;


# direct methods
.method private constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;Lcom/car/launchercommon/TwoWayAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;)V

    return-void
.end method


# virtual methods
.method public flywheelTouch()V
    .locals 4

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;)V

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/launchercommon/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 10

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v8, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v8, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->endFling()V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    iget v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    sub-int v1, v8, v7

    if-lez v1, :cond_2

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v9, v9, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    iput v9, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    invoke-virtual {v8, v1, v1}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->invalidate()V

    iput v7, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8, p0}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v9, v9, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v9, v5

    iput v9, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    neg-int v8, v8

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->endFling()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method start(I)V
    .locals 9

    const v6, 0x7fffffff

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move v2, v6

    :goto_0
    iput v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method startScroll(II)V
    .locals 6

    const/4 v1, 0x0

    if-gez p1, :cond_0

    const v2, 0x7fffffff

    :goto_0
    iput v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v2, v1

    goto :goto_0
.end method
