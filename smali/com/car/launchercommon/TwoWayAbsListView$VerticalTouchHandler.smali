.class Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;
.super Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerticalTouchHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;,
        Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;
    }
.end annotation


# instance fields
.field mLastY:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field final synthetic this$0:Lcom/car/launchercommon/TwoWayAbsListView;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method protected getFlingRunnable()Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;
    .locals 2

    new-instance v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;Lcom/car/launchercommon/TwoWayAbsListView$1;)V

    return-object v0
.end method

.method protected getPositionScroller()Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;
    .locals 1

    new-instance v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;

    invoke-direct {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;)V

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v6, v7

    :goto_1
    return v6

    :pswitch_0
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v2, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v8, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->findMotionRowY(I)I

    move-result v1

    if-eq v2, v10, :cond_1

    if-ltz v1, :cond_1

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v9, v9, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {v8, v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iput v4, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionX:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iput v5, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionY:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iput v1, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iput v7, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->clearScrollingCache()V

    :cond_1
    const/high16 v8, -0x80000000

    iput v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->access$3400(Lcom/car/launchercommon/TwoWayAbsListView;)V

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v8}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2700(Lcom/car/launchercommon/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-ne v2, v10, :cond_0

    goto :goto_1

    :pswitch_1
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v8, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v8, v8, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionY:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :pswitch_3
    iget-object v6, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iput v8, v6, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v6, v8}, Lcom/car/launchercommon/TwoWayAbsListView;->access$3302(Lcom/car/launchercommon/TwoWayAbsListView;I)I

    invoke-virtual {p0, v7}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->isEnabled()Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->isClickable()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->isLongClickable()Z

    move-result v20

    if-eqz v20, :cond_1

    :cond_0
    const/16 v20, 0x1

    :goto_0
    return v20

    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2700(Lcom/car/launchercommon/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2702(Lcom/car/launchercommon/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2700(Lcom/car/launchercommon/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_1
    const/16 v20, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/car/launchercommon/TwoWayAbsListView;->pointToPosition(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    if-ltz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v20

    check-cast v20, Landroid/widget/ListAdapter;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2800(Lcom/car/launchercommon/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;)V

    invoke-static/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2802(Lcom/car/launchercommon/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2800(Lcom/car/launchercommon/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v21

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    if-ltz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    invoke-virtual/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v13, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v20

    if-eqz v20, :cond_9

    if-gez v13, :cond_9

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->createScrollingCache()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mMotionCorrection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->findMotionRowY(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->flywheelTouch()V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionY:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mMotionCorrection:I

    move/from16 v20, v0

    sub-int v9, v9, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    move/from16 v20, v0

    const/high16 v21, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    move/from16 v20, v0

    sub-int v11, v19, v20

    :goto_3
    const/4 v5, 0x0

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->trackMotionScroll(II)Z

    move-result v5

    :cond_a
    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v20

    if-lez v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->findMotionRowY(I)I

    move-result v13

    if-ltz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    invoke-virtual/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v13, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->invalidate()V

    :cond_c
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    goto/16 :goto_1

    :cond_d
    move v11, v9

    goto :goto_3

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_2

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$600(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2700(Lcom/car/launchercommon/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2700(Lcom/car/launchercommon/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2702(Lcom/car/launchercommon/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->access$3302(Lcom/car/launchercommon/TwoWayAbsListView;I)I

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v13, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    invoke-virtual/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_10

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2900(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;

    move-result-object v20

    if-nez v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;Lcom/car/launchercommon/TwoWayAbsListView$1;)V

    invoke-static/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2902(Lcom/car/launchercommon/TwoWayAbsListView;Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;)Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2900(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;

    move-result-object v15

    iput-object v6, v15, Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;->mChild:Landroid/view/View;

    iput v13, v15, Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;->mClickMotionPosition:I

    invoke-virtual {v15}, Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;->rememberWindowAttachCount()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v13, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mResurrectToPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2800(Lcom/car/launchercommon/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v20

    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->layoutChildren()V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_14

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_14

    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v15}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$1;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;Landroid/view/View;Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6
    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$600(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

    move-result-object v20

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    goto :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    if-nez v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    add-int/lit8 v21, v7, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2700(Lcom/car/launchercommon/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v17

    const/16 v20, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v12, v0

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->access$3100(Lcom/car/launchercommon/TwoWayAbsListView;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v20, v0

    if-nez v20, :cond_1a

    new-instance v20, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;Lcom/car/launchercommon/TwoWayAbsListView$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    :cond_1a
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v20, v0

    neg-int v0, v12

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;->start(I)V

    goto/16 :goto_4

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_1d

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->clearScrollingCache()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$600(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2700(Lcom/car/launchercommon/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2700(Lcom/car/launchercommon/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2702(Lcom/car/launchercommon/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->access$3302(Lcom/car/launchercommon/TwoWayAbsListView;I)I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method resurrectSelection()Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayAbsListView;->getBottom()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayAbsListView;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mResurrectToPosition:I

    const/4 v6, 0x1

    if-lt v14, v7, :cond_3

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    move v12, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v12, v18

    invoke-virtual/range {v17 .. v18}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v13, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mResurrectToPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/car/launchercommon/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->clearScrollingCache()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v13, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mSpecificTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    if-lt v12, v7, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/car/launchercommon/TwoWayAbsListView;->setSelectionInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayAbsListView;->invokeOnItemScrollListener()V

    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    if-ltz v12, :cond_c

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_2
    if-le v11, v4, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto/16 :goto_1

    :cond_3
    if-ge v14, v7, :cond_7

    move v12, v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    if-nez v8, :cond_5

    move v13, v15

    if-gtz v7, :cond_4

    if-ge v15, v5, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    :cond_5
    if-lt v15, v5, :cond_6

    add-int v12, v7, v8

    move v13, v15

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    const/4 v6, 0x0

    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    add-int/lit8 v8, v3, -0x1

    :goto_4
    if-ltz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    move v13, v15

    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_8

    if-le v2, v4, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    :cond_9
    if-gt v2, v4, :cond_a

    add-int v12, v7, v8

    move v13, v15

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_b
    const/4 v12, -0x1

    goto/16 :goto_2

    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method trackMotionScroll(II)Z
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    const/16 v24, 0x1

    :goto_0
    return v24

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    add-int/lit8 v25, v5, -0x1

    invoke-virtual/range {v24 .. v25}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v20, v24, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v9, v24, v25

    sub-int v21, v17, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingBottom()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/car/launchercommon/TwoWayAbsListView;->getPaddingTop()I

    move-result v25

    sub-int v14, v24, v25

    if-gez p1, :cond_1

    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-gez p2, :cond_2

    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v10, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    if-nez v10, :cond_3

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_3

    if-ltz p1, :cond_3

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_2
    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_3
    add-int v24, v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    move/from16 v0, v17

    if-gt v0, v9, :cond_4

    if-gtz p1, :cond_4

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_4
    if-gez p2, :cond_c

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/car/launchercommon/TwoWayAbsListView;->isInTouchMode()Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/car/launchercommon/TwoWayAbsListView;->hideSelector()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeaderViewsCount()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/car/launchercommon/TwoWayAbsListView;->getFooterViewsCount()I

    move-result v25

    sub-int v12, v24, v25

    const/16 v22, 0x0

    const/4 v7, 0x0

    if-eqz v8, :cond_f

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v24, p2

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-lt v0, v1, :cond_d

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    move/from16 v24, v0

    add-int v24, v24, p1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewNewTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mBlockLayoutRequests:Z

    if-lez v7, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->access$3500(Lcom/car/launchercommon/TwoWayAbsListView;II)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->offsetChildrenTopAndBottom(I)V

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    add-int v25, v25, v7

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/car/launchercommon/TwoWayAbsListView;->invalidate()V

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_9

    move/from16 v0, v21

    if-ge v0, v2, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/car/launchercommon/TwoWayAbsListView;->fillGap(Z)V

    :cond_a
    if-nez v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v6, v24, v25

    if-ltz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v6, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/car/launchercommon/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/car/launchercommon/TwoWayAbsListView;->mBlockLayoutRequests:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/car/launchercommon/TwoWayAbsListView;->invokeOnItemScrollListener()V

    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v7, v7, 0x1

    add-int v19, v10, v15

    move/from16 v0, v19

    if-lt v0, v13, :cond_e

    move/from16 v0, v19

    if-ge v0, v12, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v3, v24, p2

    add-int/lit8 v15, v5, -0x1

    :goto_5
    if-ltz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v3, :cond_6

    move/from16 v22, v15

    add-int/lit8 v7, v7, 0x1

    add-int v19, v10, v15

    move/from16 v0, v19

    if-lt v0, v13, :cond_10

    move/from16 v0, v19

    if-ge v0, v12, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_10
    add-int/lit8 v15, v15, -0x1

    goto :goto_5
.end method
