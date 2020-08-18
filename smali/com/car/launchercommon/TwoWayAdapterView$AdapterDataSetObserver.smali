.class Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "TwoWayAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/TwoWayAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/car/launchercommon/TwoWayAdapterView;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/TwoWayAdapterView;)V
    .locals 1

    iput-object p1, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method

.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mDataChanged:Z

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iget v1, v1, Lcom/car/launchercommon/TwoWayAdapterView;->mItemCount:I

    iput v1, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mOldItemCount:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-virtual {v1}, Lcom/car/launchercommon/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mItemCount:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iget v0, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iget v0, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/car/launchercommon/TwoWayAdapterView;->access$000(Lcom/car/launchercommon/TwoWayAdapterView;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    :goto_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAdapterView;->checkFocus()V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAdapterView;->requestLayout()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mDataChanged:Z

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-static {v0}, Lcom/car/launchercommon/TwoWayAdapterView;->access$100(Lcom/car/launchercommon/TwoWayAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iget-object v1, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iget v1, v1, Lcom/car/launchercommon/TwoWayAdapterView;->mItemCount:I

    iput v1, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mOldItemCount:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iput v3, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mItemCount:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iput v2, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mSelectedPosition:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iput-wide v4, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mSelectedRowId:J

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iput v2, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mNextSelectedPosition:I

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iput-wide v4, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mNextSelectedRowId:J

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    iput-boolean v3, v0, Lcom/car/launchercommon/TwoWayAdapterView;->mNeedSync:Z

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAdapterView;->checkSelectionChanged()V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAdapterView;->checkFocus()V

    iget-object v0, p0, Lcom/car/launchercommon/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/car/launchercommon/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/car/launchercommon/TwoWayAdapterView;->requestLayout()V

    return-void
.end method
