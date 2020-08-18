.class Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;
.super Lcom/car/launchercommon/TwoWayAbsListView$WindowRunnnable;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/TwoWayAbsListView;


# direct methods
.method private constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView;)V
    .locals 1

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/launchercommon/TwoWayAbsListView$WindowRunnnable;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;Lcom/car/launchercommon/TwoWayAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/launchercommon/TwoWayAbsListView;Lcom/car/launchercommon/TwoWayAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;-><init>(Lcom/car/launchercommon/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/car/launchercommon/TwoWayAbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v3, v3, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v3, v3, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v4, v4, Lcom/car/launchercommon/TwoWayAbsListView;->mFirstPosition:I

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v3, v1}, Lcom/car/launchercommon/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-boolean v3, v3, Lcom/car/launchercommon/TwoWayAbsListView;->mDataChanged:Z

    if-nez v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-object v4, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget v4, v4, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    iget-wide v6, v5, Lcom/car/launchercommon/TwoWayAbsListView;->mSelectedRowId:J

    invoke-static {v3, v2, v4, v6, v7}, Lcom/car/launchercommon/TwoWayAbsListView;->access$500(Lcom/car/launchercommon/TwoWayAbsListView;Landroid/view/View;IJ)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v3, v8}, Lcom/car/launchercommon/TwoWayAbsListView;->setPressed(Z)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/car/launchercommon/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/car/launchercommon/TwoWayAbsListView;

    invoke-virtual {v3, v8}, Lcom/car/launchercommon/TwoWayAbsListView;->setPressed(Z)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
