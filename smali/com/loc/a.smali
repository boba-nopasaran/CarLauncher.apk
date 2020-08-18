.class public Lcom/loc/a;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Lcom/amap/api/location/LocationManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/a$a;,
        Lcom/loc/a$b;,
        Lcom/loc/a$c;,
        Lcom/loc/a$d;
    }
.end annotation


# instance fields
.field private A:Lorg/json/JSONArray;

.field private B:I

.field private C:Z

.field private D:Lcom/loc/a$b;

.field private volatile E:Lcom/loc/bu;

.field private volatile F:Z

.field private volatile G:F

.field private volatile H:D

.field private volatile I:Lcom/loc/f;

.field private J:Ljava/lang/String;

.field private K:Landroid/content/ServiceConnection;

.field private L:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/loc/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/loc/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private N:I

.field private O:Lcom/amap/api/location/AMapLocation;

.field private P:Ljava/lang/String;

.field private Q:Z

.field a:Lcom/amap/api/location/AMapLocationClientOption;

.field b:Lcom/loc/g;

.field c:Landroid/os/Messenger;

.field d:Z

.field e:J

.field f:I

.field g:I

.field h:Lcom/loc/a$a;

.field i:Lcom/amap/api/location/AMapLocation;

.field private j:I

.field private k:Z

.field private l:Landroid/content/Context;

.field private m:Lcom/loc/a$d;

.field private n:Z

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/loc/d;

.field private r:Z

.field private s:Z

.field private t:Lcom/loc/h;

.field private u:Landroid/os/Messenger;

.field private v:Landroid/content/Intent;

.field private w:I

