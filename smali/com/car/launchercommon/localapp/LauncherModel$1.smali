.class Lcom/car/launchercommon/localapp/LauncherModel$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel;->unbindWorkspaceItemsOnMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/localapp/LauncherModel;

.field final synthetic val$tmpAppWidgets:Ljava/util/ArrayList;

.field final synthetic val$tmpWorkspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$1;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    iput-object p2, p0, Lcom/car/launchercommon/localapp/LauncherModel$1;->val$tmpWorkspaceItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/car/launchercommon/localapp/LauncherModel$1;->val$tmpAppWidgets:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$1;->val$tmpWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/localapp/ItemInfo;

    invoke-virtual {v1}, Lcom/car/launchercommon/localapp/ItemInfo;->unbind()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherModel$1;->val$tmpAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/localapp/ItemInfo;

    invoke-virtual {v1}, Lcom/car/launchercommon/localapp/ItemInfo;->unbind()V

    goto :goto_1

    :cond_1
    return-void
.end method
