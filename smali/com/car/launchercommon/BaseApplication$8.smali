.class Lcom/car/launchercommon/BaseApplication$8;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/BaseApplication;->takePictureAsync()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/BaseApplication;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/BaseApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/BaseApplication$8;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getCameraService()Lcom/car/common/CameraServiceImpl;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/car/common/CameraServiceImpl;->takeFrontPicture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "LC.BaseApplication"

    const-string v3, "Try again"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/car/common/CameraServiceImpl;->takeFrontPicture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "LC.BaseApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capture front photo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/launchercommon/BaseApplication$8;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v2}, Lcom/car/launchercommon/BaseApplication;->access$1400(Lcom/car/launchercommon/BaseApplication;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/car/launchercommon/BaseApplication$8;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v3}, Lcom/car/launchercommon/BaseApplication;->access$1400(Lcom/car/launchercommon/BaseApplication;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/car/launchercommon/BaseApplication$8;->this$0:Lcom/car/launchercommon/BaseApplication;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/car/launchercommon/BaseApplication;->access$1802(Lcom/car/launchercommon/BaseApplication;Z)Z

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
