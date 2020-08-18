.class Lcom/car/launchercommon/BaseApplication$4;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/car/launchercommon/BaseApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/BaseApplication$4;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$4;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v0, p2}, Lcom/car/launchercommon/BaseApplication;->access$1000(Lcom/car/launchercommon/BaseApplication;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "com.car.bthpone.connected.notify"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$4;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v0, p2}, Lcom/car/launchercommon/BaseApplication;->access$1100(Lcom/car/launchercommon/BaseApplication;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$4;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v0}, Lcom/car/launchercommon/BaseApplication;->access$1200(Lcom/car/launchercommon/BaseApplication;)V

    goto :goto_0

    :cond_4
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "LC.BaseApplication"

    const-string v1, "ACTION_SCREEN_OFF, waiting ACTION_SCREEN_ON to call updateGpsState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$4;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v0}, Lcom/car/launchercommon/BaseApplication;->access$1400(Lcom/car/launchercommon/BaseApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/BaseApplication$4;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v1}, Lcom/car/launchercommon/BaseApplication;->access$1300(Lcom/car/launchercommon/BaseApplication;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "LC.BaseApplication"

    const-string v1, "ACTION_SCREEN_ON, delay 3s to call updateGpsState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$4;->this$0:Lcom/car/launchercommon/BaseApplication;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/car/launchercommon/BaseApplication;->access$1500(Lcom/car/launchercommon/BaseApplication;I)V

    goto :goto_0

    :cond_6
    const-string v0, "com.car.syswakeup"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "LC.BaseApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.car.wakeup, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1

    const-string v0, "user,acc_on,gsensor"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->access$1600()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$4;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v0}, Lcom/car/launchercommon/BaseApplication;->access$500(Lcom/car/launchercommon/BaseApplication;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/car/launchercommon/BaseApplication$4;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v5}, Lcom/car/launchercommon/BaseApplication;->access$400(Lcom/car/launchercommon/BaseApplication;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "com.car.satellites"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "count"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$4;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-virtual {v0, v7}, Lcom/car/launchercommon/BaseApplication;->updateSatellites(I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "com.car.voiceassitant.restart"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LC.BaseApplication"

    const-string v1, "ACTION_VOICE_ASSITANT_RESTART, call System.exit(0)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0
.end method
