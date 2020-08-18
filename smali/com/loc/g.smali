.class public final Lcom/loc/g;
.super Ljava/lang/Object;
.source "GPSLocation.java"


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/content/Context;

.field c:Landroid/location/LocationManager;

.field d:Lcom/amap/api/location/AMapLocationClientOption;

.field e:Lcom/loc/cl;

.field f:Lcom/amap/api/location/CoordinateConverter;

.field g:Z

.field h:J

.field public i:I

.field j:Landroid/location/GpsStatus;

.field private k:J

.field private l:Landroid/location/LocationListener;

.field private m:Landroid/location/GpsStatus$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/a$d;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/loc/g;->e:Lcom/loc/cl;

    iput-object v1, p0, Lcom/loc/g;->f:Lcom/amap/api/location/CoordinateConverter;

    iput-wide v4, p0, Lcom/loc/g;->k:J

    iput-boolean v2, p0, Lcom/loc/g;->g:Z

    iput-wide v4, p0, Lcom/loc/g;->h:J

    new-instance v0, Lcom/loc/g$1;

    invoke-direct {v0, p0}, Lcom/loc/g$1;-><init>(Lcom/loc/g;)V

    iput-object v0, p0, Lcom/loc/g;->l:Landroid/location/LocationListener;

    iput v2, p0, Lcom/loc/g;->i:I

    iput-object v1, p0, Lcom/loc/g;->j:Landroid/location/GpsStatus;

    new-instance v0, Lcom/loc/g$2;

    invoke-direct {v0, p0}, Lcom/loc/g$2;-><init>(Lcom/loc/g;)V

    iput-object v0, p0, Lcom/loc/g;->m:Landroid/location/GpsStatus$Listener;

    iput-object p1, p0, Lcom/loc/g;->b:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/location/CoordinateConverter;

    iget-object v1, p0, Lcom/loc/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/CoordinateConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/g;->f:Lcom/amap/api/location/CoordinateConverter;

    iput-object p2, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/loc/g;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    new-instance v0, Lcom/loc/cl;

    invoke-direct {v0}, Lcom/loc/cl;-><init>()V

    iput-object v0, p0, Lcom/loc/g;->e:Lcom/loc/cl;

    return-void
.end method

.method static synthetic a(Lcom/loc/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/loc/g;->k:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/g;->l:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/g;->l:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/g;->m:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/g;->m:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_2
    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iput v2, p0, Lcom/loc/g;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/g;->k:J

    iput-boolean v2, p0, Lcom/loc/g;->g:Z

    goto :goto_0
.end method

.method final a(F)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/loc/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    :cond_0
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/g;->k:J

    iget-object v0, p0, Lcom/loc/g;->e:Lcom/loc/cl;

    iget-wide v2, p0, Lcom/loc/g;->k:J

    invoke-virtual {v0, v2, v3}, Lcom/loc/cl;->a(J)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-string v3, "force_xtra_injection"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/loc/g;->l:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/g;->m:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v2, "no enough satellites"

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v2, p0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Lcom/amap/api/location/AMapLocation;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->what:I

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "requestLocationUpdates part2"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method
