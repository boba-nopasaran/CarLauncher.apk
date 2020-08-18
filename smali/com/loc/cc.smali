.class public final Lcom/loc/cc;
.super Ljava/lang/Object;
.source "HeatMap.java"


# static fields
.field private static a:Lcom/loc/cc;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/cc;->a:Lcom/loc/cc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/loc/cc;->b:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cc;->c:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/loc/cc;
    .locals 2

    const-class v1, Lcom/loc/cc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/cc;->a:Lcom/loc/cc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/cc;

    invoke-direct {v0}, Lcom/loc/cc;-><init>()V

    sput-object v0, Lcom/loc/cc;->a:Lcom/loc/cc;

    :cond_0
    sget-object v0, Lcom/loc/cc;->a:Lcom/loc/cc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/loc/br;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/loc/cc;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/loc/cp;->b()J

    :try_start_0
    invoke-static {}, Lcom/loc/cb;->a()Lcom/loc/cb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/cb;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cc;->c:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HeatMap"

    const-string v2, "loadDB"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    .locals 9

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p3}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/loc/br;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/cc;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_2

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/bt;->a(DD)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/cc;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/bt;->a(DD)Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lat"

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lon"

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {}, Lcom/loc/cp;->a()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/loc/cc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "HeatMap"

    const-string v2, "update"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZ)V
    .locals 7

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/loc/br;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cc;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    :goto_1
    :try_start_2
    const-string v0, "x"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time"

    invoke-virtual {v1, v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/cc;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "num"

    const-string v2, "num"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/loc/cc;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/loc/c;->k:Z

    if-nez v0, :cond_2

    const-string v0, "pref"

    const-string v1, "ddex"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/loc/co;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x78

    if-lt p4, v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/c;->k:Z

    const-string v0, "pref"

    const-string v1, "ddex"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/loc/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "OffLocation"

    invoke-static {p1, v0}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz p7, :cond_0

    :try_start_4
    invoke-static {}, Lcom/loc/cb;->a()Lcom/loc/cb;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/loc/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "HeatMap"

    const-string v2, "update"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_6
    const-string v0, "num"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    const-string v2, "HeatMap"

    const-string v3, "update1"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/loc/cc;->a()Lcom/loc/cc;

    move-result-object v0

    iget-object v1, v0, Lcom/loc/cc;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/loc/cc;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cc;->c:Z

    return-void
.end method
