.class Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;
.super Lcom/car/launchercommon/TwoWayGridView$GridBuilder;
.source "TwoWayGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalGridBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/TwoWayGridView;


# direct methods
.method private constructor <init>(Lcom/car/launchercommon/TwoWayGridView;)V
    .locals 1

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/launchercommon/TwoWayGridView$GridBuilder;-><init>(Lcom/car/launchercommon/TwoWayGridView;Lcom/car/launchercommon/TwoWayGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/launchercommon/TwoWayGridView;Lcom/car/launchercommon/TwoWayGridView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;-><init>(Lcom/car/launchercommon/TwoWayGridView;)V

    return-void
.end method

.method private adjustForLeftFadingEdge(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v2, p3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v3, v0}, Lcom/car/launchercommon/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    :cond_0
    return-void
.end method

.method private adjustForRightFadingEdge(Landroid/view/View;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v1, v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v2, v3, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    neg-int v4, v0

    invoke-virtual {v3, v4}, Lcom/car/launchercommon/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    :cond_0
    return-void
.end method

.method private adjustViewsLeftOrRight()V
    .locals 6

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v3}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v3, v3, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v4, v4, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v3, v3, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v3}, Lcom/car/launchercommon/TwoWayGridView;->access$700(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v3

    sub-int/2addr v2, v3

    :cond_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    neg-int v4, v2

    invoke-virtual {v3, v4}, Lcom/car/launchercommon/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v4}, Lcom/car/launchercommon/TwoWayGridView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v5, v5, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v3, v3, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v4, v4, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v3}, Lcom/car/launchercommon/TwoWayGridView;->access$700(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private correctTooLeft(III)V
    .locals 9

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v4, v7, -0x1

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_3

    if-lez p3, :cond_3

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {v7, v8}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v7}, Lcom/car/launchercommon/TwoWayGridView;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayGridView;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v0, v7, v8

    sub-int v6, v0, v5

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lez v6, :cond_3

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v7, :cond_3

    :cond_0
    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_1
    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v7, v6}, Lcom/car/launchercommon/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v8, v8, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    :cond_3
    return-void
.end method

.method private correctTooRight(III)V
    .locals 10

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v8, v8, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v8, v8, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v8}, Lcom/car/launchercommon/TwoWayGridView;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v9}, Lcom/car/launchercommon/TwoWayGridView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v9, v9, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    sub-int v6, v2, v7

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    add-int/lit8 v9, p3, -0x1

    invoke-virtual {v8, v9}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v8, v8, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v4, v8, -0x1

    if-lez v6, :cond_3

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v8, v8, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_0

    if-le v5, v0, :cond_3

    :cond_0
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v8, v8, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_1

    sub-int v8, v5, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_1
    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    neg-int v9, v6

    invoke-virtual {v8, v9}, Lcom/car/launchercommon/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v8, v8, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_3

    iget-object v8, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v8, v8, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    :cond_2
    add-int v8, v4, p1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    :cond_3
    return-void
.end method

