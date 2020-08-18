.class Lcom/car/launchercommon/BaseApplication$5;
.super Landroid/database/ContentObserver;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/BaseApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/BaseApplication;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/BaseApplication;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/BaseApplication$5;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "LC.BaseApplication"

    const-string v1, "ContentObserver.onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$5;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v0}, Lcom/car/launchercommon/BaseApplication;->access$300(Lcom/car/launchercommon/BaseApplication;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$5;->this$0:Lcom/car/launchercommon/BaseApplication;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/car/launchercommon/BaseApplication;->access$1500(Lcom/car/launchercommon/BaseApplication;I)V

    return-void
.end method
