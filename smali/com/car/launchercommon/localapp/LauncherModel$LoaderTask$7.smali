.class Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->onlyBindAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$oldCallbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$7;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$7;->val$oldCallbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$7;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$7;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    iget-object v4, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$7;->val$oldCallbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    invoke-virtual {v1, v4}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$7;->val$list:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
