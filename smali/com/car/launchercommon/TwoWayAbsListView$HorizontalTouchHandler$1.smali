.class Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$1;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;Landroid/view/View;Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iput-object p2, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$1;->val$performClick:Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->setPressed(Z)V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$1;->val$performClick:Lcom/car/launchercommon/TwoWayAbsListView$PerformClick;

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler$1;->this$1:Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/car/launchercommon/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/car/launchercommon/TwoWayAbsListView;->mTouchMode:I

    return-void
.end method
