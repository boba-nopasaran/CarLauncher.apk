.class public final Lcom/loc/h;
.super Ljava/lang/Object;
.source "LastLocationManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/amap/api/location/AMapLocation;

.field private d:Lcom/amap/api/location/AMapLocation;

.field private e:Lcom/loc/ac;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/h;->c:Lcom/amap/api/location/AMapLocation;

    iput-object v0, p0, Lcom/loc/h;->d:Lcom/amap/api/location/AMapLocation;

    iput-object v0, p0, Lcom/loc/h;->e:Lcom/loc/ac;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/h;->f:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/h;->a:Landroid/content/Context;

    :try_start_0
    const-string v0, "MD5"

    iget-object v1, p0, Lcom/loc/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/o;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/h;->b:Ljava/lang/String;

    const-class v0, Lcom/loc/ce;

    invoke-static {v0}, Lcom/loc/ac;->a(Ljava/lang/Class;)Lcom/loc/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/loc/ac;

    invoke-static {}, Lcom/loc/cp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/loc/ac;-><init>(Landroid/content/Context;Lcom/loc/ab;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/h;->e:Lcom/loc/ac;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LastLocationManager"

    const-string v2, "<init>:DBOperation"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/h;->c:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0}, Lcom/loc/cp;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/h;->e:Lcom/loc/ac;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/h;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/h;->c:Lcom/amap/api/location/AMapLocation;

    iput-object v0, p0, Lcom/loc/h;->d:Lcom/amap/api/location/AMapLocation;

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/loc/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/loc/by;->c([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/p;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/loc/cd;

    invoke-direct {v1}, Lcom/loc/cd;-><init>()V

    invoke-virtual {v1, v0}, Lcom/loc/cd;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/cp;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/loc/cd;->a(J)V

    iget-object v0, p0, Lcom/loc/h;->e:Lcom/loc/ac;

    const-string v2, "_id=1"

    invoke-virtual {v0, v1, v2}, Lcom/loc/ac;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/h;->f:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "LastLocationManager"

    const-string v2, "saveLastFix"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Lcom/amap/api/location/AMapLocation;
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/h;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/h;->e:Lcom/loc/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/h;->e:Lcom/loc/ac;

    const-string v2, "_id=1"

    const-class v3, Lcom/loc/cd;

    invoke-virtual {v0, v2, v3}, Lcom/loc/ac;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/p;->b(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/h;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/loc/by;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v2, v0

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string v3, ""

    invoke-direct {v0, v3}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/loc/c;->a(Lcom/amap/api/location/AMapLocation;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_3
    :try_start_3
    const-string v2, "LastLocationManager"

    const-string v3, "readLastFix"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/amap/api/location/AMapLocation;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/h;->c:Lcom/amap/api/location/AMapLocation;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/h;->d()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/h;->c:Lcom/amap/api/location/AMapLocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/loc/cp;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/loc/h;->c:Lcom/amap/api/location/AMapLocation;

    iget-object v0, p0, Lcom/loc/h;->d:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/h;->d:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0, p1}, Lcom/loc/cp;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/h;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/h;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "LastLocationManager"

    const-string v2, "setLastFix"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/loc/h;->c()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/h;->f:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "LastLocationManager"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
