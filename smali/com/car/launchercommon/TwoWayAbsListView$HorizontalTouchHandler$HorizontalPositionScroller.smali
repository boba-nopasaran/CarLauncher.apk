.class Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;
.super Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalPositionScroller"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;-><init>(Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v4, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v9, v21, -0x1

    add-int v7, v4, v9

    if-ltz v9, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v7, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v11, v14, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v7, v0, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v13, v11

    add-int v22, v22, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    move-object/from16 v0, p0

    iput v7, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_1
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v4, v0, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v2, v0, :cond_0

    add-int v21, v4, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    add-int/lit8 v15, v4, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int v23, v19, v18

    sub-int v23, v23, v3

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    move-object/from16 v0, p0

    iput v15, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    move/from16 v0, v18

    if-le v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v18, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v4, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v6, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    move-object/from16 v0, p0

    iput v4, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v4, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v21

    add-int/lit8 v9, v21, -0x2

    if-ltz v9, :cond_0

    add-int v7, v4, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v7, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v11, v14, v10

    move-object/from16 v0, p0

    iput v7, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v7, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    move/from16 v22, v0

    sub-int v22, v11, v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    sub-int v20, v14, v21

    add-int v12, v10, v13

    move/from16 v0, v20

    if-le v0, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    move-object/from16 v21, v0

    sub-int v22, v20, v12

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

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
