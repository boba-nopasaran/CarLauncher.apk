.class Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;
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
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/car/launchercommon/localapp/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->mOp:I

    iput-object p3, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1700(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/BaseApplication;

    move-result-object v4

    iget-object v8, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    array-length v0, v8

    iget v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v11, :pswitch_data_0

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/car/launchercommon/localapp/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/car/launchercommon/localapp/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/car/launchercommon/localapp/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/car/launchercommon/localapp/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/car/launchercommon/localapp/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/car/launchercommon/localapp/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/car/launchercommon/localapp/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/car/launchercommon/localapp/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    aget-object v11, v8, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_0

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v4, v12}, Lcom/car/launchercommon/localapp/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_0

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v4, v12}, Lcom/car/launchercommon/localapp/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :pswitch_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_0

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$1200(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/AllAppsList;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v12}, Lcom/car/launchercommon/localapp/AllAppsList;->removePackage(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    move-object v3, v11

    :goto_4
    if-nez v3, :cond_5

    const-string v11, "CarL.Launcher.Model"

    const-string v12, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    move-object v2, v1

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$300(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$1;

    invoke-direct {v12, p0, v3, v2}, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Lcom/car/launchercommon/localapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_6
    if-eqz v6, :cond_7

    move-object v7, v6

    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$300(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$2;

    invoke-direct {v12, p0, v3, v7}, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Lcom/car/launchercommon/localapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    iget v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v12, 0x4

    if-eq v11, v12, :cond_9

    const/4 v9, 0x1

    :goto_6
    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$300(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$3;

    invoke-direct {v12, p0, v3, v10, v9}, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;Ljava/util/ArrayList;Z)V

    invoke-virtual {v11, v12}, Lcom/car/launchercommon/localapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_8
    iget-object v11, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v11}, Lcom/car/launchercommon/localapp/LauncherModel;->access$300(Lcom/car/launchercommon/localapp/LauncherModel;)Lcom/car/launchercommon/localapp/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$4;

    invoke-direct {v12, p0, v3}, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$4;-><init>(Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)V

    invoke-virtual {v11, v12}, Lcom/car/launchercommon/localapp/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
