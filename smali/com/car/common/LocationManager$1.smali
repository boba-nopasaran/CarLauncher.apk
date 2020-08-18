.class Lcom/car/common/LocationManager$1;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/common/LocationManager;


# direct methods
.method constructor <init>(Lcom/car/common/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/common/LocationManager$1;->this$0:Lcom/car/common/LocationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.satellites"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/common/LocationManager$1;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v1}, Lcom/car/common/LocationManager;->access$000(Lcom/car/common/LocationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
