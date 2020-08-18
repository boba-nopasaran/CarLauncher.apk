.class Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$4;
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


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$4;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$4;->val$oldCallbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$4;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$4;->val$oldCallbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->startBinding()V

    :cond_0
    return-void
.end method
