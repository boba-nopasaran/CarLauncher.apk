.class final Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/TwoWayAbsListView;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v4, v4, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iput v7, v4, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v5, v5, Lcom/car/launchercommon/TwoWayAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v6, v6, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/car/launchercommon/TwoWayAbsListView;->mLayoutMode:I

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-boolean v4, v4, Lcom/car/launchercommon/TwoWayAbsListView;->mDataChanged:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/car/launchercommon/TwoWayAbsListView;->layoutChildren()V

    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v4, v0}, Lcom/car/launchercommon/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v4, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->setPressed(Z)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/car/launchercommon/TwoWayAbsListView;->isLongClickable()Z

    move-result v2

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v4, v4, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v4, v4, Lcom/car/launchercommon/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_3

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayAbsListView;->access$600(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    new-instance v5, Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

    iget-object v6, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;Lcom/car/launchercommon/TwoWayAbsListView$1;)V

    invoke-static {v4, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->access$602(Lcom/car/launchercommon/TwoWayAbsListView;Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;)Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

    :cond_1
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v4}, Lcom/car/launchercommon/TwoWayAbsListView;->access$600(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v5}, Lcom/car/launchercommon/TwoWayAbsListView;->access$600(Lcom/car/launchercommon/TwoWayAbsListView;)Lcom/car/launchercommon/TwoWayAbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iput v8, v4, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForTap;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iput v8, v4, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    goto :goto_1
.end method
