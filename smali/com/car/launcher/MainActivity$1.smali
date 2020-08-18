.class Lcom/car/launcher/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/car/launcher/MainActivity$1;->this$0:Lcom/car/launcher/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.weather.forcast"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "condition"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "temperature"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "area"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "iconurl"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/car/launcher/MainActivity$1;->this$0:Lcom/car/launcher/MainActivity;

    iget-object v4, v4, Lcom/car/launcher/MainActivity;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/car/launcher/MainActivity$1;->this$0:Lcom/car/launcher/MainActivity;

    iget-object v4, v4, Lcom/car/launcher/MainActivity;->mWeatherTemp:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/car/launcher/MainActivity$1;->this$0:Lcom/car/launcher/MainActivity;

    iget-object v4, v4, Lcom/car/launcher/MainActivity;->mWeatherType:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    const-string v4, "http://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/car/launcher/MainActivity$1;->this$0:Lcom/car/launcher/MainActivity;

    iget-object v4, v4, Lcom/car/launcher/MainActivity;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/car/launcher/MainActivity$1;->this$0:Lcom/car/launcher/MainActivity;

    iget-boolean v4, v4, Lcom/car/launcher/MainActivity;->mForceRefresh:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/car/launcher/MainActivity$1;->this$0:Lcom/car/launcher/MainActivity;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/car/launcher/MainActivity;->mForceRefresh:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/car/launcher/LauncherApplication;->speechTips(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/car/launcher/MainActivity$1;->this$0:Lcom/car/launcher/MainActivity;

    iget-object v4, v4, Lcom/car/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/car/launcher/MainActivity$1;->this$0:Lcom/car/launcher/MainActivity;

    iget-object v4, v4, Lcom/car/launcher/MainActivity;->mWeatherIcon:Landroid/widget/ImageView;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method
