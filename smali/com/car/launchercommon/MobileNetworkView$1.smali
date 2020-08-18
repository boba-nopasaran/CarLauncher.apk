.class Lcom/car/launchercommon/MobileNetworkView$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/MobileNetworkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/MobileNetworkView;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/MobileNetworkView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/MobileNetworkView$1;->this$0:Lcom/car/launchercommon/MobileNetworkView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/launchercommon/MobileNetworkView$1;->this$0:Lcom/car/launchercommon/MobileNetworkView;

    invoke-static {v3}, Lcom/car/launchercommon/MobileNetworkView;->access$300(Lcom/car/launchercommon/MobileNetworkView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "LC.MobileNetworkView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHotspotEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/launchercommon/MobileNetworkView$1;->this$0:Lcom/car/launchercommon/MobileNetworkView;

    invoke-static {v5}, Lcom/car/launchercommon/MobileNetworkView;->access$400(Lcom/car/launchercommon/MobileNetworkView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/launchercommon/MobileNetworkView$1;->this$0:Lcom/car/launchercommon/MobileNetworkView;

    invoke-static {v3}, Lcom/car/launchercommon/MobileNetworkView;->access$500(Lcom/car/launchercommon/MobileNetworkView;)V

    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "LC.MobileNetworkView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAirplaneModeOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/launchercommon/MobileNetworkView$1;->this$0:Lcom/car/launchercommon/MobileNetworkView;

    invoke-static {v5}, Lcom/car/launchercommon/MobileNetworkView;->access$600(Lcom/car/launchercommon/MobileNetworkView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/launchercommon/MobileNetworkView$1;->this$0:Lcom/car/launchercommon/MobileNetworkView;

    invoke-static {v3}, Lcom/car/launchercommon/MobileNetworkView;->access$700(Lcom/car/launchercommon/MobileNetworkView;)V

    goto :goto_0

    :cond_3
    const-string v3, "com.car.syswakeup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "LC.MobileNetworkView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.car.wakeup, reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const-string v3, "user,acc_on,gsensor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/car/launchercommon/MobileNetworkView;->access$802(Z)Z

    goto/16 :goto_0

    :cond_4
    const-string v3, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android:regState"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    iget-object v3, p0, Lcom/car/launchercommon/MobileNetworkView$1;->this$0:Lcom/car/launchercommon/MobileNetworkView;

    invoke-static {v3}, Lcom/car/launchercommon/MobileNetworkView;->access$900(Lcom/car/launchercommon/MobileNetworkView;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/car/launchercommon/MobileNetworkView$1;->this$0:Lcom/car/launchercommon/MobileNetworkView;

    invoke-static {v3}, Lcom/car/launchercommon/MobileNetworkView;->access$900(Lcom/car/launchercommon/MobileNetworkView;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
