.class Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;
.super Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerticalPositionScroller"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v5, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v12, v21, -0x1

    add-int v8, v5, v12

    if-ltz v12, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v8, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int v13, v15, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v8, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v11, v13

    add-int v22, v22, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    move-object/from16 v0, p0

    iput v8, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_1
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v5, v0, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v3, v0, :cond_0

    add-int v21, v5, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    add-int/lit8 v16, v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int v23, v18, v20

    sub-int v23, v23, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    move/from16 v0, v20

    if-le v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v20, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v5, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-lez v5, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v7, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    move-object/from16 v0, p0

    iput v5, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v5, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v12, v21, -0x2

    if-ltz v12, :cond_0

    add-int v8, v5, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int v13, v15, v14

    move-object/from16 v0, p0

    iput v8, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v8, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    move/from16 v22, v0

    sub-int v22, v13, v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    sub-int v2, v15, v21

    add-int v10, v14, v11

    if-le v2, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v2, v10

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
