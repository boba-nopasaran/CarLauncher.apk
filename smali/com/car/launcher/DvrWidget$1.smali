.class Lcom/car/launcher/DvrWidget$1;
.super Landroid/content/BroadcastReceiver;
.source "DvrWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launcher/DvrWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launcher/DvrWidget;


# direct methods
.method constructor <init>(Lcom/car/launcher/DvrWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launcher/DvrWidget$1;->this$0:Lcom/car/launcher/DvrWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.car.videorecorder.recording_start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/launcher/DvrWidget$1;->this$0:Lcom/car/launcher/DvrWidget;

    invoke-static {v3}, Lcom/car/launcher/DvrWidget;->access$000(Lcom/car/launcher/DvrWidget;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.car.videorecorder.recording_stop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/car/launcher/DvrWidget$1;->this$0:Lcom/car/launcher/DvrWidget;

    invoke-static {v3}, Lcom/car/launcher/DvrWidget;->access$100(Lcom/car/launcher/DvrWidget;)V

    goto :goto_0

    :cond_2
    const-string v3, "com.car.videorecorder.recording_time_changed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "recording_time"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "recording_camera"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/car/launcher/DvrWidget$1;->this$0:Lcom/car/launcher/DvrWidget;

    invoke-static {v3, v1, v2}, Lcom/car/launcher/DvrWidget;->access$200(Lcom/car/launcher/DvrWidget;II)V

    goto :goto_0
.end method
