.class Lcom/car/launchercommon/BaseApplication$3;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/BaseApplication;->bindAllApplications(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/BaseApplication;

.field final synthetic val$apps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/BaseApplication;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/BaseApplication$3;->this$0:Lcom/car/launchercommon/BaseApplication;

    iput-object p2, p0, Lcom/car/launchercommon/BaseApplication$3;->val$apps:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$3;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v0}, Lcom/car/launchercommon/BaseApplication;->access$600(Lcom/car/launchercommon/BaseApplication;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$3;->val$apps:Ljava/util/ArrayList;

    invoke-static {}, Lcom/car/launchercommon/localapp/LauncherModel;->getAppNameComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$3;->this$0:Lcom/car/launchercommon/BaseApplication;

    iget-object v1, p0, Lcom/car/launchercommon/BaseApplication$3;->val$apps:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/car/launchercommon/BaseApplication;->access$700(Lcom/car/launchercommon/BaseApplication;Ljava/util/ArrayList;)V

    return-void
.end method
