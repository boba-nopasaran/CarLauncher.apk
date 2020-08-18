.class public final Lcom/loc/bp;
.super Ljava/lang/Object;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bp$a;
    }
.end annotation


# static fields
.field private static ah:Z

.field private static aj:I

.field private static ak:J

.field private static al:J

.field private static am:I


# instance fields
.field private volatile A:Ljava/util/TimerTask;

.field private B:I

.field private C:Ljava/lang/Object;

.field private volatile D:Ljava/lang/Object;

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:J

.field private volatile I:J

.field private volatile J:Ljava/lang/String;

.field private K:Lcom/loc/bv;

.field private L:Lcom/loc/cf;

.field private M:Ljava/lang/StringBuilder;

.field private N:Lcom/loc/bq;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private volatile R:Z

.field private S:Z

.field private T:Z

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Z

.field private X:Z

.field private volatile Y:Z

.field private Z:Z

.field volatile a:I

.field private aa:I

.field private ab:Ljava/lang/StringBuilder;

.field private ac:Ljava/lang/StringBuilder;

.field private ad:Ljava/lang/StringBuilder;

.field private ae:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private af:Z

.field private ag:Z

.field private ai:Lcom/loc/bq$a;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/lang/StringBuilder;

.field private aq:Z

.field b:Ljava/lang/Object;

.field c:Z

.field private volatile d:Landroid/content/Context;

.field private e:Landroid/net/ConnectivityManager;

.field private volatile f:Lcom/loc/bx;

.field private volatile g:Lcom/loc/bw;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Lcom/loc/bp$a;

.field private volatile l:Landroid/net/wifi/WifiInfo;

.field private m:Lorg/json/JSONObject;

.field private volatile n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field private volatile o:J

.field private p:J

.field private q:J

.field private volatile r:Z

.field private s:Z

.field private t:J

.field private volatile u:J

.field private v:I

.field private volatile w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lcom/loc/ci;

.field private volatile z:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/bp;->ah:Z

    sput v1, Lcom/loc/bp;->aj:I

    sput-wide v2, Lcom/loc/bp;->ak:J

    sput-wide v2, Lcom/loc/bp;->al:J

    sput v1, Lcom/loc/bp;->am:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    iput-object v1, p0, Lcom/loc/bp;->e:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    iput-object v1, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/bp;->j:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/loc/bp;->k:Lcom/loc/bp$a;

    iput-object v1, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-wide v4, p0, Lcom/loc/bp;->o:J

    iput-wide v4, p0, Lcom/loc/bp;->p:J

    iput-wide v4, p0, Lcom/loc/bp;->q:J

    iput-boolean v2, p0, Lcom/loc/bp;->r:Z

    iput-boolean v2, p0, Lcom/loc/bp;->s:Z

    iput-wide v4, p0, Lcom/loc/bp;->t:J

    iput-wide v4, p0, Lcom/loc/bp;->u:J

    iput v2, p0, Lcom/loc/bp;->v:I

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/loc/bp;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bp;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bp;->y:Lcom/loc/ci;

    iput-object v1, p0, Lcom/loc/bp;->z:Ljava/util/Timer;

    iput-object v1, p0, Lcom/loc/bp;->A:Ljava/util/TimerTask;

    iput v2, p0, Lcom/loc/bp;->B:I

    iput-object v1, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    iput-object v1, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/loc/bp;->E:Z

    iput-object v1, p0, Lcom/loc/bp;->F:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bp;->G:Ljava/lang/String;

    iput-wide v4, p0, Lcom/loc/bp;->H:J

    iput-wide v4, p0, Lcom/loc/bp;->I:J

    iput-object v1, p0, Lcom/loc/bp;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bp;->K:Lcom/loc/bv;

    iput-object v1, p0, Lcom/loc/bp;->L:Lcom/loc/cf;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/bp;->a:I

    iput-boolean v2, p0, Lcom/loc/bp;->O:Z

    iput-boolean v3, p0, Lcom/loc/bp;->P:Z

    iput-boolean v3, p0, Lcom/loc/bp;->Q:Z

    iput-boolean v3, p0, Lcom/loc/bp;->R:Z

    iput-boolean v2, p0, Lcom/loc/bp;->S:Z

    iput-boolean v2, p0, Lcom/loc/bp;->T:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/bp;->b:Ljava/lang/Object;

    const-string v0, "com.data.carrier_v4.CollectorManager"

    iput-object v0, p0, Lcom/loc/bp;->U:Ljava/lang/String;

    const-string v0, "com.autonavi.aps.amapapi.offline.Off"

    iput-object v0, p0, Lcom/loc/bp;->V:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/loc/bp;->W:Z

    iput-boolean v2, p0, Lcom/loc/bp;->X:Z

    iput-boolean v2, p0, Lcom/loc/bp;->Y:Z

    iput-boolean v2, p0, Lcom/loc/bp;->Z:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/loc/bp;->aa:I

    iput-object v1, p0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/loc/bp;->ae:Ljava/util/TreeMap;

    iput-boolean v3, p0, Lcom/loc/bp;->af:Z

    iput-boolean v3, p0, Lcom/loc/bp;->c:Z

    iput-boolean v2, p0, Lcom/loc/bp;->ag:Z

    new-instance v0, Lcom/loc/bq$a;

    invoke-direct {v0, p0}, Lcom/loc/bq$a;-><init>(Lcom/loc/bp;)V

    iput-object v0, p0, Lcom/loc/bp;->ai:Lcom/loc/bq$a;

    iput-object v1, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bp;->ao:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/loc/bp;->aq:Z

    return-void
.end method

