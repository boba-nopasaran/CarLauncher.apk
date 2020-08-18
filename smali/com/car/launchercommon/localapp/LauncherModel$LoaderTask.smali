.class Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/localapp/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mIsLoadingAndBindingWorkspace:Z

.field private mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field final synthetic this$0:Lcom/car/launchercommon/localapp/LauncherModel;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel;Landroid/content/Context;Z)V
    .locals 1

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mIsLaunching:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$1102(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    return p1
.end method

.method static synthetic access$202(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return p1
.end method

.method private bindWorkspace(I)V
    .locals 13

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    if-nez v4, :cond_0

    const-string v10, "CarL.Launcher.Model"

    const-string v11, "LoaderTask running with no launcher"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v11, -0x1

    if-le p1, v11, :cond_2

    move v2, v10

    :goto_1
    if-eqz v2, :cond_3

    move v0, p1

    :goto_2
    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-virtual {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v11, Lcom/car/launchercommon/localapp/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-object v12, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v12, Lcom/car/launchercommon/localapp/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v7, v1, v5}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v6, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$4;

    invoke-direct {v6, p0, v4}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$4;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)V

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11, v6, v10}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1000(Lcom/car/launchercommon/localapp/LauncherModel;Ljava/lang/Runnable;I)V

    if-eqz v2, :cond_1

    new-instance v6, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$5;

    invoke-direct {v6, p0, v4, v0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$5;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;I)V

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11, v6, v10}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1000(Lcom/car/launchercommon/localapp/LauncherModel;Ljava/lang/Runnable;I)V

    :cond_1
    new-instance v6, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$6;

    invoke-direct {v6, p0, v4, v8, v9}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$6;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;J)V

    if-eqz v2, :cond_4

    sget-object v10, Lcom/car/launchercommon/localapp/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v0

    goto :goto_2

    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :cond_4
    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11, v6, v10}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1000(Lcom/car/launchercommon/localapp/LauncherModel;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method private bindWorkspaceItems(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    if-eqz p3, :cond_0

    move v8, v9

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    move v4, v7

    add-int/lit8 v1, v7, 0x6

    if-gt v1, v6, :cond_1

    const/4 v5, 0x6

    :goto_2
    new-instance v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    if-eqz v8, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x6

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    sub-int v5, v6, v7

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v1, v0, v9}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1000(Lcom/car/launchercommon/localapp/LauncherModel;Ljava/lang/Runnable;I)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private checkItemPlacement([[[Lcom/car/launchercommon/localapp/ItemInfo;Lcom/car/launchercommon/localapp/ItemInfo;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p2, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    iget-wide v6, p2, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v3}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v3}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    iget v6, p2, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    invoke-interface {v3, v6}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->isAllAppsButtonRank(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    iget-wide v6, p2, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    iget v1, p2, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    :goto_1
    iget v3, p2, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    iget v6, p2, Lcom/car/launchercommon/localapp/ItemInfo;->spanX:I

    add-int/2addr v3, v6

    if-ge v1, v3, :cond_6

    iget v2, p2, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    :goto_2
    iget v3, p2, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    iget v6, p2, Lcom/car/launchercommon/localapp/ItemInfo;->spanY:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_5

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_4

    const-string v3, "CarL.Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading shortcut "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " into cell ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p2, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") occupied by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, p1, v0

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget v1, p2, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    :goto_3
    iget v3, p2, Lcom/car/launchercommon/localapp/ItemInfo;->cellX:I

    iget v5, p2, Lcom/car/launchercommon/localapp/ItemInfo;->spanX:I

    add-int/2addr v3, v5

    if-ge v1, v3, :cond_8

    iget v2, p2, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    :goto_4
    iget v3, p2, Lcom/car/launchercommon/localapp/ItemInfo;->cellY:I

    iget v5, p2, Lcom/car/launchercommon/localapp/ItemInfo;->spanY:I

    add-int/2addr v3, v5

    if-ge v2, v3, :cond_7

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    aput-object p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    move v3, v4

    goto/16 :goto_0
.end method

.method private filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/launchercommon/localapp/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/localapp/ItemInfo;

    if-nez v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$2;

    invoke-direct {v5, p0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$2;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;)V

    invoke-static {p2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/launchercommon/localapp/ItemInfo;

    iget-wide v6, v2, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    iget v5, v2, Lcom/car/launchercommon/localapp/ItemInfo;->screen:I

    if-ne v5, p1, :cond_3

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v6, v2, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-wide v6, v2, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v6, v2, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-wide v6, v2, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v6, v2, Lcom/car/launchercommon/localapp/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-void
.end method

.method private loadAllAppsByBatch()V
    .locals 29

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    if-nez v13, :cond_1

    const-string v24, "CarL.Launcher.Model"

    const-string v25, "LoaderTask running with no launcher (loadAllAppsByBatch)"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v12, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v24, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v6, 0x0

    const v4, 0x7fffffff

    const/4 v10, 0x0

    const/4 v7, -0x1

    :cond_2
    :goto_0
    if-ge v10, v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mStopped:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/car/launchercommon/localapp/AllAppsList;->clear()V

    const-wide/16 v16, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1400(Lcom/car/launchercommon/localapp/LauncherModel;)I

    move-result v24

    if-nez v24, :cond_4

    move v7, v4

    :goto_1
    const-wide/16 v18, 0x0

    new-instance v24, Lcom/car/launchercommon/localapp/LauncherModel$ShortcutNameComparator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v14, v1}, Lcom/car/launchercommon/localapp/LauncherModel$ShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;Ljava/util/HashMap;)V

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    const-wide/16 v22, 0x0

    move v15, v10

    const/4 v11, 0x0

    :goto_2
    if-ge v10, v4, :cond_5

    if-ge v11, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v25

    new-instance v26, Lcom/car/launchercommon/localapp/ApplicationInfo;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1500(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/IconCache;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/car/launchercommon/localapp/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/car/launchercommon/localapp/IconCache;Ljava/util/HashMap;)V

    invoke-virtual/range {v25 .. v26}, Lcom/car/launchercommon/localapp/AllAppsList;->add(Lcom/car/launchercommon/localapp/ApplicationInfo;)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1400(Lcom/car/launchercommon/localapp/LauncherModel;)I

    move-result v7

    goto :goto_1

    :cond_5
    if-gt v10, v7, :cond_6

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/car/launchercommon/localapp/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v24

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/car/launchercommon/localapp/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/launchercommon/localapp/LauncherModel;->access$300(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/DeferredHandler;

    move-result-object v24

    new-instance v25, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9, v5}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual/range {v24 .. v25}, Lcom/car/launchercommon/localapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1600(Lcom/car/launchercommon/localapp/LauncherModel;)I

    move-result v24

    if-lez v24, :cond_2

    if-ge v10, v4, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1600(Lcom/car/launchercommon/localapp/LauncherModel;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v24

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private loadAndBindAllApps()V
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v0}, Lcom/car/launchercommon/localapp/LauncherModel;->access$400(Lcom/car/launchercommon/localapp/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->loadAllAppsByBatch()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/car/launchercommon/localapp/LauncherModel;->access$402(Lcom/car/launchercommon/localapp/LauncherModel;Z)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v0}, Lcom/car/launchercommon/localapp/LauncherModel;->access$100(Lcom/car/launchercommon/localapp/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->loadWorkspace()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/car/launchercommon/localapp/LauncherModel;->access$102(Lcom/car/launchercommon/localapp/LauncherModel;Z)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->bindWorkspace(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadWorkspace()V
    .locals 44

    const-wide/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    invoke-static {v12}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v42

    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v32

    sget-object v43, Lcom/car/launchercommon/localapp/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v43

    :try_start_0
    sget-object v3, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-object v3, Lcom/car/launchercommon/localapp/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    sget-object v3, Lcom/car/launchercommon/localapp/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/car/launchercommon/localapp/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    :try_start_1
    const-string v3, "_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const-string v3, "intent"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    const-string v3, "title"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v3, "iconType"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v3, "icon"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v3, "iconPackage"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v3, "iconResource"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v3, "container"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v3, "itemType"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    const-string v3, "appWidgetId"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    const-string v3, "screen"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    const-string v3, "cellX"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const-string v3, "cellY"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v3, "spanX"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    const-string v3, "spanY"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    :try_start_2
    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    packed-switch v33, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move/from16 v0, v31

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v30

    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, v30

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    if-nez v33, :cond_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v4, v36

    move-object v6, v12

    invoke-virtual/range {v3 .. v10}, Lcom/car/launchercommon/localapp/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/car/launchercommon/localapp/ShortcutInfo;

    move-result-object v29

    :cond_0
    :goto_1
    if-eqz v29, :cond_2

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/car/launchercommon/localapp/ShortcutInfo;->intent:Landroid/content/Intent;

    move/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v29

    iput-wide v10, v0, Lcom/car/launchercommon/localapp/ShortcutInfo;->id:J

    move/from16 v0, v23

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    int-to-long v10, v0

    move-object/from16 v0, v29

    iput-wide v10, v0, Lcom/car/launchercommon/localapp/ShortcutInfo;->container:J

    move/from16 v0, v37

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/car/launchercommon/localapp/ShortcutInfo;->screen:I

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/car/launchercommon/localapp/ShortcutInfo;->cellX:I

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/car/launchercommon/localapp/ShortcutInfo;->cellY:I

    packed-switch v22, :pswitch_data_1

    :goto_2
    sget-object v3, Lcom/car/launchercommon/localapp/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v29

    iget-wide v10, v0, Lcom/car/launchercommon/localapp/ShortcutInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    sget-object v4, Lcom/car/launchercommon/localapp/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0, v7, v8}, Lcom/car/launchercommon/localapp/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/car/launchercommon/localapp/ShortcutInfo;Landroid/database/Cursor;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v24

    :try_start_5
    const-string v3, "CarL.Launcher.Model"

    const-string v4, "Desktop items loading interrupted:"

    move-object/from16 v0, v24

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v43
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    :catch_1
    move-exception v24

    goto/16 :goto_0

    :cond_1
    :try_start_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    move-object v11, v7

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/car/launchercommon/localapp/LauncherModel;->access$900(Lcom/car/launchercommon/localapp/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/car/launchercommon/localapp/ShortcutInfo;

    move-result-object v29

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x10200000

    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    :pswitch_1
    sget-object v3, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const-string v3, "CarL.Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading shortcut "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", removing it"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v3}, Lcom/car/launchercommon/localapp/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_3
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    sget-object v3, Lcom/car/launchercommon/localapp/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v21

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v26

    const/4 v3, 0x0

    :try_start_9
    move-wide/from16 v0, v26

    invoke-static {v0, v1, v3}, Lcom/car/launchercommon/localapp/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v6}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v24

    :try_start_a
    const-string v3, "CarL.Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    monitor-exit v43
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 6

    iget-object v4, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v4}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    if-nez v2, :cond_0

    const-string v4, "CarL.Launcher.Model"

    const-string v5, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v4}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v4

    iget-object v4, v4, Lcom/car/launchercommon/localapp/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v3, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$7;

    invoke-direct {v3, p0, v2, v1}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$7;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1300()Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v4}, Lcom/car/launchercommon/localapp/LauncherModel;->access$300(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/DeferredHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/car/launchercommon/localapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private waitForIdle()V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v2}, Lcom/car/launchercommon/localapp/LauncherModel;->access$300(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$1;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/car/launchercommon/localapp/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    :goto_0
    iget-boolean v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 4

    sget-object v1, Lcom/car/launchercommon/localapp/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "CarL.Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarL.Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mIsLaunching="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarL.Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mStopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarL.Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarL.Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mItems size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/car/launchercommon/localapp/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isLaunching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method isLoadingWorkspace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/16 v6, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v7}, Lcom/car/launchercommon/localapp/LauncherModel;->access$500(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/car/launchercommon/localapp/LauncherModel;->access$602(Lcom/car/launchercommon/localapp/LauncherModel;Z)Z

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v7, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v7}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v7}, Lcom/car/launchercommon/localapp/LauncherModel;->access$500(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_1
    iget-boolean v8, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v8, :cond_2

    :goto_1
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_3

    :goto_2
    iget-boolean v5, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v5, :cond_4

    :goto_3
    sget-object v7, Lcom/car/launchercommon/localapp/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_2
    sget-object v5, Lcom/car/launchercommon/localapp/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v8, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    iget-object v9, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object v0, v3

    check-cast v0, Lcom/car/launchercommon/localapp/ShortcutInfo;

    move-object v5, v0

    sget-object v6, Lcom/car/launchercommon/localapp/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v8, v9, v5, v6}, Lcom/car/launchercommon/localapp/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/car/launchercommon/localapp/ShortcutInfo;[B)V

    goto :goto_4

    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :catchall_2
    move-exception v5

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5

    :cond_3
    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v5}, Lcom/car/launchercommon/localapp/LauncherModel;->access$500(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_5
    iget-boolean v5, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v5, :cond_5

    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->waitForIdle()V

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    :cond_6
    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v5}, Lcom/car/launchercommon/localapp/LauncherModel;->access$500(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    const/4 v5, 0x0

    :try_start_6
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-exit v6

    goto :goto_3

    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v5

    :catchall_4
    move-exception v5

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v5

    :cond_7
    :try_start_8
    sget-object v5, Lcom/car/launchercommon/localapp/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iput-object v10, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v5}, Lcom/car/launchercommon/localapp/LauncherModel;->access$500(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_9
    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v5}, Lcom/car/launchercommon/localapp/LauncherModel;->access$800(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    move-result-object v5

    if-ne v5, p0, :cond_8

    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/car/launchercommon/localapp/LauncherModel;->access$802(Lcom/car/launchercommon/localapp/LauncherModel;Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;)Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    :cond_8
    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/car/launchercommon/localapp/LauncherModel;->access$602(Lcom/car/launchercommon/localapp/LauncherModel;Z)Z

    monitor-exit v6

    return-void

    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v5
.end method

.method runBindSynchronousPage(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not call runBindSynchronousPage() without valid page index"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v0}, Lcom/car/launchercommon/localapp/LauncherModel;->access$400(Lcom/car/launchercommon/localapp/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v0}, Lcom/car/launchercommon/localapp/LauncherModel;->access$100(Lcom/car/launchercommon/localapp/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v0}, Lcom/car/launchercommon/localapp/LauncherModel;->access$500(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v0}, Lcom/car/launchercommon/localapp/LauncherModel;->access$600(Lcom/car/launchercommon/localapp/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v0}, Lcom/car/launchercommon/localapp/LauncherModel;->access$300(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/DeferredHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/launchercommon/localapp/DeferredHandler;->flush()V

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->bindWorkspace(I)V

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->onlyBindAllApps()V

    return-void
.end method

.method public stopLocked()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v2}, Lcom/car/launchercommon/localapp/LauncherModel;->access$500(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v3}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v3}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    if-eq v0, p1, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string v3, "CarL.Launcher.Model"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
