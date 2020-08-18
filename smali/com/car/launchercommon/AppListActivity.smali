.class public Lcom/car/launchercommon/AppListActivity;
.super Landroid/app/Activity;
.source "AppListActivity.java"

# interfaces
.implements Lcom/car/launchercommon/BaseApplication$AppListChangedListener;


# static fields
.field private static COLUMNS:I = 0x0

.field private static ROWS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LC.AppListActivity"


# instance fields
.field private mAdapter:Lcom/car/launchercommon/AppListAdapter;

.field private mApp:Lcom/car/launchercommon/BaseApplication;

.field private mContext:Landroid/content/Context;

.field private mGridItemHeight:I

.field private mGridItemWidth:I

.field private mGridView:Landroid/widget/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/car/launchercommon/AppListActivity;->ROWS:I

    const/4 v0, 0x5

    sput v0, Lcom/car/launchercommon/AppListActivity;->COLUMNS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/car/launchercommon/AppListActivity;)Lcom/car/launchercommon/BaseApplication;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/AppListActivity;->mApp:Lcom/car/launchercommon/BaseApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/launchercommon/AppListActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/AppListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public appListUpdated(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/car/launchercommon/AppListAdapter;

    iget-object v1, p0, Lcom/car/launchercommon/AppListActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/car/launchercommon/AppListActivity;->mApp:Lcom/car/launchercommon/BaseApplication;

    invoke-virtual {v2}, Lcom/car/launchercommon/BaseApplication;->getAppList()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/car/launchercommon/AppListActivity;->mGridItemWidth:I

    iget v4, p0, Lcom/car/launchercommon/AppListActivity;->mGridItemHeight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/car/launchercommon/AppListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/car/launchercommon/AppListActivity;->mAdapter:Lcom/car/launchercommon/AppListAdapter;

    iget-object v0, p0, Lcom/car/launchercommon/AppListActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/car/launchercommon/AppListActivity;->mAdapter:Lcom/car/launchercommon/AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/AppListActivity;->requestWindowFeature(I)Z

    sget v2, Lcom/car/launchercommon/R$layout;->activity_applist:I

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/AppListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/car/launchercommon/AppListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/car/launchercommon/AppListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/car/launchercommon/AppListActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/car/launchercommon/BaseApplication;

    iput-object v2, p0, Lcom/car/launchercommon/AppListActivity;->mApp:Lcom/car/launchercommon/BaseApplication;

    sget v2, Lcom/car/launchercommon/R$id;->horz_gridview:I

    invoke-virtual {p0, v2}, Lcom/car/launchercommon/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/car/launchercommon/AppListActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/car/launchercommon/AppListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    const/16 v3, 0x400

    if-le v2, v3, :cond_0

    const/4 v2, 0x6

    sput v2, Lcom/car/launchercommon/AppListActivity;->COLUMNS:I

    :cond_0
    iget-object v2, p0, Lcom/car/launchercommon/AppListActivity;->mGridView:Landroid/widget/GridView;

    sget v3, Lcom/car/launchercommon/AppListActivity;->COLUMNS:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    sget v3, Lcom/car/launchercommon/AppListActivity;->COLUMNS:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/car/launchercommon/AppListActivity;->mGridItemWidth:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    sget v3, Lcom/car/launchercommon/AppListActivity;->ROWS:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/car/launchercommon/AppListActivity;->mGridItemHeight:I

    iget-object v2, p0, Lcom/car/launchercommon/AppListActivity;->mGridView:Landroid/widget/GridView;

    new-instance v3, Lcom/car/launchercommon/AppListActivity$1;

    invoke-direct {v3, p0}, Lcom/car/launchercommon/AppListActivity$1;-><init>(Lcom/car/launchercommon/AppListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/AppListActivity;->mApp:Lcom/car/launchercommon/BaseApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/launchercommon/BaseApplication;->unregisterAppListChangedListener(Lcom/car/launchercommon/BaseApplication$AppListChangedListener;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Lcom/car/launchercommon/AppListAdapter;

    iget-object v1, p0, Lcom/car/launchercommon/AppListActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/car/launchercommon/AppListActivity;->mApp:Lcom/car/launchercommon/BaseApplication;

    invoke-virtual {v2}, Lcom/car/launchercommon/BaseApplication;->getAppList()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/car/launchercommon/AppListActivity;->mGridItemWidth:I

    iget v4, p0, Lcom/car/launchercommon/AppListActivity;->mGridItemHeight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/car/launchercommon/AppListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/car/launchercommon/AppListActivity;->mAdapter:Lcom/car/launchercommon/AppListAdapter;

    iget-object v0, p0, Lcom/car/launchercommon/AppListActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/car/launchercommon/AppListActivity;->mAdapter:Lcom/car/launchercommon/AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/car/launchercommon/AppListActivity;->mApp:Lcom/car/launchercommon/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/car/launchercommon/BaseApplication;->registerAppListChangedListener(Lcom/car/launchercommon/BaseApplication$AppListChangedListener;)V

    return-void
.end method
