.class Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;

.field final synthetic val$addedFinal:Ljava/util/ArrayList;

.field final synthetic val$callbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$1;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$1;->val$callbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$1;->val$addedFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$1;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;

    iget-object v1, v1, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v1}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$1;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;

    iget-object v1, v1, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v1}, Lcom/car/launchercommon/localapp/LauncherModel;->access$700(Lcom/car/launchercommon/localapp/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$1;->val$callbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$1;->val$callbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$PackageUpdatedTask$1;->val$addedFinal:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
