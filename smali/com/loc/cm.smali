.class public final Lcom/loc/cm;
.super Ljava/lang/Object;
.source "ReportUtil.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/loc/bn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loc/cm;->a:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/loc/cm;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/cj;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/loc/cm;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/cm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/loc/cm;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, p0}, Lcom/loc/bo;->a(Ljava/util/List;Landroid/content/Context;)V

    sget-object v0, Lcom/loc/cm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "ReportUtil"

    const-string v3, "destroy"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;ILcom/amap/api/location/AMapLocation;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v4, Lcom/loc/cm;

    monitor-enter v4

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/cj;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    const-string v0, "net"

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    packed-switch p1, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_2
    :pswitch_1
    move v1, v2

    :goto_3
    if-eqz v1, :cond_0

    const-string v1, "O005"

    invoke-static {p0, v1, v3, v0}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ReportUtil"

    const-string v2, "reportBatting"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :pswitch_2
    :try_start_3
    const-string v0, "cache"

    move v2, v1

    goto :goto_2

    :pswitch_3
    const-string v0, "net"

    move v2, v1

    goto :goto_2

    :pswitch_4
    const-string v0, "net"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/loc/cl;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v4, Lcom/loc/cm;

    monitor-enter v4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/cj;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/loc/cl;->c()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/loc/cl;->a()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/loc/cl;->b()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v6

    const-string v0, "net"

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->j()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "param_int_first"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "param_int_second"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "O003"

    invoke-static {p0, v2, v1}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    const-string v1, "O002"

    invoke-static {p0, v1, v6, v0}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ReportUtil"

    const-string v2, "reportLBSLocUseTime"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :pswitch_1
    move v2, v1

    goto :goto_1

    :pswitch_2
    :try_start_3
    const-string v0, "cache"

    move v1, v2

    goto :goto_1

    :pswitch_3
    const-string v0, "net"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/loc/cm;

    monitor-enter v1

    :try_start_0
    const-string v0, "O007"

    const v2, 0x7fffffff

    invoke-static {p0, v0, v2, p1}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "ReportUtil"

    const-string v3, "reportDex_triggerDownload"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const-class v1, Lcom/loc/cm;

    monitor-enter v1

    :try_start_0
    const-string v0, "O009"

    invoke-static {p0, v0, p2, p1}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "ReportUtil"

    const-string v3, "reportDex_dexLoadClass"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const-class v1, Lcom/loc/cm;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/cj;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "param_string_first"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const v2, 0x7fffffff

    if-eq p2, v2, :cond_3

    const-string v2, "param_int_first"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    invoke-static {p0, p1, v0}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "ReportUtil"

    const-string v3, "applyStatisticsEx"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    const-class v1, Lcom/loc/cm;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/cj;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/loc/bn;

    const-string v2, "loc"

    const-string v3, "3.1.0"

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/loc/bn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/loc/bn;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/loc/cm;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/loc/cm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/loc/cm;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, p0}, Lcom/loc/bo;->a(Ljava/util/List;Landroid/content/Context;)V

    sget-object v0, Lcom/loc/cm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "ReportUtil"

    const-string v3, "applyStatistics"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/loc/cm;

    monitor-enter v1

    :try_start_0
    const-string v0, "loc"

    const-string v2, "3.1.0"

    invoke-static {v0, v2}, Lcom/loc/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/m;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/loc/w;->b(Lcom/loc/m;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "ReportUtil"

    const-string v3, "reportLog"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/loc/m;)Z
    .locals 3

    const-class v1, Lcom/loc/cm;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/loc/aq;->a(Landroid/content/Context;Lcom/loc/m;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/loc/cl;)V
    .locals 6

    const-class v1, Lcom/loc/cm;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/cj;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/loc/cl;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/loc/cl;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    const-string v2, "O004"

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "ReportUtil"

    const-string v3, "reportGPSLocUseTime"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const-class v1, Lcom/loc/cm;

    monitor-enter v1

    :try_start_0
    const-string v0, "O010"

    invoke-static {p0, v0, p2, p1}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "ReportUtil"

    const-string v3, "reportDex_dexFunction"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