.method private determineRows(I)V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$1200(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v1

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$800(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$2500(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v0

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$1000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->access$702(Lcom/car/launchercommon/TwoWayGridView;I)I

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$2600(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    if-lez v0, :cond_1

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$1200(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v6}, Lcom/car/launchercommon/TwoWayGridView;->access$1200(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v6

    add-int/2addr v6, v0

    div-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2002(Lcom/car/launchercommon/TwoWayGridView;I)I

    :goto_0
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4, v7}, Lcom/car/launchercommon/TwoWayGridView;->access$2002(Lcom/car/launchercommon/TwoWayGridView;I)I

    :cond_0
    packed-switch v3, :pswitch_data_0

    const/4 v2, 0x0

    packed-switch v3, :pswitch_data_1

    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2002(Lcom/car/launchercommon/TwoWayGridView;I)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2600(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2002(Lcom/car/launchercommon/TwoWayGridView;I)I

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2500(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2102(Lcom/car/launchercommon/TwoWayGridView;I)I

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$1200(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->access$402(Lcom/car/launchercommon/TwoWayGridView;I)I

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    div-int v5, v2, v5

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2102(Lcom/car/launchercommon/TwoWayGridView;I)I

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4, v1}, Lcom/car/launchercommon/TwoWayGridView;->access$402(Lcom/car/launchercommon/TwoWayGridView;I)I

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4, v0}, Lcom/car/launchercommon/TwoWayGridView;->access$2102(Lcom/car/launchercommon/TwoWayGridView;I)I

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    if-le v4, v7, :cond_3

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    div-int v5, v2, v5

    add-int/2addr v5, v1

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->access$402(Lcom/car/launchercommon/TwoWayGridView;I)I

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    add-int v5, v1, v2

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->access$402(Lcom/car/launchercommon/TwoWayGridView;I)I

    goto/16 :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4, v0}, Lcom/car/launchercommon/TwoWayGridView;->access$2102(Lcom/car/launchercommon/TwoWayGridView;I)I

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    if-le v4, v7, :cond_4

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int v5, v2, v5

    add-int/2addr v5, v1

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->access$402(Lcom/car/launchercommon/TwoWayGridView;I)I

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayGridView;->access$402(Lcom/car/launchercommon/TwoWayGridView;I)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v1, v1, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v1, v1, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v1, v1, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v1, v1, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v2}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v2

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    invoke-direct {p0, p1, p2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14

    iget-object v12, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v12}, Lcom/car/launchercommon/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v3

    iget-object v12, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v11, v12, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    iget-object v12, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v12}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v7

    iget-object v12, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v12}, Lcom/car/launchercommon/TwoWayGridView;->access$700(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    const/4 v1, -0x1

    iget-object v12, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v12, v12, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    rem-int v12, v11, v7

    sub-int v2, v11, v12

    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v3, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->getLeftSelectionPixel(III)I

    move-result v6

    move/from16 v0, p3

    invoke-direct {p0, v0, v3, v7, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->getRightSelectionPixel(IIII)I

    move-result v9

    iget-object v12, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v12, v12, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v1

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v10

    iget-object v12, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iput v2, v12, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v12, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v12}, Lcom/car/launchercommon/TwoWayGridView;->access$500(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v6, v9}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustForLeftFadingEdge(Landroid/view/View;II)V

    invoke-direct {p0, v8, v6, v9}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustForRightFadingEdge(Landroid/view/View;II)V

    iget-object v12, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v12, v12, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    sub-int v12, v2, v7

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-direct {p0, v12, v13}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    add-int v12, v2, v7

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v13, v4

    invoke-direct {p0, v12, v13}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    :goto_2
    return-object v10

    :cond_0
    iget-object v12, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v12, v12, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v5, v12, v11

    iget-object v12, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v12, v12, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v5, v7

    sub-int v13, v5, v13

    sub-int v1, v12, v13

    const/4 v12, 0x0

    sub-int v13, v1, v7

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_1
    move v12, v2

    goto :goto_1

    :cond_2
    add-int v12, v1, v7

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v13, v4

    invoke-direct {p0, v12, v13}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-direct {p0, v12, v13}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v1, v1, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v2, v2, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v1, v1, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v2, v2, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v1, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v2, v2, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v3}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v3

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillLeft(II)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v3, v3, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    :goto_0
    if-le p2, v0, :cond_1

    if-ltz p1, :cond_1

    invoke-direct {p0, p1, p2, v5}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v3}, Lcom/car/launchercommon/TwoWayGridView;->access$500(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$700(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    sub-int p2, v3, v4

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iput p1, v3, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v3}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v3

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v3, v3, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    :cond_2
    return-object v1
.end method

.method private fillRight(II)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v3}, Lcom/car/launchercommon/TwoWayGridView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v4}, Lcom/car/launchercommon/TwoWayGridView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v4, v4, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v4

    :goto_0
    if-ge p2, v0, :cond_1

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v3, v3, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    if-ge p1, v3, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v3}, Lcom/car/launchercommon/TwoWayGridView;->access$500(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayGridView;->access$700(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    add-int p2, v3, v4

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v3}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15

    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v13}, Lcom/car/launchercommon/TwoWayGridView;->reconcileSelectedPosition()I

    move-result v12

    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v13}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v7

    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v13}, Lcom/car/launchercommon/TwoWayGridView;->access$700(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    const/4 v1, -0x1

    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v13, v13, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    rem-int v13, v12, v7

    sub-int v2, v12, v13

    :goto_0
    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v13}, Lcom/car/launchercommon/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v3

    move/from16 v0, p1

    invoke-direct {p0, v0, v3, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->getLeftSelectionPixel(III)I

    move-result v6

    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v13, v13, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v1

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v6, v14}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v11

    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iput v2, v13, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v13}, Lcom/car/launchercommon/TwoWayGridView;->access$500(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v9

    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v13, v13, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    add-int v13, v2, v7

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v14, v4

    invoke-direct {p0, v13, v14}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->pinToRight(I)V

    sub-int v13, v2, v7

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v4

    invoke-direct {p0, v13, v14}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    :goto_2
    return-object v11

    :cond_0
    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v13, v13, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v5, v13, v12

    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v13, v13, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v5, v7

    sub-int v14, v5, v14

    sub-int v1, v13, v14

    const/4 v13, 0x0

    sub-int v14, v1, v7

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_1
    move v13, v2

    goto :goto_1

    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v0, v3, v7, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->getRightSelectionPixel(IIII)I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v13

    sub-int v8, v10, v13

    iget-object v13, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v13, v8}, Lcom/car/launchercommon/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v4

    invoke-direct {p0, v13, v14}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->pinToLeft(I)V

    add-int v13, v1, v7

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v14, v4

    invoke-direct {p0, v13, v14}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12

    iget-object v10, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v10}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v6

    const/4 v4, -0x1

    iget-object v10, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v10, v10, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    rem-int v10, p1, v6

    sub-int v5, p1, v10

    :goto_0
    iget-object v10, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v10, v10, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iput v5, v10, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v10, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v10}, Lcom/car/launchercommon/TwoWayGridView;->access$500(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v9, 0x0

    :cond_0
    :goto_2
    return-object v9

    :cond_1
    iget-object v10, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v10, v10, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v2, v10, p1

    iget-object v10, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v10, v10, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v2, v6

    sub-int v11, v2, v11

    sub-int v4, v10, v11

    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_2
    move v10, v5

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v10}, Lcom/car/launchercommon/TwoWayGridView;->access$700(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v1

    iget-object v10, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v10, v10, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int/2addr v11, v1

    invoke-direct {p0, v10, v11}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v11, v1

    invoke-direct {p0, v10, v11}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object v8

    iget-object v10, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v10}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0, v6, v1, v0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->correctTooLeft(III)V

    :cond_4
    :goto_3
    if-nez v9, :cond_0

    if-eqz v3, :cond_6

    move-object v9, v3

    goto :goto_2

    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v11, v1

    invoke-direct {p0, v10, v11}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int/2addr v11, v1

    invoke-direct {p0, v10, v11}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    move-result-object v3

    iget-object v10, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v10}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0, v6, v1, v0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->correctTooRight(III)V

    goto :goto_3

    :cond_6
    move-object v9, v8

    goto :goto_2
