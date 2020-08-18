.class Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->bindWorkspace(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

.field final synthetic val$t:J


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;J)V
    .locals 1

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$6;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    iput-wide p3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$6;->val$t:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$6;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->finishBindingItems()V

    :cond_0
    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$6;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->access$1102(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Z)Z

    return-void
.end method
