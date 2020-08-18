.class Lcom/car/launchercommon/BaseApplication$2;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Landroid/location/LocationListener;


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

    iput-object p1, p0, Lcom/car/launchercommon/BaseApplication$2;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$2;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v0}, Lcom/car/launchercommon/BaseApplication;->access$500(Lcom/car/launchercommon/BaseApplication;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/car/launchercommon/BaseApplication$2;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v1}, Lcom/car/launchercommon/BaseApplication;->access$400(Lcom/car/launchercommon/BaseApplication;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$2;->this$0:Lcom/car/launchercommon/BaseApplication;

    sget v1, Lcom/car/launchercommon/R$string;->gps_ok:I

    invoke-static {v0, v1}, Lcom/car/launchercommon/BaseApplication;->speechTips(Landroid/content/Context;I)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
