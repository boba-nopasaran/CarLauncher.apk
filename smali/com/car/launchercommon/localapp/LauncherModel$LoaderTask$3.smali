.class Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

.field final synthetic val$chunkSize:I

.field final synthetic val$oldCallbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

.field final synthetic val$start:I

.field final synthetic val$workspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;->val$oldCallbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;->val$workspaceItems:Ljava/util/ArrayList;

    iput p4, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;->val$start:I

    iput p5, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;->val$chunkSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;->val$oldCallbacks:Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;)Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;->val$workspaceItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;->val$start:I

    iget v3, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;->val$start:I

    iget v4, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$3;->val$chunkSize:I

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/car/launchercommon/localapp/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;II)V

    :cond_0
    return-void
.end method