.method static synthetic a(Lcom/loc/bp;J)J
    .locals 1

    iput-wide p1, p0, Lcom/loc/bp;->t:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bp;->y()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    const-string v4, "getPureOfflineLocation"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_0
    :try_start_2
    iget-boolean v3, p0, Lcom/loc/bp;->Z:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/loc/bp;->Z:Z

    const-string v3, "OffLocation"

    invoke-static {p4, v3, v1}, Lcom/loc/cm;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v3, ""

    invoke-direct {v1, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->b(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v8, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v2, ""

    invoke-direct {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/loc/bp;->o:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->d:Landroid/content/Context;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v3, "context is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    :goto_0
    return-object v8

    :cond_0
    :try_start_0
    const-string v2, "0"

    const-string v12, "0"

    const-string v13, "0"

    const-string v14, "0"

    const-string v15, "0"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const-string v3, ""

    sput-object v3, Lcom/loc/c;->c:Ljava/lang/String;

    const/16 v3, -0x8000

    const/16 v4, 0x7fff

    invoke-static {v3, v4}, Lcom/loc/cp;->a(II)I

    move-result v17

    const-string v5, ""

    const-string v4, ""

    const-string v3, ""

    const-string v7, "api_serverSDK_130905"

    const-string v6, "S128DF1572465B890OE3F7A13167KLEI"

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/loc/bp;->Q:Z

    if-nez v9, :cond_31

    const-string v7, "UC_nlp_20131029"

    const-string v6, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    move-object v10, v6

    move-object v11, v7

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    if-nez v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    if-nez v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/bp;->g:Lcom/loc/bw;

    invoke-virtual {v6}, Lcom/loc/bw;->d()I

    move-result v18

    invoke-virtual {v6}, Lcom/loc/bw;->f()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v6}, Lcom/loc/bw;->b()Ljava/util/ArrayList;

    move-result-object v19

    const/4 v6, 0x2

    move/from16 v0, v18

    if-ne v0, v6, :cond_30

    const-string v2, "1"

    move-object v9, v2

    :goto_5
    if-eqz v7, :cond_4

    sget-object v2, Lcom/loc/c;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/o;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/c;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_6
    :try_start_2
    sget-object v2, Lcom/loc/c;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/c;->a:Ljava/lang/String;

    :cond_2
    sget-object v2, Lcom/loc/c;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/c;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_7
    :try_start_4
    sget-object v2, Lcom/loc/c;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/c;->b:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    const/4 v6, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    :goto_8
    :try_start_6
    invoke-static {v2}, Lcom/loc/cp;->a(Landroid/net/NetworkInfo;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_b

    invoke-static {v7}, Lcom/loc/cp;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/bp;->af:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-static {v2}, Lcom/loc/bp;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "2"

    move-object v6, v2

    move-object v7, v4

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v4, "poiid"

    invoke-static {v2, v4}, Lcom/loc/cp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v2

    if-eqz v2, :cond_e

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v4, "poiid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bp;->x:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :goto_a
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch v18, :pswitch_data_0

    const-string v2, "resetCdmaData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/bp;->a(Ljava/lang/String;)V

    move-object v2, v3

    :goto_b
    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v5, v2

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-static {v2}, Lcom/loc/bp;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v3, -0x80

    if-ge v2, v3, :cond_13

    const/4 v2, 0x0

    :cond_5
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v3

    const/16 v4, 0x20

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    :goto_e
    const/16 v4, 0x20

    if-lt v2, v4, :cond_2e

    :try_start_a
    const-string v2, "unkwn"

    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    const-string v4, "*"

    const-string v19, "."

    move-object/from16 v0, v19

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    :goto_10
    if-ge v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, "*"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_10

    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get parames error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :try_start_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :catch_1
    move-exception v2

    const-string v6, "APS"

    const-string v20, "getApsReq part4"

    move-object/from16 v0, v20

    invoke-static {v2, v6, v0}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_2
    move-exception v2

    const-string v6, "APS"

    const-string v20, "getApsReq part2"

    move-object/from16 v0, v20

    invoke-static {v2, v6, v0}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_3
    move-exception v2

    const-string v20, "APS"

    const-string v21, "getApsReq part"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    goto/16 :goto_8

    :cond_a
    const-string v2, "1"

    move-object v6, v2

    move-object v7, v4

    goto/16 :goto_9

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    move-object v6, v4

    move-object v7, v5

    goto/16 :goto_9

    :cond_c
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bp;->x:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_a

    :catch_4
    move-exception v2

    :try_start_d
    const-string v4, "APS"

    const-string v5, "setPoiid"

    invoke-static {v2, v4, v5}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_a

    :cond_d
    :try_start_e
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bp;->x:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_a

    :cond_e
    const/4 v2, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bp;->x:Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_0
    const-string v2, "resetCdmaData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/bp;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bv;

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "<mcc>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/loc/bv;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</mcc>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<mnc>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/loc/bv;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</mnc>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<lac>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/bv;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</lac>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<cellid>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/bv;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "</cellid>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<signal>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/loc/bv;->j:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</signal>"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    move v4, v2

    :goto_11
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_10

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    iget v0, v2, Lcom/loc/bv;->c:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    iget v0, v2, Lcom/loc/bv;->d:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    iget v2, v2, Lcom/loc/bv;->j:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    const-string v20, "*"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_11

    :cond_10
    move-object v2, v3

    goto/16 :goto_b

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/bv;

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "<mcc>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/loc/bv;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</mcc>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<sid>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/bv;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</sid>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<nid>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/bv;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</nid>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<bid>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/bv;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</bid>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/loc/bv;->f:I

    if-lez v3, :cond_12

    iget v3, v2, Lcom/loc/bv;->e:I

    if-lez v3, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/loc/bp;->y()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->D:Ljava/lang/Object;

    const-string v4, "setCdmaLatLon"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v2, Lcom/loc/bv;->e:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget v0, v2, Lcom/loc/bv;->f:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const-string v3, "<lon>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/bv;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</lon>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<lat>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/loc/bv;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</lat>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_12
    const-string v3, "<signal>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/loc/bv;->j:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</signal>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    :cond_12
    const-string v3, "resetCdmaData"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/loc/bp;->a(Ljava/lang/String;)V

    goto :goto_12

    :cond_13
    const/16 v3, 0x7f

    if-le v2, v3, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_d

    :catch_5
    move-exception v2

    const-string v19, "APS"

    const-string v20, "getApsReq"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v2, v0, v1}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    goto/16 :goto_e

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_13
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v4, "reversegeo"

    invoke-static {v2, v4}, Lcom/loc/cp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    move-result v2

    if-eqz v2, :cond_19

    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v4, "reversegeo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    move-result v2

    :goto_14
    if-nez v2, :cond_1a

    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    const/4 v3, 0x2

    iput-short v3, v2, Lcom/loc/ci;->a:S

    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v3, "multi"

    invoke-static {v2, v3}, Lcom/loc/cp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    move-result v2

    if-eqz v2, :cond_15

    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v3, "multi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    const/4 v3, 0x1

    iput-short v3, v2, Lcom/loc/ci;->a:S
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    :cond_15
    :goto_16
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    iput-object v11, v2, Lcom/loc/ci;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    iput-object v10, v2, Lcom/loc/ci;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    invoke-static {}, Lcom/loc/cp;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/ci;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/cp;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/ci;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/cp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/ci;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    iput-object v9, v2, Lcom/loc/ci;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    iput-object v12, v2, Lcom/loc/ci;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    const-string v3, "0"

    iput-object v3, v2, Lcom/loc/ci;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    iput-object v13, v2, Lcom/loc/ci;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    iput-object v14, v2, Lcom/loc/ci;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    iput-object v15, v2, Lcom/loc/ci;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/loc/ci;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    sget-object v3, Lcom/loc/c;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/ci;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    sget-object v3, Lcom/loc/c;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/ci;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/ci;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->w:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/ci;->q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    const-string v3, "3.1.0"

    iput-object v3, v2, Lcom/loc/ci;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    invoke-direct/range {p0 .. p0}, Lcom/loc/bp;->v()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/ci;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->x:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/ci;->C:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    sget-object v3, Lcom/loc/c;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/ci;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    iput-object v7, v2, Lcom/loc/ci;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    iput-object v6, v2, Lcom/loc/ci;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/ci;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    iput-object v5, v2, Lcom/loc/ci;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/ci;->y:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/ci;->A:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/loc/bp;->u:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/ci;->B:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/ci;->z:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    new-instance v11, Lcom/loc/ch;

    invoke-direct {v11}, Lcom/loc/ch;-><init>()V

    const/4 v10, 0x0

    const-string v9, ""

    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->L:Lcom/loc/cf;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->d:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    invoke-static {}, Lcom/loc/c;->a()Ljava/lang/String;

    move-result-object v6

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/loc/cf;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/loc/ci;Ljava/lang/String;Z)Lcom/loc/bk;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->L:Lcom/loc/cf;

    invoke-virtual {v2}, Lcom/loc/cf;->a()I

    move-result v5

    if-eqz v3, :cond_2d

    iget-object v2, v3, Lcom/loc/bk;->a:[B

    iget-object v4, v3, Lcom/loc/bk;->c:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8

    :goto_17
    int-to-long v6, v5

    :try_start_15
    invoke-virtual {v8, v6, v7}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(J)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    if-nez p1, :cond_2c

    if-eqz v2, :cond_16

    array-length v6, v2

    if-nez v6, :cond_1c

    :cond_16
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v3, "please check the network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " #csid:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    :catch_6
    move-exception v2

    const-string v4, "APS"

    const-string v19, "getApsReq part"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    move v2, v3

    goto/16 :goto_14

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->y:Lcom/loc/ci;

    const/4 v3, 0x0

    iput-short v3, v2, Lcom/loc/ci;->a:S

    goto/16 :goto_15

    :catch_7
    move-exception v2

    const-string v3, "APS"

    const-string v4, "getApsReq"

    invoke-static {v2, v3, v4}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0

    goto/16 :goto_16

    :catch_8
    move-exception v2

    move-object v3, v9

    :goto_18
    const-string v4, "APS"

    const-string v5, "getApsLoc req"

    invoke-static {v2, v4, v5}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v4, "please check the network"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " #csid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v7, "\"status\":\"0\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-virtual {v11, v6, v2, v3}, Lcom/loc/ch;->a(Ljava/lang/String;Landroid/content/Context;Lcom/loc/bk;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v8

    int-to-long v2, v5

    invoke-virtual {v8, v2, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(J)V

    goto/16 :goto_0

    :cond_1d
    invoke-static {v2}, Lcom/loc/by;->a([B)[B

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v3, "decrypt response data error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " #csid:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {v11, v2}, Lcom/loc/ch;->a([B)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v3

    if-nez v3, :cond_21

    new-instance v8, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v2, ""

    invoke-direct {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v3, "location is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " #csid:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(J)V

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " #csid:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    :cond_22
    move-object v8, v3

    goto/16 :goto_0

    :cond_23
    invoke-static {v3}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->f()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_24

    :cond_24
    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "-5"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "1"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "2"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "14"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "24"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "-1"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_25
    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " #csid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/bp;->Q:Z

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setOffset(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/bp;->P:Z

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(Z)V

    move-object v2, v3

    :goto_1a
    move-object v8, v2

    goto/16 :goto_0

    :cond_28
    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bp;->F:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "location faile retype:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " rdesc:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->F:Ljava/lang/String;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->F:Ljava/lang/String;

    :goto_1b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " #csid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    move-object v8, v3

    goto/16 :goto_0

    :cond_2a
    const-string v2, "null"

    goto :goto_1b

    :cond_2b
    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    goto/16 :goto_19

    :catch_9
    move-exception v2

    move-object v3, v4

    goto/16 :goto_18

    :cond_2c
    move-object v2, v8

    goto :goto_1a

    :cond_2d
    move-object v4, v9

    move-object v2, v10

    goto/16 :goto_17

    :cond_2e
    move-object v2, v3

    goto/16 :goto_f

    :cond_2f
    move-object v5, v3

    goto/16 :goto_c

    :cond_30
    move-object v9, v2

    goto/16 :goto_5

    :cond_31
    move-object v10, v6

    move-object v11, v7

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/bp;)Lcom/loc/bx;
    .locals 1

    iget-object v0, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    iget-boolean v3, p0, Lcom/loc/bp;->r:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/loc/bw;->g()V

    :cond_0
    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v3, 0x2bc

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/loc/bw;->d()I

    move-result v3

    invoke-virtual {v0}, Lcom/loc/bw;->b()Ljava/util/ArrayList;

    move-result-object v4

    packed-switch v3, :pswitch_data_0

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/loc/bp;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/loc/bp;->w:Ljava/lang/String;

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bp;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/loc/bp;->w:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/p;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_1
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "smac"

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    iget-object v0, p0, Lcom/loc/bp;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/loc/bp;->w:Ljava/lang/String;

    :cond_5
    const-string v0, ""

    iget-object v3, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-static {v3}, Lcom/loc/bp;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v1

    :goto_3
    if-ge v3, v5, :cond_8

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v0, "nb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v0, "access"

    move v1, v2

    :cond_6
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "#%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object v0, v9, v6

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    move v3, v2

    :goto_4
    :try_start_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bv;

    iget-object v0, v0, Lcom/loc/bv;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bv;

    iget v0, v0, Lcom/loc/bv;->c:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bv;

    iget v0, v0, Lcom/loc/bv;->d:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v5, "APS"

    const-string v6, "setSmac"

    invoke-static {v0, v5, v6}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_1

    :cond_8
    if-nez v1, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",access"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    monitor-exit p0

    return-object p1

    :cond_b
    move-object v4, v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/bp;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/loc/bp;I)V
    .locals 9

    const v1, 0x282fffff

    const v0, 0x42fffff

    const/4 v8, 0x3

    invoke-direct {p0}, Lcom/loc/bp;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/loc/cj;->t()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    move v1, v0

    :cond_2
    :goto_1
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    const-string v2, "callBackWrapData"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "e"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "d"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "u"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    const-string v2, "getReportDate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_3

    :try_start_2
    check-cast v0, [B

    iget-object v2, p0, Lcom/loc/bp;->L:Lcom/loc/cf;

    iget-object v3, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const-string v4, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/loc/cf;->a([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/loc/bp;->n()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_3
    iget-object v2, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    const-string v3, "setUploadResult"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/loc/bp;->B:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_4
    :try_start_4
    invoke-direct {p0}, Lcom/loc/bp;->q()V

    invoke-direct {p0}, Lcom/loc/bp;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/loc/bp;->s()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/loc/bp;->t()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "up"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    move v1, v0

    goto/16 :goto_1

    :pswitch_2
    :try_start_5
    invoke-direct {p0}, Lcom/loc/bp;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7c2fffff

    move v1, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v0, 0x3

    iput v0, p0, Lcom/loc/bp;->B:I

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/loc/bp;->B:I

    if-lt v0, v8, :cond_0

    invoke-direct {p0}, Lcom/loc/bp;->t()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/bp;ZI)V
    .locals 6

    const-wide/16 v2, 0x7d0

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/loc/bp;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/loc/cj;->t()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/loc/bp;->t()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/loc/bp;->A:Ljava/util/TimerTask;

    if-nez v1, :cond_2

    new-instance v1, Lcom/loc/bp$1;

    invoke-direct {v1, p0, v0}, Lcom/loc/bp$1;-><init>(Lcom/loc/bp;I)V

    iput-object v1, p0, Lcom/loc/bp;->A:Ljava/util/TimerTask;

    :cond_2
    iget-object v0, p0, Lcom/loc/bp;->z:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    const-string v1, "T-U"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/loc/bp;->z:Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/bp;->z:Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/bp;->A:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bp;->y()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    const-string v1, "stopOff"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bp;->Y:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 4

    const/16 v0, 0x14

    const/16 v1, 0x14

    :try_start_0
    invoke-static {p0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "wifiSigFine"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/bp;J)J
    .locals 1

    iput-wide p1, p0, Lcom/loc/bp;->u:J

    return-wide p1
.end method

.method private declared-synchronized b(Z)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bp;->r:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    invoke-virtual {v0}, Lcom/loc/bw;->g()V

    :goto_0
    const-string v0, ""

    const-string v4, "network"

    iget-object v2, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    invoke-virtual {v2}, Lcom/loc/bx;->b()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    invoke-virtual {v2}, Lcom/loc/bw;->d()I

    move-result v2

    iget-object v5, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    invoke-virtual {v5}, Lcom/loc/bw;->b()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_0
    iget-object v6, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_1
    iget-object v1, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    invoke-virtual {v1}, Lcom/loc/bw;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    invoke-virtual {v2}, Lcom/loc/bx;->g()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_6

    :cond_2
    const/16 v3, 0xc

    iput v3, p0, Lcom/loc/bp;->aa:I

    iget-object v3, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    invoke-virtual {v0}, Lcom/loc/bw;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move-object v1, v2

    goto :goto_1

    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/cp;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0xc

    iput v1, p0, Lcom/loc/bp;->aa:I

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 lstCgi & \u2297 wifis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    iput v1, p0, Lcom/loc/bp;->aa:I

    goto :goto_2

    :cond_8
    sparse-switch v2, :sswitch_data_0

    const/16 v1, 0xb

    iput v1, p0, Lcom/loc/bp;->aa:I

    iget-object v1, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v2, "get cgi failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/cp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/loc/bv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/bv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/bv;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/loc/bv;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/loc/bp;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "cgiwifi"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_c
    const-string v0, "cgi"

    goto :goto_4

    :sswitch_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/loc/bv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/bv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/bv;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/bv;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/loc/bv;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/loc/bp;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const-string v0, "cgiwifi"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_e
    const-string v0, "cgi"

    goto :goto_5

    :sswitch_2
    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/loc/bp;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_f
    move v2, v3

    :goto_6
    iget-object v0, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/loc/bp;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/bp;->aa:I

    iget-object v0, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 around wifi(s) & has access wifi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "#%s#"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_13

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/bp;->aa:I

    iget-object v0, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/loc/bp;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 access wifi & around wifi 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v2, "same access wifi & around wifi 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_12
    const-string v1, "network"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, ""

    const/4 v1, 0x2

    iput v1, p0, Lcom/loc/bp;->aa:I

    iget-object v1, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v2, "is network & no wifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_13
    move v1, v2

    goto :goto_7

    :cond_14
    move v2, v1

    goto/16 :goto_6

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic b(Lcom/loc/bp;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bp;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    const-string v1, "setLastLoc"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/loc/bp;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bp;->l()V

    return-void
.end method

.method static synthetic d(Lcom/loc/bp;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/loc/bp;->X:Z

    if-nez v0, :cond_0

    const-string v0, "OfflineLocation"

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Lcom/loc/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/m;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/loc/cm;->a(Landroid/content/Context;Lcom/loc/m;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/bp;->X:Z

    iget-boolean v0, p0, Lcom/loc/bp;->X:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/loc/bp;->V:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/loc/bp;->D:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    const-string v1, "OffLocation"

    invoke-static {p1, v1, v0}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bp;->X:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initOffLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method static synthetic e(Lcom/loc/bp;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bp;->r()V

    return-void
.end method

.method static synthetic f(Lcom/loc/bp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/bp;->u()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/loc/bp;)J
    .locals 2

    iget-wide v0, p0, Lcom/loc/bp;->q:J

    return-wide v0
.end method

.method private g()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bp;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    const-string v1, "resetPureOfflineCache"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->k:Lcom/loc/bp$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/bp$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/bp$a;-><init>(Lcom/loc/bp;B)V

    iput-object v0, p0, Lcom/loc/bp;->k:Lcom/loc/bp$a;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bp;->k:Lcom/loc/bp$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/loc/bp;->m()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/loc/bp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/bp;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/loc/bp;)I
    .locals 1

    invoke-direct {p0}, Lcom/loc/bp;->s()I

    move-result v0

    return v0
.end method

.method private i()V
    .locals 12

    const-wide/16 v10, 0x2710

    const-wide/16 v8, 0x1388

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v4

    iget-object v2, p0, Lcom/loc/bp;->x:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/bp;->u:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_8

    :cond_0
    const/16 v0, 0x14

    iget-wide v2, p0, Lcom/loc/bp;->p:J

    sub-long v2, v4, v2

    cmp-long v1, v2, v10

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/loc/bp;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0}, Lcom/loc/bp;->m()V

    iget-wide v2, p0, Lcom/loc/bp;->p:J

    sub-long v2, v4, v2

    cmp-long v1, v2, v10

    if-ltz v1, :cond_7

    :goto_1
    if-lez v0, :cond_7

    iget-object v1, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const-wide/16 v2, 0x96

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    invoke-virtual {v2}, Lcom/loc/bx;->f()Z

    move-result v2

    :goto_3
    if-nez v2, :cond_5

    iput-boolean v0, p0, Lcom/loc/bp;->af:Z

    :cond_3
    :goto_4
    move v1, v0

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_3

    :cond_5
    iget-wide v2, p0, Lcom/loc/bp;->t:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/loc/bp;->t:J

    sub-long/2addr v2, v6

    cmp-long v2, v2, v8

    if-ltz v2, :cond_3

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/loc/bp;->u:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x5dc

    cmp-long v2, v2, v6

    if-ltz v2, :cond_3

    move v0, v1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/loc/bp;->b:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    :cond_8
    iget-object v0, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bp;->u:J

    iget-object v0, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    invoke-virtual {v0}, Lcom/loc/bx;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/loc/bp;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private declared-synchronized j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/loc/bp;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcom/loc/bp;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bp;->t()V

    return-void
.end method

.method private declared-synchronized k()V
    .locals 8

    const/16 v3, 0x20

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
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
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/bp;->u:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/loc/bp;->l()V

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-static {}, Lcom/loc/cp;->f()Z

    move-result v0

    iget-object v2, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-static {v2, v4}, Lcom/loc/cp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_9

    :try_start_2
    iget-object v2, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    move v4, v0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/bp;->ae:Ljava/util/TreeMap;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/loc/bp;->ae:Ljava/util/TreeMap;

    :cond_3
    iget-object v0, p0, Lcom/loc/bp;->ae:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_c

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/loc/cp;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x14

    if-le v5, v1, :cond_4

    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v1}, Lcom/loc/bp;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v4, :cond_a

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v6, "*"

    const-string v7, "."

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    if-lt v1, v3, :cond_5

    :try_start_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/loc/bp;->ae:Ljava/util/TreeMap;

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v6, v6, 0x1e

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_7
    :try_start_6
    iget-object v2, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    :cond_8
    move v4, v0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_7
    const-string v4, "APS"

    const-string v5, "setWifiOrder part"

    invoke-static {v2, v4, v5}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move v4, v0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v6, "APS"

    const-string v7, "setWifiOrder"

    invoke-static {v1, v6, v7}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_3

    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    :try_start_8
    const-string v1, "unkwn"

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/bp;->ae:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/loc/bp;->ae:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private l()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bp;->u:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->l:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/loc/bp;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/bp;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private m()V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/loc/bp;->ag:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    invoke-virtual {v0}, Lcom/loc/bx;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/bp;->t:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    invoke-virtual {v0}, Lcom/loc/bx;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bp;->t:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "APS"

    const-string v3, "updateWifi part"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APS"

    const-string v2, "updateWifi"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private n()Z
    .locals 1

    iget-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bp;->n()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/loc/bp;->p()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "collStarted"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    const-string v2, "isStarted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private q()V
    .locals 1

    invoke-direct {p0}, Lcom/loc/bp;->n()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/loc/bp;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loc/bp;->s()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0
.end method

.method private r()V
    .locals 3

    invoke-direct {p0}, Lcom/loc/bp;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loc/bp;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    sput v0, Lcom/loc/c;->h:I

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "stop3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private s()I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    const-string v2, "getLeftUploadNum"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized t()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->A:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->A:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->A:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/loc/bp;->z:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bp;->z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/loc/bp;->z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->z:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private u()Z
    .locals 2

    iget-object v0, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->e:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    iget-object v1, p0, Lcom/loc/bp;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/loc/bx;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    const-string v2, "getInnerString"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "version"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "APS"

    const-string v3, "getCollVer"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private declared-synchronized w()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->ao:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/loc/bp;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    iget-boolean v1, p0, Lcom/loc/bp;->r:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/bw;->a(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v1, "isOnceLocationLatest"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/bp;->T:Z

    iget-boolean v0, p0, Lcom/loc/bp;->T:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/loc/bp;->S:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/loc/bp;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bp;->S:Z

    :cond_2
    invoke-direct {p0}, Lcom/loc/bp;->i()V

    :cond_3
    invoke-direct {p0}, Lcom/loc/bp;->j()V

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bp;->u:J

    iget-object v0, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    invoke-virtual {v0}, Lcom/loc/bx;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/loc/bp;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/loc/bp;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/loc/bp;->k()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/loc/bp;->b(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/bp;->Q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/bp;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->ao:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/loc/bp;->a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bp;->aq:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "APS"

    const-string v2, "initFirstLocateParam"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private x()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/loc/bp;->J:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loc/bp;->b(Lorg/json/JSONObject;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bp;->I:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bp;->o:J

    invoke-static {}, Lcom/loc/bs;->a()Lcom/loc/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bs;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "cleanCache"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private y()Z
    .locals 1

    invoke-static {}, Lcom/loc/cj;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/loc/cj;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v10, 0x2

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const-string v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v1, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget v2, p0, Lcom/loc/bp;->v:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/loc/bp;->v:I

    iget v2, p0, Lcom/loc/bp;->v:I

    if-ne v2, v0, :cond_5

    invoke-direct {p0}, Lcom/loc/bp;->q()V

    iget-object v2, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/loc/bp;->E:Z

    if-nez v2, :cond_7

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/loc/bp;->n()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_2
    iget-object v2, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    const-string v4, "getColUpHist"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/loc/bp;->y()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    const-string v4, "getOffDlHist"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/loc/bp;->w:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const-string v4, "pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v2, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    const-string v5, "smac"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    :try_start_5
    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/String;

    invoke-static {v6}, Lcom/loc/p;->b(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v2, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-object v2, p0, Lcom/loc/bp;->w:Ljava/lang/String;

    :cond_5
    iget-wide v4, p0, Lcom/loc/bp;->o:J

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/16 v6, 0x320

    cmp-long v2, v4, v6

    if-gez v2, :cond_27

    iget-object v2, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v2}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {}, Lcom/loc/cp;->a()J

    move-result-wide v4

    iget-object v2, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    :goto_5
    const-wide/16 v6, 0x2710

    cmp-long v2, v4, v6

    if-gtz v2, :cond_27

    move v2, v0

    :goto_6
    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v2}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v0, p0, Lcom/loc/bp;->R:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/cj;->b(J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :cond_6
    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    iget-boolean v4, p0, Lcom/loc/bp;->E:Z

    invoke-virtual {v2, v4}, Lcom/loc/bx;->a(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    :try_start_7
    iget-object v2, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    const-string v4, "stopOff"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/bp;->Y:Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    goto/16 :goto_3

    :catch_1
    move-exception v2

    :try_start_8
    const-string v6, "APS"

    const-string v7, "getSmac"

    invoke-static {v2, v6, v7}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v2, v3

    goto/16 :goto_4

    :cond_9
    iget-object v2, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    iget-boolean v4, p0, Lcom/loc/bp;->r:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/loc/bw;->a(ZZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-direct {p0}, Lcom/loc/bp;->i()V

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/bp;->p:J

    invoke-direct {p0}, Lcom/loc/bp;->j()V

    invoke-direct {p0}, Lcom/loc/bp;->k()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_7
    const/4 v2, 0x0

    :try_start_a
    invoke-direct {p0, v2}, Lcom/loc/bp;->b(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v0, p0, Lcom/loc/bp;->O:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/loc/bp;->a(ZLandroid/content/Context;)V

    :cond_a
    const/4 v0, 0x4

    :goto_8
    if-lez v0, :cond_b

    iget v1, p0, Lcom/loc/bp;->a:I

    if-eqz v1, :cond_b

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :catch_2
    move-exception v2

    const-string v4, "APS"

    const-string v5, "getLocation"

    invoke-static {v2, v4, v5}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    iget v0, p0, Lcom/loc/bp;->a:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/loc/bp;->N:Lcom/loc/bq;

    invoke-virtual {v0}, Lcom/loc/bq;->d()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/loc/bp;->aa:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v1, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :cond_d
    :try_start_b
    invoke-direct {p0}, Lcom/loc/bp;->y()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/loc/bp;->Y:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    const-string v4, "startOff"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/loc/bp;->Y:Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    :goto_9
    :try_start_c
    iget-object v2, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/loc/bp;->a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/loc/bp;->r:Z

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    invoke-virtual {v2}, Lcom/loc/bw;->c()Lcom/loc/bv;

    move-result-object v2

    move-object v6, v2

    :goto_a
    if-nez v6, :cond_f

    iget-object v2, p0, Lcom/loc/bp;->K:Lcom/loc/bv;

    if-eqz v2, :cond_15

    :cond_f
    iget-object v2, p0, Lcom/loc/bp;->K:Lcom/loc/bv;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/loc/bp;->K:Lcom/loc/bv;

    if-eqz v6, :cond_10

    iget v4, v6, Lcom/loc/bv;->k:I

    packed-switch v4, :pswitch_data_0

    :cond_10
    move v2, v1

    :goto_b
    if-nez v2, :cond_15

    :cond_11
    move v5, v0

    :goto_c
    iget-wide v10, p0, Lcom/loc/bp;->o:J

    cmp-long v2, v10, v8

    if-nez v2, :cond_16

    move v4, v0

    :goto_d
    iget-object v2, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v7, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v7}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v7

    const v10, 0x43958000    # 299.0f

    cmpl-float v7, v7, v10

    if-lez v7, :cond_18

    const/4 v7, 0x5

    if-le v2, v7, :cond_18

    :goto_e
    move v2, v0

    :goto_f
    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/loc/bp;->J:Ljava/lang/String;

    if-eqz v0, :cond_19

    if-nez v2, :cond_19

    if-nez v5, :cond_19

    iget-boolean v0, p0, Lcom/loc/bp;->R:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/loc/cj;->b(J)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/loc/bz;->a()Lcom/loc/bz;

    iget-object v0, p0, Lcom/loc/bp;->J:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/loc/bz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-wide v10, p0, Lcom/loc/bp;->I:J

    cmp-long v0, v10, v8

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/loc/bp;->I:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xbb8

    cmp-long v0, v8, v10

    if-gez v0, :cond_19

    :cond_12
    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, "mem"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :catch_3
    move-exception v2

    const-string v4, "APS"

    const-string v5, "getLocation:isOffLineLoc"

    invoke-static {v2, v4, v5}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_0
    iget v4, v2, Lcom/loc/bv;->k:I

    if-ne v4, v10, :cond_10

    iget v4, v6, Lcom/loc/bv;->i:I

    iget v5, v2, Lcom/loc/bv;->i:I

    if-ne v4, v5, :cond_13

    iget v4, v6, Lcom/loc/bv;->h:I

    iget v5, v2, Lcom/loc/bv;->h:I

    if-ne v4, v5, :cond_13

    iget v4, v6, Lcom/loc/bv;->g:I

    iget v2, v2, Lcom/loc/bv;->g:I

    if-ne v4, v2, :cond_13

    move v2, v0

    goto/16 :goto_b

    :cond_13
    move v2, v1

    goto/16 :goto_b

    :pswitch_1
    iget v4, v2, Lcom/loc/bv;->k:I

    if-ne v4, v0, :cond_10

    iget v4, v6, Lcom/loc/bv;->c:I

    iget v5, v2, Lcom/loc/bv;->c:I

    if-ne v4, v5, :cond_14

    iget v4, v6, Lcom/loc/bv;->d:I

    iget v5, v2, Lcom/loc/bv;->d:I

    if-ne v4, v5, :cond_14

    iget-object v4, v6, Lcom/loc/bv;->b:Ljava/lang/String;

    if-eqz v4, :cond_14

    iget-object v4, v6, Lcom/loc/bv;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/loc/bv;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v0

    goto/16 :goto_b

    :cond_14
    move v2, v1

    goto/16 :goto_b

    :cond_15
    move v5, v1

    goto/16 :goto_c

    :cond_16
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/loc/bp;->o:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x4e20

    cmp-long v2, v10, v12

    if-lez v2, :cond_17

    move v4, v0

    goto/16 :goto_d

    :cond_17
    move v4, v1

    goto/16 :goto_d

    :cond_18
    move v0, v1

    goto/16 :goto_e

    :cond_19
    if-nez v1, :cond_1e

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bp;->I:J

    :goto_10
    iget-object v0, p0, Lcom/loc/bp;->G:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/bp;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/loc/cp;->a()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/loc/bp;->H:J

    sub-long/2addr v0, v8

    const-wide/16 v8, 0xbb8

    cmp-long v0, v0, v8

    if-gez v0, :cond_1f

    iget-object v0, p0, Lcom/loc/bp;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/bp;->Q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/bp;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->ao:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/loc/bp;->R:Z

    if-eqz v0, :cond_24

    if-nez v2, :cond_24

    if-nez v4, :cond_24

    invoke-static {}, Lcom/loc/bz;->a()Lcom/loc/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bp;->ao:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/loc/bp;->R:Z

    invoke-virtual {v0, v1, v3, v5}, Lcom/loc/bz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    :goto_12
    if-nez v4, :cond_1a

    invoke-static {v0}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    if-eqz v2, :cond_22

    :cond_1b
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/loc/bp;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, "new"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->J:Ljava/lang/String;

    iput-object v6, p0, Lcom/loc/bp;->K:Lcom/loc/bv;

    invoke-direct {p0}, Lcom/loc/bp;->g()V

    :cond_1c
    :goto_13
    invoke-static {}, Lcom/loc/bz;->a()Lcom/loc/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bp;->ao:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v4, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Landroid/content/Context;Z)V

    invoke-static {}, Lcom/loc/cc;->a()Lcom/loc/cc;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/cc;->a(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v1, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loc/bp;->b(Z)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/loc/bp;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/bp;->J:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u79bb\u7ebf\u5b9a\u4f4d\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_1e
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bp;->I:J

    goto/16 :goto_10

    :cond_1f
    invoke-static {}, Lcom/loc/cp;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bp;->H:J

    iget-object v0, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bp;->G:Ljava/lang/String;

    goto/16 :goto_11

    :cond_20
    iget-object v0, p0, Lcom/loc/bp;->G:Ljava/lang/String;

    if-nez v0, :cond_21

    invoke-static {}, Lcom/loc/cp;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bp;->H:J

    iget-object v0, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bp;->G:Ljava/lang/String;

    goto/16 :goto_11

    :cond_21
    invoke-static {}, Lcom/loc/cp;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bp;->H:J

    goto/16 :goto_11

    :cond_22
    if-eqz v4, :cond_23

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/loc/bp;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->J:Ljava/lang/String;

    iput-object v6, p0, Lcom/loc/bp;->K:Lcom/loc/bv;

    invoke-direct {p0}, Lcom/loc/bp;->g()V

    goto/16 :goto_13

    :cond_23
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/loc/bp;->I:J

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    iput-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/bp;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/loc/bp;->g()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_13

    :catch_4
    move-exception v2

    goto/16 :goto_2

    :cond_24
    move-object v0, v3

    goto/16 :goto_12

    :cond_25
    move v2, v1

    goto/16 :goto_f

    :cond_26
    move-object v6, v3

    goto/16 :goto_a

    :cond_27
    move v2, v1

    goto/16 :goto_6

    :cond_28
    move-wide v4, v8

    goto/16 :goto_5

    :cond_29
    move-object v2, v3

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(DD)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "output=json&radius=1000&extensions=all&location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bp;->L:Lcom/loc/cf;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const-string v3, "http://restapi.amap.com/v3/geocode/regeo"

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/loc/cf;->a([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/ch;

    invoke-direct {v1}, Lcom/loc/ch;-><init>()V

    const-string v2, "\"status\":\"1\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/loc/ch;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLatitude(D)V

    invoke-virtual {v0, p3, p4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/bs;->a()Lcom/loc/bs;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/bp;->R:Z

    invoke-virtual {v0, v1}, Lcom/loc/bs;->a(Z)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/loc/bs;->a()Lcom/loc/bs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/bs;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    aget-object v0, p2, v2

    const-string v1, "shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/loc/bs;->a()Lcom/loc/bs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/bs;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    goto :goto_0

    :cond_3
    aget-object v0, p2, v2

    const-string v1, "fusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/loc/bs;->a()Lcom/loc/bs;

    invoke-static {p1}, Lcom/loc/bs;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    goto :goto_0
.end method

.method public final declared-synchronized a(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bp;->aq:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/bp;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/loc/bp;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    invoke-virtual {v0}, Lcom/loc/bw;->c()Lcom/loc/bv;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/loc/bp;->aa:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v1, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v6, v0

    :cond_1
    monitor-exit p0

    return-object v6

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "APS"

    const-string v3, "doFirstNetLocate"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :try_start_4
    invoke-direct {p0, v2, p1}, Lcom/loc/bp;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    :goto_2
    :try_start_5
    invoke-static {v6}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "new"

    invoke-virtual {v6, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/bp;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bp;->K:Lcom/loc/bv;

    iput-object v6, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/bp;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/loc/bp;->g()V

    move-object v0, v6

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v6, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/bp;->d(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loc/bp;->b(Z)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/loc/bp;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/loc/bp;->J:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->f(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u79bb\u7ebf\u5b9a\u4f4d\u7ed3\u679c\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/loc/bp;->b(Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/loc/bz;->a()Lcom/loc/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bp;->ao:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Landroid/content/Context;Z)V
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

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v1, "collwifiscan"

    invoke-static {v0, v1}, Lcom/loc/cp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v1, "collwifiscan"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x14

    sput v0, Lcom/loc/c;->h:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v1, "reversegeo"

    invoke-static {v0, v1}, Lcom/loc/cp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v1, "reversegeo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v2, "isOffset"

    invoke-static {v0, v2}, Lcom/loc/cp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v2, "isOffset"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    move-result v2

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v4, "isLocationCacheEnable"

    invoke-static {v0, v4}, Lcom/loc/cp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v4, "isLocationCacheEnable"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result v0

    :goto_3
    :try_start_4
    iget-boolean v3, p0, Lcom/loc/bp;->Q:Z

    if-ne v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/loc/bp;->P:Z

    if-ne v1, v3, :cond_1

    iget-boolean v3, p0, Lcom/loc/bp;->R:Z

    if-eq v0, v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/loc/bp;->x()V

    :cond_2
    invoke-static {}, Lcom/loc/cp;->c()I

    move-result v3

    const/16 v4, 0x12

    if-ge v3, v4, :cond_3

    invoke-static {}, Lcom/loc/cp;->c()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v4, "wifiactivescan"

    invoke-static {v3, v4}, Lcom/loc/cp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    if-eqz v3, :cond_3

    :try_start_5
    const-string v3, "1"

    iget-object v4, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v5, "wifiactivescan"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/loc/bp;->ag:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_4
    iput-boolean v2, p0, Lcom/loc/bp;->Q:Z

    iput-boolean v1, p0, Lcom/loc/bp;->P:Z

    iput-boolean v0, p0, Lcom/loc/bp;->R:Z

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cp;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/bp;->r:Z

    return-void

    :cond_4
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/loc/c;->h:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :try_start_7
    const-string v4, "APS"

    const-string v5, "updateWifi part1"

    invoke-static {v3, v4, v5}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_4

    :catch_3
    move-exception v0

    move v0, v3

    move v1, v3

    move v2, v3

    goto :goto_4

    :catch_4
    move-exception v0

    move v0, v3

    move v2, v3

    goto :goto_4

    :catch_5
    move-exception v0

    move v0, v3

    goto :goto_4

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move v2, v3

    goto/16 :goto_2

    :cond_7
    move v1, v3

    goto/16 :goto_1
.end method

.method public final declared-synchronized a(ZLandroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bp;->O:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/bp;->N:Lcom/loc/bq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/bq;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loc/bq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/bp;->N:Lcom/loc/bq;

    iget-object v0, p0, Lcom/loc/bp;->N:Lcom/loc/bq;

    iget-object v1, p0, Lcom/loc/bp;->ai:Lcom/loc/bq$a;

    invoke-virtual {v0, v1}, Lcom/loc/bq;->a(Lcom/loc/bq$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bp;->N:Lcom/loc/bq;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/loc/bp;->N:Lcom/loc/bq;

    invoke-virtual {v0}, Lcom/loc/bq;->c()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bp;->O:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/loc/bp;->N:Lcom/loc/bq;

    invoke-virtual {v0}, Lcom/loc/bq;->b()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "APS"

    const-string v2, "bindService"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bp;->O:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cj;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cp;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v0, v2}, Lcom/loc/cp;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/loc/bx;

    iget-object v3, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    invoke-direct {v2, v3, v0}, Lcom/loc/bx;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v2, p0, Lcom/loc/bp;->f:Lcom/loc/bx;

    :cond_2
    iget-object v0, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    if-nez v0, :cond_3

    new-instance v0, Lcom/loc/bw;

    iget-object v2, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lcom/loc/bw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    :cond_3
    invoke-static {}, Lcom/loc/bz;->a()Lcom/loc/bz;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/loc/bz;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Z)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/bp;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cf;->a(Landroid/content/Context;)Lcom/loc/cf;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->L:Lcom/loc/cf;

    iget-object v0, p0, Lcom/loc/bp;->e:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/loc/cp;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/bp;->e:Landroid/net/ConnectivityManager;

    :cond_1
    new-instance v0, Lcom/loc/ci;

    invoke-direct {v0}, Lcom/loc/ci;-><init>()V

    iput-object v0, p0, Lcom/loc/bp;->y:Lcom/loc/ci;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bp;->w()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/loc/bp;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loc/bp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "doFusionLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/loc/bp;->a(Landroid/content/Context;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/loc/c;->i:Z

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/bp;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bp;->q:J

    iget-boolean v0, p0, Lcom/loc/bp;->S:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/loc/bp;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bp;->S:Z

    :cond_2
    iget-object v0, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    invoke-virtual {v0}, Lcom/loc/bw;->a()V

    iget-object v0, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    invoke-virtual {v0}, Lcom/loc/bw;->e()Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/loc/cc;->a()Lcom/loc/cc;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/cc;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bp;->E:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/loc/bp;->aq:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/c;->i:Z

    invoke-direct {p0}, Lcom/loc/bp;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->J:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loc/bp;->g()V

    iget-object v0, p0, Lcom/loc/bp;->N:Lcom/loc/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->N:Lcom/loc/bq;

    invoke-virtual {v0}, Lcom/loc/bq;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->N:Lcom/loc/bq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bp;->O:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/bp;->a:I

    :cond_0
    invoke-direct {p0}, Lcom/loc/bp;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/loc/cb;->a()Lcom/loc/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/cb;->a(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/loc/bs;->a()Lcom/loc/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bs;->b()V

    invoke-static {}, Lcom/loc/cp;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bp;->k:Lcom/loc/bp$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bp;->k:Lcom/loc/bp$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/loc/bp;->k:Lcom/loc/bp$a;

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bp;->S:Z

    iget-object v0, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bp;->g:Lcom/loc/bw;

    invoke-virtual {v0}, Lcom/loc/bw;->h()V

    :cond_2
    invoke-static {}, Lcom/loc/cc;->a()Lcom/loc/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/cc;->b()V

    const-string v0, "stopOff"

    invoke-direct {p0, v0}, Lcom/loc/bp;->a(Ljava/lang/String;)V

    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/loc/bp;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bp;->Y:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bp;->H:J

    invoke-direct {p0}, Lcom/loc/bp;->l()V

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/bp;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/bp;->ae:Ljava/util/TreeMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bp;->ae:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->ae:Ljava/util/TreeMap;

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->D:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->ab:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->ac:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bp;->ad:Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "APS"

    const-string v2, "destroy part"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "APS"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/loc/bp;->k:Lcom/loc/bp$a;

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/bp;->k:Lcom/loc/bp$a;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/loc/bp;->aj:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/loc/bp;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/loc/bp;->aj:I

    invoke-static {p1}, Lcom/loc/cj;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/loc/cj;->s()I

    move-result v0

    sput v0, Lcom/loc/bp;->am:I

    sget v0, Lcom/loc/bp;->am:I

    invoke-static {p1, v0}, Lcom/loc/cp;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/loc/bp;->al:J

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/loc/bp;->ak:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "APS"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/loc/bp;->ak:J

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/loc/cj;->y()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/loc/bp;->ak:J

    iget-object v2, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/cp;->e(Landroid/content/Context;)I

    move-result v2

    sget v3, Lcom/loc/bp;->am:I

    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/loc/bp;->al:J

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/loc/cj;->z()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "isConfigNeedUpdate"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized e()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0}, Lcom/loc/bp;->w()V

    iget-object v0, p0, Lcom/loc/bp;->an:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/loc/bp;->aa:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v1, p0, Lcom/loc/bp;->M:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/loc/bz;->a()Lcom/loc/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bp;->ao:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bp;->ap:Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/loc/bp;->R:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cp;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/loc/bp;->I:J

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    iput-object v0, p0, Lcom/loc/bp;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/loc/bp;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/loc/bp;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/loc/cj;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    :try_start_0
    iget-object v1, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/loc/bp;->W:Z

    if-nez v1, :cond_0

    const-string v1, "Collection"

    const-string v2, "1.0.0"

    invoke-static {v1, v2}, Lcom/loc/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/m;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/cm;->a(Landroid/content/Context;Lcom/loc/m;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/loc/bp;->W:Z

    iget-boolean v2, p0, Lcom/loc/bp;->W:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/loc/bp;->U:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v5, v8

    invoke-static/range {v0 .. v5}, Lcom/loc/aq;->a(Landroid/content/Context;Lcom/loc/m;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/bp;->C:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    if-nez v1, :cond_6

    move v1, v6

    :goto_1
    const-string v2, "Collertor"

    invoke-static {v0, v2, v1}, Lcom/loc/cm;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/loc/bp;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/loc/cj;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/loc/bp;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/loc/bp;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/loc/cj;->t()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/loc/bp;->r()V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/loc/bp;->W:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initCollection"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v1, "coll"

    invoke-static {v0, v1}, Lcom/loc/cp;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_4
    iget-object v0, p0, Lcom/loc/bp;->m:Lorg/json/JSONObject;

    const-string v1, "coll"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    :goto_4
    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/loc/bp;->r()V

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "APS"

    const-string v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v7

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/loc/bp;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_5
    invoke-direct {p0}, Lcom/loc/bp;->q()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    iget-object v0, p0, Lcom/loc/bp;->C:Ljava/lang/Object;

    const-string v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    :try_start_7
    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bp;->Z:Z

    iget-object v0, p0, Lcom/loc/bp;->d:Landroid/content/Context;

    const-string v1, "Collertor"

    invoke-static {v0, v1, v7}, Lcom/loc/cm;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "APS"

    const-string v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v0

    move v7, v6

    goto :goto_5

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :cond_6
    move v1, v7

    goto/16 :goto_1
.end method
