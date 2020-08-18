.class Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->flywheelTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v2, v2, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v2}, Lcom/car/launchercommon/TwoWayAbsListView;->access$2700(Lcom/car/launchercommon/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v3, v3, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v3, v3, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v3}, Lcom/car/launchercommon/TwoWayAbsListView;->access$3600(Lcom/car/launchercommon/TwoWayAbsListView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    neg-float v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v3, v3, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v3, v3, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-static {v3}, Lcom/car/launchercommon/TwoWayAbsListView;->access$3100(Lcom/car/launchercommon/TwoWayAbsListView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->isScrollingInDirection(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v2, v2, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const-wide/16 v4, 0x28

    invoke-virtual {v2, p0, v4, v5}, Lcom/car/launchercommon/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    invoke-virtual {v2}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->endFling()V

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v2, v2, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v3, 0x3

    iput v3, v2, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    iget-object v2, p0, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable$1;->this$2:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    iget-object v2, v2, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/car/launchercommon/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto :goto_0
.end method