.end method

.method private getLeftSelectionPixel(III)I
    .locals 1

    move v0, p1

    if-lez p3, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private getRightSelectionPixel(IIII)I
    .locals 3

    move v0, p1

    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v2, v2, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    sub-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private makeColumn(IIZ)Landroid/view/View;
    .locals 15

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayGridView;->access$2100(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v11

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayGridView;->access$400(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v14

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayGridView;->access$800(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v14

    :goto_0
    add-int v4, v2, v0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v0

    add-int v0, v0, p1

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v2, v2, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_0
    :goto_1
    const/4 v13, 0x0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayGridView;->shouldShowSelector()Z

    move-result v8

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayGridView;->touchModeDrawsInPressedState()Z

    move-result v9

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v12, v0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    const/4 v7, 0x0

    move/from16 v1, p1

    :goto_2
    if-ge v1, v10, :cond_8

    if-ne v1, v12, :cond_6

    const/4 v5, 0x1

    :goto_3
    if-eqz p3, :cond_7

    const/4 v6, -0x1

    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    add-int/2addr v4, v11

    add-int/lit8 v0, v10, -0x1

    if-ge v1, v0, :cond_1

    add-int/2addr v4, v14

    :cond_1
    if-eqz v5, :cond_3

    if-nez v8, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    move-object v13, v7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v10, p1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v2}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v2

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v0, v10, p1

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v2}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v0

    sub-int v2, v10, p1

    sub-int/2addr v0, v2

    add-int v2, v11, v14

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    sub-int v6, v1, p1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v0, v7}, Lcom/car/launchercommon/TwoWayGridView;->access$502(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;)Landroid/view/View;

    if-eqz v13, :cond_9

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v2}, Lcom/car/launchercommon/TwoWayGridView;->access$500(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/car/launchercommon/TwoWayGridView;->access$902(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;)Landroid/view/View;

    :cond_9
    return-object v13
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$700(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v6

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    sub-int v18, v17, p1

    sub-int v19, v17, p1

    rem-int v19, v19, v9

    sub-int v10, v18, v19

    rem-int v18, v17, v9

    sub-int v4, v17, v18

    :goto_0
    sub-int v15, v4, v10

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v4}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->getLeftSelectionPixel(III)I

    move-result v8

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v9, v4}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->getRightSelectionPixel(IIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v4, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    if-lez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$900(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_1

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    :goto_2
    add-int v18, v11, v6

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$500(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8, v14}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustForRightFadingEdge(Landroid/view/View;II)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    sub-int v18, v4, v9

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v19, v6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    add-int v18, v4, v9

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v19

    add-int v19, v19, v6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    :goto_4
    return-object v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    sub-int v7, v18, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    rem-int v19, v7, v9

    sub-int v19, v7, v19

    sub-int v3, v18, v19

    const/16 v18, 0x0

    sub-int v19, v3, v9

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    sub-int v19, v17, p1

    sub-int v7, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    rem-int v19, v7, v9

    sub-int v19, v7, v19

    sub-int v10, v18, v19

    const/16 v18, 0x0

    sub-int v19, v10, v9

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$900(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v11

    goto/16 :goto_1

    :cond_2
    move v3, v4

    goto/16 :goto_2

    :cond_3
    if-gez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$900(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_4

    const/4 v12, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    :goto_6
    sub-int v18, v12, v6

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$500(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8, v14}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustForLeftFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$900(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v12

    goto :goto_5

    :cond_5
    move v3, v4

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$900(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_7

    const/4 v12, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    :goto_8
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v12, v1}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->makeColumn(IIZ)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$500(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v13

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$900(Lcom/car/launchercommon/TwoWayGridView;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v12

    goto :goto_7

    :cond_8
    move v3, v4

    goto :goto_8

    :cond_9
    add-int v18, v4, v9

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v19

    add-int v19, v19, v6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    add-int/lit8 v18, v4, -0x1

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v19, v6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToLeft(I)V
    .locals 4

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v2, v2, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, p1, v0

    if-gez v1, :cond_0

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v2, v1}, Lcom/car/launchercommon/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    :cond_0
    return-void
.end method

.method private pinToRight(I)V
    .locals 5

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v3}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v3, v3, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v4, v4, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v1, p1, v2

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v3, v1}, Lcom/car/launchercommon/TwoWayGridView;->offsetChildrenLeftAndRight(I)V

    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 22

    if-eqz p6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v12, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v12, v0, :cond_6

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v13, v0, Lcom/car/launchercommon/TwoWayGridView;->mTouchMode:I

    if-lez v13, :cond_7

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    const/4 v11, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_8

    const/16 v16, 0x1

    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_9

    :cond_0
    const/4 v14, 0x1

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;

    if-nez v15, :cond_1

    new-instance v15, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x1

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;-><init>(III)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;->viewType:I

    if-eqz p7, :cond_a

    iget-boolean v0, v15, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-static {v0, v1, v2, v15}, Lcom/car/launchercommon/TwoWayGridView;->access$2700(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    if-eqz v17, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setSelected(Z)V

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->requestFocus()Z

    :cond_2
    if-eqz v16, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    if-eqz v14, :cond_b

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    iget v0, v15, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->access$2100(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    iget v0, v15, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v5}, Landroid/view/View;->measure(II)V

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-eqz p4, :cond_c

    move/from16 v6, p3

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->access$1900(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v19

    and-int/lit8 v19, v19, 0x70

    sparse-switch v19, :sswitch_data_0

    move/from16 v8, p5

    :goto_8
    if-eqz v14, :cond_d

    add-int v7, v6, v18

    add-int v4, v8, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v7, v4}, Landroid/view/View;->layout(IIII)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_a
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p8

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v15, v3}, Lcom/car/launchercommon/TwoWayGridView;->access$2800(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/car/launchercommon/TwoWayGridView;->access$2900(Lcom/car/launchercommon/TwoWayGridView;Landroid/view/View;)V

    goto :goto_6

    :cond_c
    sub-int v6, p3, v18

    goto :goto_7

    :sswitch_0
    move/from16 v8, p5

    goto :goto_8

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->access$2100(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v19

    sub-int v19, v19, v10

    div-int/lit8 v19, v19, 0x2

    add-int v8, p5, v19

    goto :goto_8

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->access$2100(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v19

    add-int v19, v19, p5

    sub-int v8, v19, v10

    goto/16 :goto_8

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v8, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_2
        0x30 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected arrowScroll(I)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x6

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v4, v6, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v6}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v3

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v6, v6, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    div-int v6, v4, v3

    mul-int v5, v6, v3

    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/car/launchercommon/TwoWayGridView;->playSoundEffect(I)V

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v6}, Lcom/car/launchercommon/TwoWayGridView;->invokeOnItemScrollListener()V

    :cond_1
    if-eqz v2, :cond_2

    :cond_2
    return v2

    :cond_3
    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v6, v6, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v6, v6, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :sswitch_0
    if-lez v5, :cond_0

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iput v8, v6, Lcom/car/launchercommon/TwoWayGridView;->mLayoutMode:I

    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v6, v6, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iput v8, v6, Lcom/car/launchercommon/TwoWayGridView;->mLayoutMode:I

    add-int v6, v4, v3

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    if-le v4, v5, :cond_0

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iput v8, v6, Lcom/car/launchercommon/TwoWayGridView;->mLayoutMode:I

    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    if-ge v4, v0, :cond_0

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iput v8, v6, Lcom/car/launchercommon/TwoWayGridView;->mLayoutMode:I

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method protected fillGap(Z)V
    .locals 7

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v2

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$700(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v1

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v5}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_2

    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v4, v5, v1

    :goto_0
    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v5, v5, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    add-int v3, v5, v0

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v5, v5, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_0

    add-int/lit8 v5, v2, -0x1

    add-int/2addr v3, v5

    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v5}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v2, v1, v5}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->correctTooLeft(III)V

    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v5}, Lcom/car/launchercommon/TwoWayGridView;->getListPaddingLeft()I

    move-result v4

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v4, v5, v1

    :goto_2
    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v3, v5, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v5, v5, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    sub-int/2addr v3, v2

    :goto_3
    invoke-direct {p0, v3, v4}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillLeft(II)Landroid/view/View;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v5}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v2, v1, v5}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->correctTooRight(III)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v5}, Lcom/car/launchercommon/TwoWayGridView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v6}, Lcom/car/launchercommon/TwoWayGridView;->getListPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method

