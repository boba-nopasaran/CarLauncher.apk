.class public final Lcom/loc/bw;
.super Ljava/lang/Object;
.source "CgiManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/bv;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/telephony/TelephonyManager;

.field private f:Ljava/lang/Object;

.field private g:J

.field private volatile h:Landroid/telephony/CellLocation;

.field private volatile i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/bw;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/bw;->d:I

    iput-object v2, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bw;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bw;->i:Z

    iput-object v2, p0, Lcom/loc/bw;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/bw;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bw;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-static {v0, v1}, Lcom/loc/cp;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "getAllCellInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "getAllCellInfo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/loc/bw;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/loc/bw;->a(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    move-object v1, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_c

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    :try_start_0
    const-string v2, "android.telephony.CellInfoGsm"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v2, "android.telephony.CellInfoWcdma"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v2, "android.telephony.CellInfoLte"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v2, "android.telephony.CellInfoCdma"

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v2, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    if-lez v6, :cond_a

    const-string v2, "getCellIdentity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-nez v2, :cond_7

    move v0, v6

    move-object v2, v7

    :goto_3
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-object v7, v2

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    const/4 v6, 0x2

    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-virtual {v10, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    if-eqz v4, :cond_5

    const/4 v6, 0x3

    :try_start_5
    invoke-virtual {v10, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_2

    :cond_5
    :try_start_6
    invoke-virtual {v11, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x4

    :try_start_7
    invoke-virtual {v11, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    move-object v0, v2

    goto :goto_2

    :cond_7
    const/4 v0, 0x4

    if-ne v6, v0, :cond_8

    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    const-string v1, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    const-string v1, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    const-string v1, "getBasestationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const-string v3, "getLongitude"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string v10, "getLatitude"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    move-object v1, v7

    :goto_4
    const/4 v2, 0x4

    if-eq v6, v2, :cond_1

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x3

    if-ne v6, v0, :cond_9

    :try_start_9
    const-string v0, "getTac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    const-string v3, "getCi"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v2}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    invoke-virtual {v2, v0, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    move-object v0, v1

    move-object v1, v2

    goto :goto_4

    :cond_9
    :try_start_b
    const-string v0, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    const-string v3, "getCid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v2}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    :try_start_c
    invoke-virtual {v2, v0, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    move-object v0, v1

    move-object v1, v2

    goto :goto_4

    :cond_a
    move v0, v6

    move-object v2, v7

    goto/16 :goto_3

    :catch_0
    move-exception v2

    move-object v2, v7

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move v0, v6

    move-object v2, v7

    goto/16 :goto_3

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v7

    move v0, v6

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move v0, v6

    goto/16 :goto_3

    :cond_b
    move-object v2, v7

    goto/16 :goto_3

    :cond_c
    move v6, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_4
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;)Lcom/loc/bv;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/cp;->c()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/loc/bv;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/loc/bv;-><init>(I)V

    iget-object v2, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/loc/cp;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/loc/bv;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/loc/bv;->b:Ljava/lang/String;

    const-string v2, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Lcom/loc/bv;->c:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    iput v2, v1, Lcom/loc/bv;->d:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Lcom/loc/cp;->a(I)I

    move-result v2

    iput v2, v1, Lcom/loc/bv;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "getGsm"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(II)Z
    .locals 3

    const v2, 0xffff

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    if-gt p0, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const v1, 0xfffffff

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private a(Landroid/telephony/CellLocation;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/loc/bw;->i:Z

    iget-object v3, p0, Lcom/loc/bw;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/loc/cp;->a(ZLandroid/telephony/CellLocation;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v1, v0

    :goto_2
    if-nez v1, :cond_0

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/bw;->b:I

    goto :goto_0

    :pswitch_0
    :try_start_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/loc/bw;->a(II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "cgiUseful Cgi.iGsmT"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_2

    :pswitch_1
    :try_start_1
    const-string v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    const-string v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-gez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "cgiUseful Cgi.iCdmaT"

    invoke-static {v1, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized b(ZZ)Landroid/telephony/CellLocation;
    .locals 7

    const v6, 0x7fffffff

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/loc/bw;->i:Z

    iget-boolean v0, p0, Lcom/loc/bw;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_3

    move-object v0, v1

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/loc/bw;->a(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/loc/bw;->a(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lcom/loc/bw;->h:Landroid/telephony/CellLocation;

    :cond_2
    iget-object v0, p0, Lcom/loc/bw;->h:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/loc/bw;->a(Landroid/telephony/CellLocation;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/bw;->e()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/bw;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "getAllCellInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v3}, Lcom/loc/bw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getCellLocationExt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v0, v3}, Lcom/loc/bw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getCellLocationGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v0, v3}, Lcom/loc/bw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/loc/bw;->i:Z

    iget-object v1, p0, Lcom/loc/bw;->h:Landroid/telephony/CellLocation;

    iget-object v2, p0, Lcom/loc/bw;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/loc/cp;->a(ZLandroid/telephony/CellLocation;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/loc/bw;->h:Landroid/telephony/CellLocation;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/loc/bw;->h:Landroid/telephony/CellLocation;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v0}, Lcom/loc/bw;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput v1, p0, Lcom/loc/bw;->b:I

    iget-object v1, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v2, Lcom/loc/bv;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/loc/bv;-><init>(I)V

    iget-object v3, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Lcom/loc/cp;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v3, v4

    iput-object v4, v2, Lcom/loc/bv;->a:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/loc/bv;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    iput v3, v2, Lcom/loc/bv;->c:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    iput v0, v2, Lcom/loc/bv;->d:I

    iget v0, p0, Lcom/loc/bw;->d:I

    iput v0, v2, Lcom/loc/bv;->j:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/loc/bw;->a(II)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/loc/bw;->a(Landroid/telephony/NeighboringCellInfo;)Lcom/loc/bv;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/bw;->h:Landroid/telephony/CellLocation;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/loc/cp;->c()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_5

    :try_start_3
    invoke-direct {p0, v0}, Lcom/loc/bw;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    iput v1, p0, Lcom/loc/bw;->b:I

    iget-object v1, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/loc/cp;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loc/bv;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/loc/bv;-><init>(I)V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/loc/bv;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput-object v1, v2, Lcom/loc/bv;->b:Ljava/lang/String;

    const-string v1, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v2, Lcom/loc/bv;->g:I

    const-string v1, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v2, Lcom/loc/bv;->h:I

    const-string v1, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v2, Lcom/loc/bv;->i:I

    iget v1, p0, Lcom/loc/bw;->d:I

    iput v1, v2, Lcom/loc/bv;->j:I

    const-string v1, "getBaseStationLatitude"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v2, Lcom/loc/bv;->e:I

    const-string v1, "getBaseStationLongitude"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/loc/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v2, Lcom/loc/bv;->f:I

    iget v0, v2, Lcom/loc/bv;->e:I

    if-ltz v0, :cond_7

    iget v0, v2, Lcom/loc/bv;->f:I

    if-ltz v0, :cond_7

    iget v0, v2, Lcom/loc/bv;->e:I

    if-eq v0, v6, :cond_7

    iget v0, v2, Lcom/loc/bv;->f:I

    if-eq v0, v6, :cond_7

    iget v0, v2, Lcom/loc/bv;->e:I

    iget v1, v2, Lcom/loc/bv;->f:I

    if-ne v0, v1, :cond_8

    iget v0, v2, Lcom/loc/bv;->e:I

    if-lez v0, :cond_8

    :cond_7
    const/4 v0, 0x0

    iput v0, v2, Lcom/loc/bv;->e:I

    const/4 v0, 0x0

    iput v0, v2, Lcom/loc/bv;->f:I

    :cond_8
    iget-object v0, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "CgiManager"

    const-string v2, "hdlCdmaLocChange"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bw;->i:Z

    iget-object v1, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bw;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/loc/cp;->a(ZLandroid/telephony/CellLocation;)I

    move-result v0

    iput v0, p0, Lcom/loc/bw;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bw;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bw;->j:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v3, p0, Lcom/loc/bw;->j:Ljava/lang/String;

    const-string v1, "CgiManager"

    const-string v2, "CgiManager"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/bw;->b:I

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/loc/bw;->b(ZZ)Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bw;->g:J

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/loc/cp;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/bw;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/bv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Lcom/loc/bv;
    .locals 2

    iget-object v0, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bv;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/loc/bw;->b:I

    return v0
.end method

.method public final e()Landroid/telephony/CellLocation;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/bw;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/loc/bw;->a(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/loc/bw;->h:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bw;->j:Ljava/lang/String;

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/loc/bw;->j:Ljava/lang/String;

    const-string v2, "CgiManager"

    const-string v3, "getCellLocation"

    invoke-static {v0, v2, v3}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final f()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bw;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bw;->h:Landroid/telephony/CellLocation;

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/bw;->b:I

    iget-object v0, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final h()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/bw;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bw;->g:J

    iput-object v2, p0, Lcom/loc/bw;->e:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/loc/bw;->f:Ljava/lang/Object;

    return-void
.end method

.method public final i()V
    .locals 2

    const/16 v1, 0x9

    iget v0, p0, Lcom/loc/bw;->b:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/loc/bw;->b:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/loc/bw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/loc/bw;->b:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bw;->j:Ljava/lang/String;

    return-object v0
.end method
