.class Lcom/car/launchercommon/AppListActivity$1;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/AppListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/AppListActivity;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/AppListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/AppListActivity$1;->this$0:Lcom/car/launchercommon/AppListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/AppListActivity$1;->this$0:Lcom/car/launchercommon/AppListActivity;

    invoke-static {v1}, Lcom/car/launchercommon/AppListActivity;->access$000(Lcom/car/launchercommon/AppListActivity;)Lcom/car/launchercommon/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/launchercommon/BaseApplication;->getAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    iget-object v1, p0, Lcom/car/launchercommon/AppListActivity$1;->this$0:Lcom/car/launchercommon/AppListActivity;

    invoke-static {v1}, Lcom/car/launchercommon/AppListActivity;->access$000(Lcom/car/launchercommon/AppListActivity;)Lcom/car/launchercommon/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/launchercommon/BaseApplication;->getAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/localapp/ApplicationInfo;

    iget-object v1, p0, Lcom/car/launchercommon/AppListActivity$1;->this$0:Lcom/car/launchercommon/AppListActivity;

    invoke-static {v1}, Lcom/car/launchercommon/AppListActivity;->access$100(Lcom/car/launchercommon/AppListActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/car/launchercommon/localapp/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/car/launchercommon/Util;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "ssk"

    iget-object v2, v0, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
