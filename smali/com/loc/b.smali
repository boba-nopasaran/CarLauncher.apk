.class public Lcom/loc/b;
.super Ljava/lang/Object;
.source "APSServiceCore.java"

# interfaces
.implements Lcom/amap/api/location/APSServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/b$a;,
        Lcom/loc/b$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/loc/bp;

.field c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Messenger;

.field private j:Lcom/loc/b$b;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field private o:Lcom/amap/api/location/AMapLocation;

.field private p:J

.field private q:I

.field private volatile r:Lcom/loc/bu;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/net/ServerSocket;

.field private x:Z

.field private y:Ljava/net/Socket;

.field private z:Lcom/loc/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/loc/b;->d:Z

    iput-boolean v2, p0, Lcom/loc/b;->e:Z

    iput-boolean v2, p0, Lcom/loc/b;->f:Z

    iput-boolean v2, p0, Lcom/loc/b;->g:Z

    iput-object v1, p0, Lcom/loc/b;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/b;->j:Lcom/loc/b$b;

    iput-wide v4, p0, Lcom/loc/b;->k:J

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/b;->l:Ljava/lang/String;

    iput-wide v4, p0, Lcom/loc/b;->m:J

    iput-object v1, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-object v1, p0, Lcom/loc/b;->o:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/loc/b;->p:J

    iput v2, p0, Lcom/loc/b;->q:I

    iput-object v1, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    iput-object v1, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    iput-boolean v2, p0, Lcom/loc/b;->s:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/b;->t:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/b;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/b;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/b;->w:Ljava/net/ServerSocket;

    iput-boolean v2, p0, Lcom/loc/b;->x:Z

    iput-object v1, p0, Lcom/loc/b;->y:Ljava/net/Socket;

    iput-object v1, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    iput-object v1, p0, Lcom/loc/b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "newInstanceAMapLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/b;)Lcom/loc/bu;
    .locals 1

    iget-object v0, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    return-object v0
.end method

.method static synthetic a(Lcom/loc/b;Lcom/loc/bu;)Lcom/loc/bu;
    .locals 0

    iput-object p1, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    return-object p1
.end method