.field private x:Lcom/amap/api/location/AMapLocation;

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/loc/a;->j:I

    iput-boolean v3, p0, Lcom/loc/a;->k:Z

    iput-object v2, p0, Lcom/loc/a;->b:Lcom/loc/g;

    iput-boolean v3, p0, Lcom/loc/a;->n:Z

    iput-boolean v1, p0, Lcom/loc/a;->o:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/loc/a;->r:Z

    iput-boolean v1, p0, Lcom/loc/a;->s:Z

    iput-object v2, p0, Lcom/loc/a;->c:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/loc/a;->u:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/loc/a;->v:Landroid/content/Intent;

    iput v3, p0, Lcom/loc/a;->w:I

    iput-boolean v3, p0, Lcom/loc/a;->d:Z

    iput-wide v4, p0, Lcom/loc/a;->e:J

    iput-object v2, p0, Lcom/loc/a;->x:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/loc/a;->y:J

    iput-wide v4, p0, Lcom/loc/a;->z:J

    iput-object v2, p0, Lcom/loc/a;->A:Lorg/json/JSONArray;

    iput v3, p0, Lcom/loc/a;->B:I

    iput-boolean v1, p0, Lcom/loc/a;->C:Z

    const/16 v0, 0xf0

    iput v0, p0, Lcom/loc/a;->f:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/loc/a;->g:I

    iput-object v2, p0, Lcom/loc/a;->D:Lcom/loc/a$b;

    iput-object v2, p0, Lcom/loc/a;->E:Lcom/loc/bu;

    iput-boolean v3, p0, Lcom/loc/a;->F:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->G:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->H:D

    iput-object v2, p0, Lcom/loc/a;->I:Lcom/loc/f;

    iput-object v2, p0, Lcom/loc/a;->J:Ljava/lang/String;

    new-instance v0, Lcom/loc/a$1;

    invoke-direct {v0, p0}, Lcom/loc/a$1;-><init>(Lcom/loc/a;)V

    iput-object v0, p0, Lcom/loc/a;->K:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->L:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->M:Ljava/util/LinkedList;

    iput v3, p0, Lcom/loc/a;->N:I

    iput-object v2, p0, Lcom/loc/a;->O:Lcom/amap/api/location/AMapLocation;

    iput-object v2, p0, Lcom/loc/a;->P:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/loc/a;->Q:Z

    iput-object v2, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    iput-object v2, p0, Lcom/loc/a;->i:Lcom/amap/api/location/AMapLocation;

    iput-object p1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/a;->v:Landroid/content/Intent;

    invoke-static {}, Lcom/loc/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "loc"

    const-string v1, "3.1.0"

    invoke-static {v0, v1}, Lcom/loc/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/m;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/cn;->a(Landroid/content/Context;Lcom/loc/m;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/loc/a$d;

    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/loc/a$d;-><init>(Lcom/loc/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/a;->m:Lcom/loc/a$d;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    new-instance v0, Lcom/loc/a$b;

    const-string v1, "managerActionThread"

    invoke-direct {v0, v1}, Lcom/loc/a$b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/a;->D:Lcom/loc/a$b;

    iget-object v0, p0, Lcom/loc/a;->D:Lcom/loc/a$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/a$b;->setPriority(I)V

    iget-object v0, p0, Lcom/loc/a;->D:Lcom/loc/a$b;

    invoke-virtual {v0}, Lcom/loc/a$b;->start()V

    new-instance v0, Lcom/loc/a$a;

    iget-object v1, p0, Lcom/loc/a;->D:Lcom/loc/a$b;

    invoke-virtual {v1}, Lcom/loc/a$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/loc/a$a;-><init>(Lcom/loc/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/a;->m:Lcom/loc/a$d;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/a;->u:Landroid/os/Messenger;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/loc/a;->v:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/loc/a;->a(Landroid/content/Intent;)V

    :try_start_3
    new-instance v0, Lcom/loc/h;

    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/a;->t:Lcom/loc/h;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    new-instance v0, Lcom/loc/g;

    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/a;->m:Lcom/loc/a$d;

    invoke-direct {v0, v1, v2}, Lcom/loc/g;-><init>(Landroid/content/Context;Lcom/loc/a$d;)V

    iput-object v0, p0, Lcom/loc/a;->b:Lcom/loc/g;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    new-instance v0, Lcom/loc/d;

    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/a;->q:Lcom/loc/d;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    new-instance v0, Lcom/loc/bu;

    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/bu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/a;->E:Lcom/loc/bu;

    invoke-static {}, Lcom/loc/f;->a()Lcom/loc/f;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->I:Lcom/loc/f;

    return-void

    :cond_1
    :try_start_6
    new-instance v0, Lcom/loc/a$d;

    invoke-direct {v0, p0}, Lcom/loc/a$d;-><init>(Lcom/loc/a;)V

    iput-object v0, p0, Lcom/loc/a;->m:Lcom/loc/a$d;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 1"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 5"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 2"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 3"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 4"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method

.method private a(Lcom/loc/bp;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lcom/loc/cl;

    invoke-direct {v3}, Lcom/loc/cl;-><init>()V

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/loc/cl;->a(J)V

    iget-object v4, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/loc/a;->a(Lcom/loc/bp;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Lcom/loc/bp;->e()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-static {v1}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v4}, Lcom/loc/a;->a(Lcom/loc/bp;ZZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1, v0}, Lcom/loc/bp;->a(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    move-object v0, v1

    :goto_1
    :try_start_4
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/loc/cl;->b(J)V

    invoke-virtual {v3, v0}, Lcom/loc/cl;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_3

    const-string v4, "originalLocType"

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "locationJson"

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->toStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput v1, v4, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->m:Lcom/loc/a$d;

    invoke-virtual {v1, v4}, Lcom/loc/a$d;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    :try_start_6
    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/loc/cm;->a(Landroid/content/Context;Lcom/loc/cl;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :goto_4
    if-eqz v2, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_7
    invoke-direct {p0, p1, v1, v2}, Lcom/loc/a;->a(Lcom/loc/bp;ZZ)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/loc/bp;->a(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v0

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    move-result v1

    if-nez v1, :cond_2

    :try_start_9
    invoke-virtual {p1, v0}, Lcom/loc/bp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_2
    :goto_6
    :try_start_a
    invoke-virtual {p1}, Lcom/loc/bp;->c()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    :goto_7
    return-object v0

    :catch_0
    move-exception v4

    :try_start_b
    const-string v5, "AMapLocationManager"

    const-string v6, "executeFirstLocation:doFirstCacheLocate"

    invoke-static {v4, v5, v6}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_8
    const-string v2, "AMapLocationManager"

    const-string v3, "executeFirstLocation"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_c
    const-string v4, "AMapLocationManager"

    const-string v5, "executeFirstLocation:doFirstNetLocate"

    invoke-static {v0, v4, v5}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    move-object v0, v1

    goto :goto_1

    :cond_3
    :try_start_d
    const-string v4, "originalLocType"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_e
    const-string v4, "AMapLocationManager"

    const-string v5, "executeFirstLocation:callback"

    invoke-static {v1, v4, v5}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_8

    :catch_5
    move-exception v1

    const-string v3, "AMapLocationManager"

    const-string v4, "executeFirstLocation:reportLBSLocUseTime"

    invoke-static {v1, v3, v4}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_6
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "executeFirstLocation:doFirstNetLocate 2"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_7
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "executeFirstLocation:doFirstAddCache"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_7

    :cond_4
    move v2, v0

    move-object v0, v1

    goto/16 :goto_1
.end method

.method private static a(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/a$c;
    .locals 1

    new-instance v0, Lcom/loc/a$c;

    invoke-direct {v0, p0, p1}, Lcom/loc/a$c;-><init>(Lcom/amap/api/location/AMapLocation;I)V

    return-object v0
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->J:Ljava/lang/String;

    :cond_1
    const-string v0, "c"

    iget-object v1, p0, Lcom/loc/a;->J:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/loc/a;->u:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/a;->c:Landroid/os/Messenger;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loc/a;->c:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "sendLocMessage"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    const-class v1, Lcom/amap/api/location/APSService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    :try_start_2
    const-string v1, "a"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "b"

    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/a;->K:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "AMapLocationManager"

    const-string v3, "startServiceImpl p2"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startServiceImpl"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/cp;->b(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v0

    invoke-static {v0}, Lcom/loc/cp;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    invoke-static {v0}, Lcom/loc/cp;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    iget-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    return-void
.end method

.method private a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    .locals 7

    const/16 v6, 0xa

    invoke-static {p1}, Lcom/loc/cp;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "lat"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "lon"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_2
    iget-object v1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    invoke-direct {p0, v6, v0}, Lcom/loc/a;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    invoke-static {v1}, Lcom/loc/cp;->a([D)F

    move-result v1

    iget v2, p0, Lcom/loc/a;->f:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    invoke-static {p1, p2}, Lcom/loc/c;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    :cond_4
    iget v2, p0, Lcom/loc/a;->g:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-direct {p0, v6, v0}, Lcom/loc/a;->a(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;)V
    .locals 14

    :try_start_0
    invoke-static {}, Lcom/loc/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    const-string v1, "loc"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    const-string v1, "loc"

    const-string v2, "amaplocation is null"

    invoke-static {v0, v1, v2}, Lcom/loc/cn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "handlerLocation part3"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_19

    :try_start_1
    new-instance v2, Lcom/amap/api/location/AMapLocation;

    const-string v0, ""

    invoke-direct {v2, v0}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    :goto_1
    const-string v0, "gps"

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "lbs"

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/loc/a;->q:Lcom/loc/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/a;->q:Lcom/loc/d;

    invoke-virtual {v0, v2}, Lcom/loc/d;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    :try_start_3
    iget-boolean v0, p0, Lcom/loc/a;->o:Z

    if-nez v0, :cond_a

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result v0

    if-nez v0, :cond_8

    :try_start_4
    iget-object v1, p0, Lcom/loc/a;->x:Lcom/amap/api/location/AMapLocation;

    iput-object v2, p0, Lcom/loc/a;->O:Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v6

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/loc/a;->z:J

    const/4 v3, 0x0

    iput v3, p0, Lcom/loc/a;->N:I

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    iget v3, p0, Lcom/loc/a;->j:I

    const/4 v8, 0x3

    if-gt v3, v8, :cond_b

    :cond_5
    move-object v0, v2

    :goto_3
    iget v1, p0, Lcom/loc/a;->N:I

    invoke-static {v0, v1}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/a;->O:Lcom/amap/api/location/AMapLocation;

    iget v3, p0, Lcom/loc/a;->N:I

    invoke-static {v1, v3}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/a$c;

    move-result-object v1

    iget-boolean v3, p0, Lcom/loc/a;->k:Z

    if-nez v3, :cond_14

    iget-object v1, p0, Lcom/loc/a;->L:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/loc/a;->L:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_6

    iget-object v1, p0, Lcom/loc/a;->L:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/loc/a;->L:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/loc/a;->L:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/loc/a;->M:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/loc/a;->L:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/loc/a;->M:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/loc/a;->L:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/a$c;

    invoke-virtual {v0}, Lcom/loc/a$c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "AMapLocationManager"

    const-string v3, "handleMessage"

    invoke-static {v0, v1, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/a;->y:J

    iput-object v2, p0, Lcom/loc/a;->x:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2, v4, v5}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    invoke-direct {p0, v2}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Lcom/loc/a;->t:Lcom/loc/h;

    invoke-virtual {v0, v2}, Lcom/loc/h;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-static {}, Lcom/loc/cj;->o()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move-result v0

    if-nez v0, :cond_17

    :cond_9
    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    iget v1, p0, Lcom/loc/a;->B:I

    invoke-static {v0, v1, v2}, Lcom/loc/cm;->a(Landroid/content/Context;ILcom/amap/api/location/AMapLocation;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_a
    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cn;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loc/a;->i()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v3, "handlerLocation part1"

    invoke-static {v0, v1, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    :cond_b
    :try_start_9
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    const/4 v8, 0x0

    cmpg-float v3, v3, v8

    if-ltz v3, :cond_c

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v3

    const/4 v8, 0x0

    cmpg-float v3, v3, v8

    if-gez v3, :cond_f

    :cond_c
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    :cond_d
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    :cond_e
    move-object v0, v2

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-ltz v3, :cond_13

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_10

    iget-wide v10, p0, Lcom/loc/a;->y:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x1388

    cmp-long v3, v10, v12

    if-gez v3, :cond_12

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v3

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v10

    add-float/2addr v3, v10

    long-to-float v8, v8

    mul-float/2addr v3, v8

    const/high16 v8, 0x44fa0000    # 2000.0f

    div-float/2addr v3, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v9

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v10

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x4

    new-array v9, v9, [D

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v12

    aput-wide v12, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v12

    aput-wide v12, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v12

    aput-wide v12, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v12

    aput-wide v12, v9, v10

    invoke-static {v9}, Lcom/loc/cp;->a([D)F

    move-result v9

    add-float/2addr v3, v8

    const v8, 0x453b8000    # 3000.0f

    add-float/2addr v3, v8

    cmpl-float v3, v9, v3

    if-lez v3, :cond_10

    const/4 v0, 0x1

    :cond_10
    :goto_9
    if-eqz v0, :cond_13

    iget-wide v8, p0, Lcom/loc/a;->z:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_11

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/loc/a;->z:J

    :cond_11
    iget-wide v8, p0, Lcom/loc/a;->z:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7530

    cmp-long v0, v6, v8

    if-gez v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->k:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/a;->N:I

    move-object v0, v1

    goto/16 :goto_3

    :cond_12
    const/4 v3, 0x0

    iput v3, p0, Lcom/loc/a;->j:I

    goto :goto_9

    :cond_13
    move-object v0, v2

    goto/16 :goto_3

    :cond_14
    iget v3, p0, Lcom/loc/a;->N:I

    if-nez v3, :cond_15

    iget-object v1, p0, Lcom/loc/a;->L:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/loc/a;->M:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/loc/a;->M:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_15
    iget-object v0, p0, Lcom/loc/a;->M:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/loc/a;->M:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_16
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, "gpsstatistics"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/cm;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/a;->L:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/loc/a;->M:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a;->k:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_6

    :cond_17
    const/4 v1, 0x0

    :try_start_a
    iget v0, p0, Lcom/loc/a;->B:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/a;->A:Lorg/json/JSONArray;

    if-nez v0, :cond_18

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->A:Lorg/json/JSONArray;

    :cond_18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "lon"

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "lat"

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-static {}, Lcom/loc/cp;->a()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/a;->A:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->A:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/loc/a;->A:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_9

    invoke-direct {p0}, Lcom/loc/a;->g()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_7

    :catch_3
    move-exception v0

    :try_start_b
    const-string v1, "AMapLocationManager"

    const-string v3, "handlerOfflineLog"

    invoke-static {v0, v1, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_7

    :catch_4
    move-exception v0

    :try_start_c
    const-string v1, "AMapLocationManager"

    const-string v2, "handlerLocation part2"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_8

    :pswitch_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_a

    :pswitch_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_a

    :cond_19
    move-object v2, p1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/a;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/loc/a;->l:Landroid/content/Context;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/cj;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, ""

    invoke-static {}, Lcom/loc/cj;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/loc/cj;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/loc/cj;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/a$2;

    invoke-direct {v3, p0}, Lcom/loc/a$2;-><init>(Lcom/loc/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-static {}, Lcom/loc/cj;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/a$3;

    invoke-direct {v3, p0}, Lcom/loc/a$3;-><init>(Lcom/loc/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/loc/a;->l:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/loc/a;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/loc/a;->h()V

    const-string v1, "AMapLocationManager"

    const-string v2, "showDialog"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/a;Landroid/app/PendingIntent;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->q:Lcom/loc/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->q:Lcom/loc/d;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/loc/d;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/loc/d;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/a;Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/loc/a;->j:I

    if-eqz p1, :cond_1

    const-string v0, "locationJson"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string v3, ""

    invoke-direct {v0, v3}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/loc/c;->a(Lcom/amap/api/location/AMapLocation;Lorg/json/JSONObject;)V

    const-string v2, "originalLocType"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/loc/a;->B:I

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Lcom/loc/a;->i:Lcom/amap/api/location/AMapLocation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    const-string v2, "AMapLocationManager$MHandler"

    const-string v3, "handleMessage LBS_LOCATIONSUCCESS"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/a;Landroid/os/Message;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    iput v2, p0, Lcom/loc/a;->B:I

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/loc/a;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/loc/a;->j:I

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/a;->e:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/loc/a;->d:Z

    :cond_0
    iget-object v2, p0, Lcom/loc/a;->b:Lcom/loc/g;

    iget v2, v2, Lcom/loc/g;->i:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v0

    move-object v0, v1

    :goto_0
    iget-object v3, p0, Lcom/loc/a;->i:Lcom/amap/api/location/AMapLocation;

    invoke-direct {p0, v2, v3}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V

    invoke-direct {p0, v2, v0}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;)V

    :try_start_2
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/a;->H:D

    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/loc/a;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    const/16 v2, 0x3fb

    invoke-virtual {v0, v2}, Lcom/loc/a$a;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/loc/a;->s:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/a;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_2

    invoke-direct {p0, v5, v1}, Lcom/loc/a;->a(ILandroid/os/Bundle;)V

    iput-boolean v5, p0, Lcom/loc/a;->s:Z

    :cond_2
    iget-boolean v0, p0, Lcom/loc/a;->C:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    invoke-direct {p0, v0, v1}, Lcom/loc/a;->a(ILandroid/os/Bundle;)V

    :cond_3
    return-void

    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/loc/a;->b:Lcom/loc/g;

    iget v2, v2, Lcom/loc/g;->i:I

    if-nez v2, :cond_5

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    const-string v3, "AMapLocationManager$ActionHandler"

    const-string v4, "handleMessage GPS_LOCATIONSUCCESS"

    invoke-static {v0, v3, v4}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2
.end method

.method static synthetic a(Lcom/loc/a;Lcom/amap/api/fence/Fence;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->q:Lcom/loc/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->q:Lcom/loc/d;

    iget-object v1, p1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Lcom/loc/d;->a(Lcom/amap/api/fence/Fence;Landroid/app/PendingIntent;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/a;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/a;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private a(Lcom/loc/bp;ZZ)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/a;->Q:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/loc/l;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->Q:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/a;->P:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/c;->a(Lcom/amap/api/location/AMapLocationClientOption;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->P:Ljava/lang/String;

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/a;->P:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/loc/bp;->a(Lorg/json/JSONObject;)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/loc/bp;->a(Landroid/content/Context;)Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "initAPSBase 2"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "initAPS part3"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-virtual {p1, v0, p3}, Lcom/loc/bp;->a(Landroid/content/Context;Z)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/a;->C:Z

    return p1
.end method

.method static synthetic b(Lcom/loc/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/a;->h()V

    return-void
.end method

.method static synthetic b(Lcom/loc/a;Lcom/amap/api/fence/Fence;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->q:Lcom/loc/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->q:Lcom/loc/d;

    iget-object v1, p1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loc/d;->a(Landroid/app/PendingIntent;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/a;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/loc/a;->i()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/loc/a;)V
    .locals 5

    const/16 v4, 0x3f7

    const/16 v3, 0x3f8

    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a;->o:Z

    sget-object v0, Lcom/loc/a$4;->a:[I

    iget-object v1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/loc/a;->n()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Lcom/loc/a$a;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v0, v3}, Lcom/loc/a$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v0, v3}, Lcom/loc/a$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v0, v4}, Lcom/loc/a$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v2, v4}, Lcom/loc/a$a;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isGpsFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v0, 0x7530

    :cond_2
    iget-object v2, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v2, v3, v0, v1}, Lcom/loc/a$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/loc/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/a;->i()V

    return-void
.end method

.method static synthetic e(Lcom/loc/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/a;->k()V

    return-void
.end method

.method private e()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/loc/a;->c:Landroid/os/Messenger;

    if-nez v3, :cond_1

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/loc/a;->c:Landroid/os/Messenger;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/amap/api/location/AMapLocation;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v4, "\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u662f\u5426\u914d\u7f6e\u670d\u52a1"

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const-string v4, "locationJson"

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/amap/api/location/AMapLocation;->toStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/loc/a;->m:Lcom/loc/a$d;

    invoke-virtual {v2, v1}, Lcom/loc/a$d;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "checkAPSManager"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/a;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/loc/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/a;->f()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized g()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/loc/cj;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/a;->A:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->A:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "detail"

    iget-object v2, p0, Lcom/loc/a;->A:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "loc"

    const-string v2, "3.1.0"

    invoke-static {v1, v2}, Lcom/loc/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/m;

    move-result-object v1

    new-instance v2, Lcom/loc/bl;

    iget-object v3, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lcom/loc/bl;-><init>(Landroid/content/Context;Lcom/loc/m;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/loc/bm;->a(Lcom/loc/bl;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->A:Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AMapLocationManager"

    const-string v2, "writeOfflineLog"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/loc/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/a;->l()V

    return-void
.end method

.method private h()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.autonavi.minimap"

    invoke-static {}, Lcom/loc/cj;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/loc/cj;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part1"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/loc/cj;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part2"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/loc/a;)V
    .locals 3

    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/c;->a(Lcom/amap/api/location/AMapLocationClientOption;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/g;

    iget-object v1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, v0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, v0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/g;

    invoke-virtual {v0}, Lcom/loc/g;->a()V

    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    const/16 v1, 0x3f8

    invoke-virtual {v0, v1}, Lcom/loc/a$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/loc/a;->L:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/loc/a;->M:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/loc/a;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->w:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->x:Lcom/amap/api/location/AMapLocation;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->y:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->N:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->O:Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/loc/a;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->w:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/a;->a(ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/loc/a;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/a;->w:I

    iget v0, p0, Lcom/loc/a;->w:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    const/16 v1, 0x3f0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/a$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized j()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/loc/a;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "stopAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcom/loc/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/a;->j()V

    return-void
.end method

.method private declared-synchronized k()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/loc/a;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->s:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a;->n:Z

    invoke-direct {p0}, Lcom/loc/a;->i()V

    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cm;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/a;->t:Lcom/loc/h;

    invoke-virtual {v0}, Lcom/loc/h;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->t:Lcom/loc/h;

    iget-object v0, p0, Lcom/loc/a;->q:Lcom/loc/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->q:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->K:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/a;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/a;->K:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->p:Ljava/util/ArrayList;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->K:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/a$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/loc/a;->D:Lcom/loc/a$b;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_7

    :try_start_1
    iget-object v0, p0, Lcom/loc/a;->D:Lcom/loc/a$b;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->D:Lcom/loc/a$b;

    iget-object v0, p0, Lcom/loc/a;->m:Lcom/loc/a$d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/a;->m:Lcom/loc/a$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/a$d;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/loc/a;->d()V

    iget-object v0, p0, Lcom/loc/a;->E:Lcom/loc/bu;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/a;->E:Lcom/loc/bu;

    invoke-virtual {v0}, Lcom/loc/bu;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->E:Lcom/loc/bu;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/loc/a;->D:Lcom/loc/a$b;

    invoke-virtual {v0}, Lcom/loc/a$b;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/loc/a;->D:Lcom/loc/a$b;

    invoke-virtual {v0}, Lcom/loc/a$b;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized l()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/a;->r:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a;->r:Z

    new-instance v0, Lcom/loc/bp;

    invoke-direct {v0}, Lcom/loc/bp;-><init>()V

    invoke-direct {p0, v0}, Lcom/loc/a;->a(Lcom/loc/bp;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v1

    invoke-direct {p0}, Lcom/loc/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "0"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    const-string v0, "1"

    :cond_1
    const-string v1, "isCacheLoc"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/loc/a;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/loc/a;->m()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/loc/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extraJson"

    iget-object v2, p0, Lcom/loc/a;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "e"

    iget-wide v2, p0, Lcom/loc/a;->H:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "f"

    iget v2, p0, Lcom/loc/a;->G:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/loc/a;->a(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "AMapLocationManager"

    const-string v2, "doLBSLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/loc/a;->m()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/loc/a;->m()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private declared-synchronized m()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    const/16 v1, 0x3f8

    iget-object v2, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/a$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/loc/a;->H:D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/a;->I:Lcom/loc/f;

    invoke-virtual {v0}, Lcom/loc/f;->b()Lcom/loc/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/loc/e;->a:D

    iput-wide v2, p0, Lcom/loc/a;->H:D

    iget v0, v0, Lcom/loc/e;->b:F

    iput v0, p0, Lcom/loc/a;->G:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AMapLocationManager"

    const-string v2, "readAltitudePressureFromDB"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final a()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/a;->F:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->F:Z

    iget-object v0, p0, Lcom/loc/a;->E:Lcom/loc/bu;

    invoke-virtual {v0}, Lcom/loc/bu;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/fence/Fence;

    invoke-direct {v1}, Lcom/amap/api/fence/Fence;-><init>()V

    iput-object p1, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iput-wide p2, v1, Lcom/amap/api/fence/Fence;->d:D

    iput-wide p4, v1, Lcom/amap/api/fence/Fence;->c:D

    iput p6, v1, Lcom/amap/api/fence/Fence;->e:F

    iput-object p9, v1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    invoke-virtual {v1, p7, p8}, Lcom/amap/api/fence/Fence;->a(J)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3ee

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v1, v0}, Lcom/loc/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "addGeoFenceAlert"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->E:Lcom/loc/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->E:Lcom/loc/bu;

    invoke-virtual {v0}, Lcom/loc/bu;->b()F

    move-result v0

    iput v0, p0, Lcom/loc/a;->G:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->E:Lcom/loc/bu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/loc/a;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a;->F:Z

    iget-object v0, p0, Lcom/loc/a;->E:Lcom/loc/bu;

    invoke-virtual {v0}, Lcom/loc/bu;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/loc/a;->H:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loc/a;->b()V

    new-instance v0, Lcom/loc/e;

    invoke-direct {v0}, Lcom/loc/e;-><init>()V

    iget-wide v2, p0, Lcom/loc/a;->H:D

    iput-wide v2, v0, Lcom/loc/e;->a:D

    iget v1, p0, Lcom/loc/a;->G:F

    iput v1, v0, Lcom/loc/e;->b:F

    invoke-static {}, Lcom/loc/cp;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/e;->c:J

    iget-object v1, p0, Lcom/loc/a;->I:Lcom/loc/f;

    invoke-virtual {v1, v0}, Lcom/loc/f;->a(Lcom/loc/e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "saveGPSAltitudePressure2DB"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/loc/a;->t:Lcom/loc/h;

    invoke-virtual {v1}, Lcom/loc/h;->a()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "AMapLocationManager"

    const-string v3, "getLastKnownLocation"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStarted()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v1, v0}, Lcom/loc/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3ef

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v1, v0}, Lcom/loc/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "removeGeoFenceAlert 2"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/fence/Fence;

    invoke-direct {v1}, Lcom/amap/api/fence/Fence;-><init>()V

    iput-object p2, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iput-object p1, v1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3f2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v1, v0}, Lcom/loc/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "removeGeoFenceAlert 1"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v1, v0}, Lcom/loc/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3fa

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v1, v0}, Lcom/loc/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "setLocationOption"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startAssistantLocation()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v1, v0}, Lcom/loc/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "startAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLocation()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v1, v0}, Lcom/loc/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAssistantLocation()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v1, v0}, Lcom/loc/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "stopAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopLocation()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v1, v0}, Lcom/loc/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ed

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/loc/a;->h:Lcom/loc/a$a;

    invoke-virtual {v1, v0}, Lcom/loc/a$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AMapLocationManager"

    const-string v2, "unRegisterLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
