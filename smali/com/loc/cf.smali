.class public final Lcom/loc/cf;
.super Ljava/lang/Object;
.source "LocNetManager.java"


# static fields
.field private static a:Lcom/loc/cf;


# instance fields
.field private b:Lcom/loc/be;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:J

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/cf;->a:Lcom/loc/cf;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/cf;->b:Lcom/loc/be;

    iput-object v0, p0, Lcom/loc/cf;->c:Ljava/lang/Object;

    const-string v0, "apilocatesrc.amap.com"

    iput-object v0, p0, Lcom/loc/cf;->d:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/loc/cf;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/cf;->f:J

    iput-boolean v7, p0, Lcom/loc/cf;->g:Z

    const-string v0, "com.autonavi.httpdns.HttpDnsManager"

    iput-object v0, p0, Lcom/loc/cf;->h:Ljava/lang/String;

    iput v6, p0, Lcom/loc/cf;->i:I

    sget v0, Lcom/loc/c;->e:I

    iput v0, p0, Lcom/loc/cf;->j:I

    iput-boolean v6, p0, Lcom/loc/cf;->k:Z

    :try_start_0
    iget-object v0, p0, Lcom/loc/cf;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/loc/cf;->k:Z

    if-nez v0, :cond_0

    const-string v0, "HttpDNS"

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Lcom/loc/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/m;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/loc/cm;->a(Landroid/content/Context;Lcom/loc/m;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/cf;->k:Z

    iget-boolean v0, p0, Lcom/loc/cf;->k:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/loc/cf;->h:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/loc/aq;->a(Landroid/content/Context;Lcom/loc/m;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cf;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/cf;->c:Ljava/lang/Object;

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    const-string v1, "HttpDns"

    invoke-static {p1, v1, v0}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_2
    invoke-static {}, Lcom/loc/be;->a()Lcom/loc/be;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cf;->b:Lcom/loc/be;

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/loc/cf;->k:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initHttpDns"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/loc/cf;
    .locals 2

    const-class v1, Lcom/loc/cf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/cf;->a:Lcom/loc/cf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/cf;

    invoke-direct {v0, p0}, Lcom/loc/cf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/cf;->a:Lcom/loc/cf;

    :cond_0
    sget-object v0, Lcom/loc/cf;->a:Lcom/loc/cf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/loc/cf;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/cf;->c:Ljava/lang/Object;

    const-string v1, "getIpByHostAsync"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "HttpDns"

    invoke-static {p1, v0, v4}, Lcom/loc/cm;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v2, v5, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    const-string v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_2
    if-eqz v3, :cond_3

    if-eq v2, v4, :cond_3

    :goto_3
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    const-string v2, "-1"

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v4

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method private c(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/loc/cf;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/loc/cf;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/loc/cf;->i:I

    return v0
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/loc/ci;Ljava/lang/String;Z)Lcom/loc/bk;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "httptimeout"

    invoke-static {p2, v0}, Lcom/loc/cp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "httptimeout"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loc/cf;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/loc/cp;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cf;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "LocNetManager"

    const-string v2, "req"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/loc/cg;

    const-string v0, "loc"

    const-string v3, "3.1.0"

    invoke-static {v0, v3}, Lcom/loc/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/m;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/loc/cg;-><init>(Landroid/content/Context;Lcom/loc/m;)V

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-string v0, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gzipped"

    const-string v3, "1"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Connection"

    const-string v3, "Keep-Alive"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "User-Agent"

    const-string v3, "AMAP_Location_SDK_Android 3.1.0"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KEY"

    invoke-static {p1}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enginever"

    const-string v3, "4.2"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/loc/m$a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/loc/m$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ts"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scode"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loc"

    if-nez p5, :cond_3

    const-string v0, "locf"

    :cond_3
    const-string v3, "encr"

    const-string v4, "1"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean p5, v2, Lcom/loc/cg;->i:Z

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "3.1.0"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/loc/cg;->j:Ljava/lang/String;

    iput-object v1, v2, Lcom/loc/cg;->f:Ljava/util/Map;

    iput-object p4, v2, Lcom/loc/cg;->g:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/loc/ci;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cp;->a([B)[B

    move-result-object v0

    iput-object v0, v2, Lcom/loc/cg;->h:[B

    invoke-static {p1}, Lcom/loc/m$a;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/cg;->a(Ljava/net/Proxy;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "output"

    const-string v3, "bin"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "policy"

    const-string v3, "2103"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v2, Lcom/loc/cg;->k:Ljava/util/Map;

    iget v0, p0, Lcom/loc/cf;->j:I

    invoke-virtual {v2, v0}, Lcom/loc/cg;->a(I)V

    iget v0, p0, Lcom/loc/cf;->j:I

    invoke-virtual {v2, v0}, Lcom/loc/cg;->b(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cf;->e:Z

    const-string v0, "locationProtocol"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/loc/cg;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    const-string v4, "https"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/loc/cg;->g:Ljava/lang/String;

    :cond_4
    :goto_2
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v4

    :try_start_1
    iget-object v0, p0, Lcom/loc/cf;->b:Lcom/loc/be;

    invoke-virtual {v0, v2, v3}, Lcom/loc/be;->a(Lcom/loc/bj;Z)Lcom/loc/bk;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Lcom/loc/cf;->i:I

    iget-boolean v1, p0, Lcom/loc/cf;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "pref"

    const-string v2, "dns_faile_time"

    const-wide/16 v4, 0x0

    invoke-static {p1, v1, v2, v4, v5}, Lcom/loc/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v1, "pref"

    const-string v2, "dns_faile_count"

    const-wide/16 v4, 0x0

    invoke-static {p1, v1, v2, v4, v5}, Lcom/loc/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/loc/cf;->g:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/loc/cf;->f:J

    goto/16 :goto_1

    :cond_5
    const-string v0, "pref"

    const-string v1, "dns_faile_count"

    const-wide/16 v4, 0x0

    invoke-static {p1, v0, v1, v4, v5}, Lcom/loc/co;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-string v4, "pref"

    const-string v5, "dns_faile_time"

    const-wide/16 v6, 0x0

    invoke-static {p1, v4, v5, v6, v7}, Lcom/loc/co;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/loc/cp;->b(JJ)Z

    move-result v4

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x3

    cmp-long v0, v0, v4

    if-ltz v0, :cond_7

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/loc/cf;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/cf;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/loc/cf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p5, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "ip"

    const-string v1, "last_ip"

    const-string v4, ""

    invoke-static {p1, v0, v1, v4}, Lcom/loc/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/loc/cf;->e:Z

    const-string v1, "ip"

    const-string v4, "last_ip"

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/loc/co;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    invoke-static {}, Lcom/loc/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "apilocatesrc.amap.com"

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/loc/cg;->g:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/loc/cg;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "host"

    const-string v4, "apilocatesrc.amap.com"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x1

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v4, "SPUtil"

    const-string v5, "setPrefsInt"

    invoke-static {v1, v4, v5}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v0

    iget-boolean v1, p0, Lcom/loc/cf;->e:Z

    if-eqz v1, :cond_9

    const-string v1, "pref"

    const-string v2, "dns_faile_count"

    const-wide/16 v4, 0x0

    invoke-static {p1, v1, v2, v4, v5}, Lcom/loc/co;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/cf;->f:J

    const-string v1, "pref"

    const-string v2, "dns_faile_time"

    const-wide/16 v4, 0x0

    invoke-static {p1, v1, v2, v4, v5}, Lcom/loc/co;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_8

    const-string v1, "pref"

    const-string v6, "dns_faile_time"

    invoke-static {p1, v1, v6, v4, v5}, Lcom/loc/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_8
    invoke-static {v2, v3, v4, v5}, Lcom/loc/cp;->b(JJ)Z

    move-result v1

    if-nez v1, :cond_b

    iget-wide v2, p0, Lcom/loc/cf;->f:J

    const-wide/16 v6, 0x3

    cmp-long v1, v2, v6

    if-ltz v1, :cond_a

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/cf;->g:Z

    :goto_5
    const-string v1, "pref"

    const-string v2, "dns_last_success"

    iget-boolean v3, p0, Lcom/loc/cf;->g:Z

    invoke-static {p1, v1, v2, v3}, Lcom/loc/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/loc/cf;->f:J

    :goto_6
    iget-wide v2, p0, Lcom/loc/cf;->f:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/loc/cf;->f:J

    const-string v1, "pref"

    const-string v2, "dns_faile_count"

    iget-wide v6, p0, Lcom/loc/cf;->f:J

    invoke-static {p1, v1, v2, v6, v7}, Lcom/loc/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v1, "pref"

    const-string v2, "dns_faile_time"

    invoke-static {p1, v1, v2, v4, v5}, Lcom/loc/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    iget-wide v2, p0, Lcom/loc/cf;->f:J

    const-wide/16 v4, 0x3

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9

    iget-boolean v1, p0, Lcom/loc/cf;->g:Z

    if-nez v1, :cond_9

    const-string v1, "HttpDNS"

    const-string v2, "dns faile too much"

    invoke-static {p1, v1, v2}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    throw v0

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/loc/cf;->g:Z

    goto :goto_5

    :cond_b
    const-string v1, "pref"

    const-string v2, "dns_last_success"

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/loc/co;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/loc/cf;->g:Z

    goto :goto_6
.end method

.method public final a([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    invoke-static {p2}, Lcom/loc/cp;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cf;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/loc/cg;

    const-string v3, "loc"

    const-string v4, "3.1.0"

    invoke-static {v3, v4}, Lcom/loc/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/m;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lcom/loc/cg;-><init>(Landroid/content/Context;Lcom/loc/m;)V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    const-string v3, "User-Agent"

    const-string v4, "AMAP_Location_SDK_Android 3.1.0"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "custom"

    const-string v5, "26260A1F00020002"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "key"

    invoke-static {p2}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/loc/m$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/loc/r;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/loc/m$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ts"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "scode"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p1}, Lcom/loc/cg;->b([B)V

    iput-boolean v9, v2, Lcom/loc/cg;->i:Z

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "3.1.0"

    aput-object v8, v6, v7

    const-string v7, "loc"

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/loc/cg;->j:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/cg;->k:Ljava/util/Map;

    :cond_1
    iput-object v0, v2, Lcom/loc/cg;->f:Ljava/util/Map;

    iput-object p3, v2, Lcom/loc/cg;->g:Ljava/lang/String;

    if-nez p4, :cond_2

    iput-object p1, v2, Lcom/loc/cg;->h:[B

    :cond_2
    invoke-static {p2}, Lcom/loc/m$a;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/cg;->a(Ljava/net/Proxy;)V

    sget v0, Lcom/loc/c;->e:I

    invoke-virtual {v2, v0}, Lcom/loc/cg;->a(I)V

    sget v0, Lcom/loc/c;->e:I

    invoke-virtual {v2, v0}, Lcom/loc/cg;->b(I)V

    :try_start_0
    iget-object v0, p0, Lcom/loc/cf;->b:Lcom/loc/be;

    invoke-virtual {v0, v2}, Lcom/loc/be;->a(Lcom/loc/bj;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LocNetManager"

    const-string v3, "post"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method
