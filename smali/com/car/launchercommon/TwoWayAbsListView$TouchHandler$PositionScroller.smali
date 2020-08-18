.class abstract Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PositionScroller"
.end annotation


# static fields
.field protected static final MOVE_DOWN_BOUND:I = 0x3

.field protected static final MOVE_DOWN_POS:I = 0x1

.field protected static final MOVE_UP_BOUND:I = 0x4

.field protected static final MOVE_UP_POS:I = 0x2

.field protected static final SCROLL_DURATION:I = 0x190


# instance fields
.field protected mBoundPos:I

.field protected final mExtraScroll:I

.field protected mLastSeenPos:I

.field protected mMode:I

.field protected mScrollDuration:I

.field protected mTargetPos:I

.field protected mVertical:Z

.field final synthetic this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mExtraScroll:I

    return-void
.end method


# virtual methods
.method public abstract run()V
.end method

.method start(I)V
    .locals 6

    const/16 v5, 0x190

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v3, v3, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v0, v3, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v3, v3, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    const/4 v3, 0x2

    iput v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    :goto_0
    if-lez v2, :cond_2

    div-int v3, v5, v2

    iput v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    :goto_1
    iput p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mTargetPos:I

    iput v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mBoundPos:I

    iput v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mLastSeenPos:I

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v3, v3, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v3, p0}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    if-lt p1, v1, :cond_0

    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    const/4 v3, 0x1

    iput v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_0

    :cond_2
    iput v5, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method start(II)V
    .locals 11

    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    if-ne p2, v9, :cond_1

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->start(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v7, v7, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v3, v7, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v7, v7, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v7}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v4, v7, -0x1

    const/4 v6, 0x0

    if-gt p1, v3, :cond_3

    sub-int v1, v4, p2

    if-lt v1, v8, :cond_0

    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v2, v1, -0x1

    if-ge v2, v5, :cond_2

    move v6, v2

    const/4 v7, 0x4

    iput v7, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    :goto_1
    if-lez v6, :cond_5

    div-int v7, v10, v6

    iput v7, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    :goto_2
    iput p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mTargetPos:I

    iput p2, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mBoundPos:I

    iput v9, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mLastSeenPos:I

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v7, v7, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v7, p0}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    move v6, v5

    const/4 v7, 0x2

    iput v7, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_1

    :cond_3
    if-lt p1, v4, :cond_0

    sub-int v0, p2, v3

    if-lt v0, v8, :cond_0

    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v2, v0, -0x1

    if-ge v2, v5, :cond_4

    move v6, v2

    const/4 v7, 0x3

    iput v7, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_1

    :cond_4
    move v6, v5

    iput v8, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_1

    :cond_5
    iput v10, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method stop()V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$TouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/car/launchercommon/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