.method private a(Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cj;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    invoke-static {}, Lcom/loc/cj;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/loc/b$a;->sendEmptyMessage(I)Z

    :cond_1
    invoke-static {}, Lcom/loc/cj;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/loc/cj;->d()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/b$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "checkConfig"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "sendMessage"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Messenger;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "locationJson"

    invoke-virtual {p2, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->toStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "originalLocType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1, v3, v0}, Lcom/loc/b;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/b;Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/loc/b;->b(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cj;->f(Landroid/content/Context;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/loc/b;->a(ZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doCallOtherSer"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/b;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/loc/b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/b;->g:Z

    invoke-direct {p0, p1}, Lcom/loc/b;->b(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cj;->f(Landroid/content/Context;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/loc/b;->a(ZLandroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/loc/b;->a(Landroid/os/Messenger;)V

    iget-wide v0, p0, Lcom/loc/b;->p:J

    invoke-static {v0, v1}, Lcom/loc/cj;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    const-string v1, "isCacheLoc"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/b;->p:J

    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0}, Lcom/loc/bp;->b()V

    :cond_2
    invoke-direct {p0}, Lcom/loc/b;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doInitAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/b;Landroid/os/Messenger;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/loc/b;->a(Landroid/os/Messenger;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;I)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x7530

    :try_start_0
    const-string v1, "jsonp1"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v6, v5

    if-le v6, v9, :cond_4

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "\\?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v6, v5

    if-le v6, v9, :cond_4

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v6, v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v6, :cond_4

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    :goto_1
    :try_start_3
    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget-object v6, v5, v4

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v7, v6

    if-le v7, v9, :cond_2

    const-string v7, "to"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    const-string v7, "callback"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    aget-object v0, v6, v7
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :cond_4
    :try_start_4
    sget v4, Lcom/loc/c;->e:I

    sput v0, Lcom/loc/c;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v0, v6, v8

    if-lez v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cp;->d(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_7

    :try_start_5
    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0}, Lcom/loc/bp;->a()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "({\'package\':\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/loc/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\',\'error_code\':"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\'error\':\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'})"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    :cond_6
    :try_start_6
    sput v4, Lcom/loc/c;->e:I

    :cond_7
    :goto_2
    if-nez v3, :cond_8

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'error_code\':8,\'error\':\'unknown error\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cp;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    :cond_8
    :try_start_7
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    invoke-direct {v0, v1, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Content-Length:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_9
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "invoke part5"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_a
    const-string v5, "APSServiceCore"

    const-string v6, "invoke part1"

    invoke-static {v0, v5, v6}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    sput v4, Lcom/loc/c;->e:I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :goto_4
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "({\'package\':\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/loc/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\',\'error_code\':1,\'error\':\'params error\'})"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "APSServiceCore"

    const-string v4, "invoke part2"

    invoke-static {v0, v1, v4}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    invoke-direct {v0, v1, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Content-Length:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_f
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_10
    sput v4, Lcom/loc/c;->e:I

    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catchall_1
    move-exception v0

    :goto_5
    :try_start_11
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "UTF-8"

    invoke-direct {v1, v4, v5, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v4, "HTTP/1.0 200 OK"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content-Length:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    :goto_6
    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    :cond_9
    :try_start_14
    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "({\'package\':\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'precision\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'x\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "},\'version_code\':\'3.1.0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'version\':\'3.1.0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-result-object v3

    goto/16 :goto_3

    :catch_5
    move-exception v1

    :try_start_15
    const-string v3, "APSServiceCore"

    const-string v4, "invoke part3"

    invoke-static {v1, v3, v4}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :try_start_17
    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_1

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_7

    :goto_7
    :try_start_19
    throw v0

    :catch_7
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_8
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1

    goto/16 :goto_6

    :catch_9
    move-exception v0

    :try_start_1a
    const-string v1, "APSServiceCore"

    const-string v3, "invoke part3"

    invoke-static {v0, v1, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    :try_start_1c
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_b

    :goto_8
    :try_start_1e
    throw v0

    :catch_b
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1

    goto :goto_8

    :catch_c
    move-exception v0

    :try_start_1f
    const-string v1, "APSServiceCore"

    const-string v3, "invoke part3"

    invoke-static {v0, v1, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :try_start_20
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception v0

    :try_start_21
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :try_start_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_e

    :goto_9
    :try_start_23
    throw v0

    :catch_e
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v3

    goto/16 :goto_5

    :catch_f
    move-exception v0

    move-object v2, v3

    goto/16 :goto_4

    :catch_10
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_4
.end method

.method private a(ZLandroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0, p1, p2}, Lcom/loc/bp;->a(ZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    iget-object v1, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/bp;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/cj;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ngpsAble"

    invoke-static {}, Lcom/loc/cj;->q()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/loc/b;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/loc/cj;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/b;->c()V

    return-void
.end method

.method static synthetic b(Lcom/loc/b;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/loc/b;->t:Z

    if-nez v2, :cond_2

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/loc/b;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/loc/b;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/loc/b;->a(Landroid/os/Messenger;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "extraJson"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "e"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v3, "f"

    const/4 v6, 0x0

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v2, :cond_4

    :try_start_2
    iget-object v3, p0, Lcom/loc/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/loc/b;->m:J

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v7, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v7, v3}, Lcom/loc/bp;->a(Lorg/json/JSONObject;)V

    const-string v7, "isKillProcess"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v0, :cond_9

    :goto_1
    iput-boolean v0, p0, Lcom/loc/b;->d:Z

    const-string v0, "sensorEnable"

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/b;->e:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    :try_start_4
    iput-object v2, p0, Lcom/loc/b;->l:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/loc/b;->e:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    invoke-virtual {v0}, Lcom/loc/bu;->a()V

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_b

    iget-wide v8, p0, Lcom/loc/b;->m:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x258

    cmp-long v0, v2, v8

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2}, Lcom/loc/b;->a(Landroid/os/Messenger;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;I)V

    :goto_5
    invoke-direct {p0, p1}, Lcom/loc/b;->b(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0}, Lcom/loc/bp;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/loc/b;->a(Landroid/os/Messenger;)V

    :cond_6
    iget-wide v2, p0, Lcom/loc/b;->p:J

    invoke-static {v2, v3}, Lcom/loc/cj;->a(J)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    if-eq v1, v0, :cond_7

    if-ne v1, v10, :cond_8

    :cond_7
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/b;->p:J

    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0}, Lcom/loc/bp;->b()V

    :cond_8
    invoke-direct {p0}, Lcom/loc/b;->d()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string v3, "APSServiceCore"

    const-string v7, "setExtra"

    invoke-static {v0, v3, v7}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_a
    :try_start_7
    iget-object v0, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    invoke-virtual {v0}, Lcom/loc/bu;->c()V

    goto :goto_4

    :cond_b
    new-instance v7, Lcom/loc/cl;

    invoke-direct {v7}, Lcom/loc/cl;-><init>()V

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/loc/cl;->a(J)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0}, Lcom/loc/bp;->a()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v1

    :cond_c
    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v7, v0}, Lcom/loc/cl;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v2

    :cond_d
    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    iget-object v8, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lcom/loc/bp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setTime(J)V

    iget-boolean v0, p0, Lcom/loc/b;->e:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    invoke-virtual {v0, v6}, Lcom/loc/bu;->a(F)V

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v2, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    invoke-virtual {v2, v4, v5}, Lcom/loc/bu;->a(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setAltitude(D)V

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v2, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    invoke-virtual {v2}, Lcom/loc/bu;->d()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setBearing(F)V

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v2, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    invoke-virtual {v2}, Lcom/loc/bu;->e()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setSpeed(F)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :goto_6
    :try_start_9
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/loc/cl;->b(J)V

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/b;->m:J

    :cond_e
    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-nez v0, :cond_f

    const/16 v0, 0x8

    const-string v2, "loc is null"

    invoke-static {v0, v2}, Lcom/loc/b;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    :cond_f
    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-direct {p0, p1, v0, v1}, Lcom/loc/b;->a(Landroid/os/Messenger;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;I)V

    iget-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/loc/cm;->a(Landroid/content/Context;Lcom/loc/cl;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_5

    :cond_10
    :try_start_a
    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setAltitude(D)V

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setBearing(F)V

    iget-object v0, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setSpeed(F)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    const/16 v2, 0x8

    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/loc/b;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/b;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v2, "APSServiceCore"

    const-string v3, "run part2"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_6
.end method

.method private c()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/b;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/b;->v:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/c;->a(Lcom/amap/api/location/AMapLocationClientOption;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/b;->v:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/b;->f:Z

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/b;->v:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v1, v0}, Lcom/loc/bp;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    iget-object v1, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/bp;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/b;->t:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/b;->u:Ljava/lang/String;

    const-string v1, "APSServiceCore"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/loc/b;)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/loc/b;->q:I

    invoke-static {}, Lcom/loc/cj;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/loc/b;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/b;->q:I

    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0}, Lcom/loc/bp;->b()V

    iget-object v0, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    const/4 v1, 0x4

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/b$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doGpsFusion"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0}, Lcom/loc/bp;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "startColl"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/loc/b;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/loc/cj;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0}, Lcom/loc/bp;->b()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    const/4 v1, 0x5

    invoke-static {}, Lcom/loc/cj;->d()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/b$a;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cp;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0}, Lcom/loc/bp;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doOffFusion"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/loc/b;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/loc/b;->k:J

    invoke-static {v0, v2, v3}, Lcom/loc/cj;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/loc/cp;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/b;->k:J

    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0}, Lcom/loc/bp;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doNGps"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/loc/b;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/b$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cm;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/b;->j:Lcom/loc/b$b;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x12

    if-lt v0, v1, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/loc/b;->j:Lcom/loc/b$b;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/loc/b;->j:Lcom/loc/b$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    iget-object v0, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/b;->r:Lcom/loc/bu;

    invoke-virtual {v0}, Lcom/loc/bu;->f()V

    :cond_2
    invoke-virtual {p0}, Lcom/loc/b;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/b;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/b;->g:Z

    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0}, Lcom/loc/bp;->c()V

    invoke-static {}, Lcom/loc/w;->a()V

    iget-boolean v0, p0, Lcom/loc/b;->d:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/b;->j:Lcom/loc/b$b;

    invoke-virtual {v0}, Lcom/loc/b$b;->quit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "threadDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/loc/b;->j:Lcom/loc/b$b;

    invoke-virtual {v0}, Lcom/loc/b$b;->quit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/loc/b;->c()V

    iget-boolean v0, p0, Lcom/loc/b;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/b;->x:Z

    new-instance v0, Ljava/net/ServerSocket;

    const v1, 0xaaa9

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/loc/b;->w:Ljava/net/ServerSocket;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/loc/b;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/b;->w:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/b;->y:Ljava/net/Socket;

    iget-object v0, p0, Lcom/loc/b;->y:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/loc/b;->a(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "APSServiceCore"

    const-string v2, "startSocket"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 10

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/loc/cj;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lat"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v0, "lon"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/loc/b;->o:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v6, 0x0

    aput-wide v2, v0, v6

    const/4 v6, 0x1

    aput-wide v4, v0, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/loc/b;->o:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v0, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/loc/b;->o:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v0, v6

    invoke-static {v0}, Lcom/loc/cp;->a([D)F

    move-result v0

    invoke-static {}, Lcom/loc/cj;->x()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "lMaxGeoDis"

    invoke-static {}, Lcom/loc/cj;->x()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "lMinGeoDis"

    invoke-static {}, Lcom/loc/cj;->x()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "locationJson"

    iget-object v8, p0, Lcom/loc/b;->o:Lcom/amap/api/location/AMapLocation;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/amap/api/location/AMapLocation;->toStr(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x6

    invoke-static {p1, v7, v6}, Lcom/loc/b;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    :cond_2
    :goto_1
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/loc/cj;->x()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/loc/b;->c()V

    iget-object v0, p0, Lcom/loc/b;->b:Lcom/loc/bp;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/loc/bp;->a(DD)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/b;->o:Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doLocationGeo"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/b;->w:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/b;->w:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    iget-object v0, p0, Lcom/loc/b;->y:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/b;->y:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/loc/b;->w:Ljava/net/ServerSocket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/b;->x:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "APSServiceCore"

    const-string v2, "stopScocket"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/loc/l;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "b"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    const-string v2, "as"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/loc/b;->s:Z

    iget-boolean v1, p0, Lcom/loc/b;->s:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    const/16 v2, 0x9

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Lcom/loc/b$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-static {v0}, Lcom/loc/k;->a(Ljava/lang/String;)V

    const-string v0, "c"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/b;->i:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/loc/b;->i:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/b;->h:Ljava/lang/String;

    new-instance v0, Lcom/loc/b$b;

    const-string v1, "coreActionThread"

    invoke-direct {v0, p0, v1}, Lcom/loc/b$b;-><init>(Lcom/loc/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/b;->j:Lcom/loc/b$b;

    iget-object v0, p0, Lcom/loc/b;->j:Lcom/loc/b$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/b$b;->setPriority(I)V

    iget-object v0, p0, Lcom/loc/b;->j:Lcom/loc/b$b;

    invoke-virtual {v0}, Lcom/loc/b$b;->start()V

    new-instance v0, Lcom/loc/b$a;

    iget-object v1, p0, Lcom/loc/b;->j:Lcom/loc/b$b;

    invoke-virtual {v1}, Lcom/loc/b$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/loc/b$a;-><init>(Lcom/loc/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/b;->z:Lcom/loc/b$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/b;->z:Lcom/loc/b$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/loc/b$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
