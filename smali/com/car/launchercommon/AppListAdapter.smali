.class public Lcom/car/launchercommon/AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/AppListAdapter$ViewHandler;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnWidth:I

.field private mContext:Landroid/content/Context;

.field private mRowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/car/launchercommon/AppListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/launchercommon/AppListAdapter;->mAppList:Ljava/util/List;

    iput p3, p0, Lcom/car/launchercommon/AppListAdapter;->mColumnWidth:I

    iput p4, p0, Lcom/car/launchercommon/AppListAdapter;->mRowHeight:I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/localapp/ApplicationInfo;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/car/launchercommon/localapp/ApplicationInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/car/launchercommon/AppListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/car/launchercommon/AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/localapp/ApplicationInfo;

    move-object v1, p2

    check-cast v1, Lcom/car/launchercommon/ImageViewIcon;

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/car/launchercommon/AppListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    sget v3, Lcom/car/launchercommon/R$layout;->app_icon:I

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/ImageViewIcon;

    :cond_0
    iget v3, p0, Lcom/car/launchercommon/AppListAdapter;->mRowHeight:I

    invoke-virtual {v1, v3}, Lcom/car/launchercommon/ImageViewIcon;->setHeight(I)V

    iget v3, p0, Lcom/car/launchercommon/AppListAdapter;->mColumnWidth:I

    invoke-virtual {v1, v3}, Lcom/car/launchercommon/ImageViewIcon;->setWidth(I)V

    iget-object v3, v0, Lcom/car/launchercommon/localapp/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/car/launchercommon/ImageViewIcon;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Lcom/car/launchercommon/ImageViewIcon;->applyFromApplicationInfo(Lcom/car/launchercommon/localapp/ApplicationInfo;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Lcom/car/launchercommon/ImageViewIcon;->setGravity(I)V

    iget v3, p0, Lcom/car/launchercommon/AppListAdapter;->mRowHeight:I

    add-int/lit8 v3, v3, -0x34

    const/4 v4, 0x2

    invoke-virtual {v1, v5, v3, v5, v4}, Lcom/car/launchercommon/ImageViewIcon;->setPadding(IIII)V

    return-object v1
.end method

.method public remove(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/car/launchercommon/AppListAdapter;->notifyDataSetChanged()V

    return-void
.end method