.method protected isCandidateSelection(II)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v7}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    sub-int v3, v7, p1

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v7}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v4

    iget-object v7, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v7, v7, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-nez v7, :cond_0

    rem-int v7, p1, v4

    sub-int v1, p1, v7

    add-int v7, v1, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    sparse-switch p2, :sswitch_data_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    add-int/lit8 v7, v2, -0x1

    rem-int v8, v3, v4

    sub-int v8, v3, v8

    sub-int v0, v7, v8

    sub-int v7, v0, v4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :sswitch_0
    if-ne p1, v1, :cond_2

    :cond_1
    :goto_1
    return v5

    :cond_2
    move v5, v6

    goto :goto_1

    :sswitch_1
    if-eqz v1, :cond_1

    move v5, v6

    goto :goto_1

    :sswitch_2
    if-eq p1, v1, :cond_1

    move v5, v6

    goto :goto_1

    :sswitch_3
    add-int/lit8 v7, v2, -0x1

    if-eq v1, v7, :cond_1

    move v5, v6

    goto :goto_1

    :sswitch_4
    if-ne p1, v1, :cond_3

    if-eqz v1, :cond_1

    :cond_3
    move v5, v6

    goto :goto_1

    :sswitch_5
    if-ne p1, v0, :cond_4

    add-int/lit8 v7, v2, -0x1

    if-eq v0, v7, :cond_1

    :cond_4
    move v5, v6

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected layoutChildren()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->getRight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->getLeft()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->getChildCount()I

    move-result v4

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mLayoutMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    if-ltz v11, :cond_0

    if-ge v11, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v7, v0, Lcom/car/launchercommon/TwoWayGridView;->mDataChanged:Z

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->handleDataChanged()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->resetList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->invokeOnItemScrollListener()V

    :goto_1
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    if-ltz v11, :cond_1

    if-ge v11, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v18, v0

    if-ltz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    move-object/from16 v16, v0

    if-eqz v7, :cond_4

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v9}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->fillActiveViews(II)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->access$2200(Lcom/car/launchercommon/TwoWayGridView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mLayoutMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->isInTouchMode()Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_6
    const/16 v18, -0x1

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayGridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillFromTop(I)Landroid/view/View;

    move-result-object v17

    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayGridView;->positionSelector(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/car/launchercommon/TwoWayGridView;->mSelectedTop:I

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/car/launchercommon/TwoWayGridView;->mLayoutMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/car/launchercommon/TwoWayGridView;->mDataChanged:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/car/launchercommon/TwoWayGridView;->mNeedSync:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->setNextSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->updateScrollIndicators()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    if-lez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->checkSelectionChanged()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->invokeOnItemScrollListener()V

    goto/16 :goto_1

    :pswitch_3
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5, v6}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillFromSelection(III)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillSelection(II)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_4

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillFromTop(I)Landroid/view/View;

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillRight(II)Landroid/view/View;

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->adjustViewsLeftOrRight()V

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSpecificTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSyncPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSpecificTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v6}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->moveSelection(III)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_4

    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    move/from16 v18, v0

    add-int/lit8 v12, v18, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->isInTouchMode()Z

    move-result v18

    if-eqz v18, :cond_d

    :cond_c
    const/16 v18, -0x1

    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayGridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillFromBottom(II)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_4

    :cond_d
    move/from16 v18, v12

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    if-ltz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSelectedPosition:I

    move/from16 v18, v0

    if-nez v15, :cond_f

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_4

    :cond_f
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v14, :cond_11

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_4

    :cond_11
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_8

    :cond_12
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->fillSpecific(II)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mTouchMode:I

    move/from16 v18, v0

    if-lez v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/car/launchercommon/TwoWayGridView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/car/launchercommon/TwoWayGridView;->mSelectedTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    :goto_0
    return-object v9

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v2, v2, Lcom/car/launchercommon/TwoWayGridView;->mIsScrap:[Z

    invoke-virtual {v0, p1, v2}, Lcom/car/launchercommon/TwoWayGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    goto :goto_0
.end method

.method protected measure(II)V
    .locals 20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayGridView;->access$2100(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v17

    if-lez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayGridView;->access$2100(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v10, v17, v18

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayGridView;->access$2300(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v17

    add-int v10, v10, v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v17, v10, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->determineRows(I)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v8, v0, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    if-lez v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mIsScrap:[Z

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/car/launchercommon/TwoWayGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;

    if-nez v14, :cond_1

    new-instance v14, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;->viewType:I

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;->forceAdd:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayGridView;->access$2100(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;->height:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    const/16 v17, 0x0

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v18, 0x0

    iget v0, v14, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;->width:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    invoke-virtual {v3, v7, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    move-object/from16 v17, v0

    iget v0, v14, Lcom/car/launchercommon/TwoWayAbsListView$LayoutParams;->viewType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mRecycler:Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/car/launchercommon/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_2
    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v17, v17, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/car/launchercommon/TwoWayGridView;->getHorizontalFadingEdgeLength()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    add-int v16, v17, v18

    :cond_3
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v13, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v12

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_5

    add-int/2addr v13, v6

    add-int v17, v11, v12

    move/from16 v0, v17

    if-ge v0, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/car/launchercommon/TwoWayGridView;->access$700(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v17

    add-int v13, v13, v17

    :cond_4
    move/from16 v0, v16

    if-lt v13, v0, :cond_9

    move/from16 v13, v16

    :cond_5
    move/from16 v16, v13

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1, v10}, Lcom/car/launchercommon/TwoWayGridView;->access$2400(Lcom/car/launchercommon/TwoWayGridView;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move/from16 v0, p1

    move-object/from16 v1, v17

    iput v0, v1, Lcom/car/launchercommon/TwoWayGridView;->mWidthMeasureSpec:I

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v10, v17, v18

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListAdapter;->getCount()I

    move-result v17

    goto/16 :goto_1

    :cond_9
    add-int/2addr v11, v12

    goto :goto_2
.end method

.method protected setSelectionInt(I)V
    .locals 7

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v4, v5, Lcom/car/launchercommon/TwoWayGridView;->mNextSelectedPosition:I

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v5, p1}, Lcom/car/launchercommon/TwoWayGridView;->setNextSelectedPositionInt(I)V

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-virtual {v5}, Lcom/car/launchercommon/TwoWayGridView;->layoutChildren()V

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v5, v5, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v5, v5, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v6, v6, Lcom/car/launchercommon/TwoWayGridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    :goto_0
    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget-boolean v5, v5, Lcom/car/launchercommon/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v5, v5, Lcom/car/launchercommon/TwoWayGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    :goto_1
    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    div-int v1, v0, v5

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayGridView;->access$2000(Lcom/car/launchercommon/TwoWayGridView;)I

    move-result v5

    div-int v3, v2, v5

    if-eq v1, v3, :cond_0

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/car/launchercommon/TwoWayGridView$HorizontalGridBuilder;->this$0:Lcom/car/launchercommon/TwoWayGridView;

    iget v0, v5, Lcom/car/launchercommon/TwoWayGridView;->mNextSelectedPosition:I

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method
