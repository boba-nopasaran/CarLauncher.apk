.class Lcom/car/launcher/MainActivity$2;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launcher/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launcher/MainActivity;


# direct methods
.method constructor <init>(Lcom/car/launcher/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launcher/MainActivity$2;->this$0:Lcom/car/launcher/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v2, 0x64

    const/16 v4, 0x65

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/car/launcher/MainActivity$2;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/launcher/MainActivity$2;->this$0:Lcom/car/launcher/MainActivity;

    invoke-static {v1}, Lcom/car/launcher/MainActivity;->access$000(Lcom/car/launcher/MainActivity;)[Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/launcher/MainActivity$2;->this$0:Lcom/car/launcher/MainActivity;

    invoke-virtual {v1}, Lcom/car/launcher/MainActivity;->initWeatherUI()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/car/launcher/MainActivity$2;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/launcher/MainActivity$2;->this$0:Lcom/car/launcher/MainActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.car.weather.refresh"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/car/launcher/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/car/launcher/MainActivity$2;->this$0:Lcom/car/launcher/MainActivity;

    iget-object v1, v1, Lcom/car/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
