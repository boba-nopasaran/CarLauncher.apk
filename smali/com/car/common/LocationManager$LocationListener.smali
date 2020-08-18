.class Lcom/car/common/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/common/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/car/common/LocationManager;


# direct methods
.method public constructor <init>(Lcom/car/common/LocationManager;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    iput-object p2, p0, Lcom/car/common/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/car/common/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/common/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    iget-boolean v0, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-string v0, "CarSvc_LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mRecordLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$300(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProvider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v0}, Lcom/car/common/LocationManager;->access$300(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v0}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gps"

    iget-object v1, p0, Lcom/car/common/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v0}, Lcom/car/common/LocationManager;->access$300(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/car/common/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    if-nez v0, :cond_2

    const-string v0, "CarSvc_LocationManager"

    const-string v1, "Got first location."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/car/common/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    iput-boolean v3, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "CarSvc_LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mRecordLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v2}, Lcom/car/common/LocationManager;->access$300(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput-boolean v3, p0, Lcom/car/common/LocationManager$LocationListener;->mValid:Z

    iget-object v0, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v0}, Lcom/car/common/LocationManager;->access$300(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v0}, Lcom/car/common/LocationManager;->access$200(Lcom/car/common/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/LocationManager$LocationListener;->this$0:Lcom/car/common/LocationManager;

    invoke-static {v0}, Lcom/car/common/LocationManager;->access$300(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/car/common/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
