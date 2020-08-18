.class Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->loadAllAppsByBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

.field final synthetic val$added:Ljava/util/ArrayList;

.field final synthetic val$callbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

.field final synthetic val$first:Z


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;->val$callbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    iput-boolean p3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;->val$first:Z

    iput-object p4, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;->val$added:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;->val$callbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;->val$first:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;->val$callbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;->val$added:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;->val$callbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$8;->val$added:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const-string v2, "CarL.Launcher.Model"

    const-string v3, "not binding apps: no Launcher activity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
