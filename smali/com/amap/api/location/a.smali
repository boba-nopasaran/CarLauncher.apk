.class public final Lcom/amap/api/location/a;
.super Ljava/lang/Object;
.source "OffsetUtil.java"


# static fields
.field private static a:Z

.field private static b:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/location/a;->a:Z

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sput-wide v0, Lcom/amap/api/location/a;->b:D

    return-void
.end method

.method private static a(D)D
    .locals 6

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v0, p0

    sget-wide v2, Lcom/amap/api/location/a;->b:D

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(DD)D
    .locals 6

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(DI)D
    .locals 4

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amap/api/location/DPoint;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-static {p0, v0}, Lcom/amap/api/location/a;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 7

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "libwgs2gcj.so"

    invoke-static {p0, v0}, Lcom/loc/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/amap/api/location/a;->a:Z

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/location/a;->a:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :cond_1
    :goto_1
    sget-boolean v0, Lcom/amap/api/location/a;->a:Z

    invoke-static {p1, v0}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/DPoint;Z)Lcom/amap/api/location/DPoint;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "64-bit instead of 32-bit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "32-bit instead of 64-bit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Build.CPU_ABI="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0x15

    if-lt v0, v4, :cond_3

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-class v4, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "primaryCpuAbi"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string v4, "primaryCpuAbi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getRuntime"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "is64Bit"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    :try_start_5
    const-string v1, "is64Bit="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "loc"

    const-string v1, "3.1.0"

    invoke-static {v0, v1}, Lcom/loc/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/m;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "abi"

    invoke-static {v0, v1, v2}, Lcom/loc/w;->b(Lcom/loc/m;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :cond_3
    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "offset"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static a(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 24

    if-eqz p0, :cond_1

    const-wide v2, 0x3f7a37ffff31d771L    # 0.006401062

    const-wide v0, 0x3f78c0000225c17dL    # 0.0060424805

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v6, v4

    move-wide/from16 v22, v2

    move-wide v2, v0

    move-object v0, v5

    move-wide/from16 v4, v22

    :goto_0
    const/4 v1, 0x2

    if-ge v6, v1, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v8

    new-instance v7, Lcom/amap/api/location/DPoint;

    invoke-direct {v7}, Lcom/amap/api/location/DPoint;-><init>()V

    sub-double v4, v0, v4

    sub-double v2, v8, v2

    new-instance v10, Lcom/amap/api/location/DPoint;

    invoke-direct {v10}, Lcom/amap/api/location/DPoint;-><init>()V

    invoke-static {v4, v5}, Lcom/amap/api/location/a;->b(D)D

    move-result-wide v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v2, v3}, Lcom/amap/api/location/a;->a(D)D

    move-result-wide v14

    mul-double v16, v4, v4

    mul-double v18, v2, v2

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    const-wide v14, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v12, v14

    invoke-static {v4, v5}, Lcom/amap/api/location/a;->b(D)D

    move-result-wide v14

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v2, v3}, Lcom/amap/api/location/a;->a(D)D

    move-result-wide v16

    mul-double v18, v4, v4

    mul-double v20, v2, v2

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    add-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide v16, 0x3f789374bc6a7efaL    # 0.006

    add-double v14, v14, v16

    const/16 v11, 0x8

    invoke-static {v12, v13, v11}, Lcom/amap/api/location/a;->a(DI)D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/amap/api/location/DPoint;->setLongitude(D)V

    const/16 v11, 0x8

    invoke-static {v14, v15, v11}, Lcom/amap/api/location/a;->a(DI)D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/amap/api/location/DPoint;->setLatitude(D)V

    add-double/2addr v0, v4

    invoke-virtual {v10}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    sub-double/2addr v0, v4

    const/16 v4, 0x8

    invoke-static {v0, v1, v4}, Lcom/amap/api/location/a;->a(DI)D

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/amap/api/location/DPoint;->setLongitude(D)V

    add-double v0, v8, v2

    invoke-virtual {v10}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/amap/api/location/a;->a(DI)D

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/amap/api/location/DPoint;->setLatitude(D)V

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v7}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    sub-double v2, v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v7}, Lcom/amap/api/location/DPoint;->getLatitude()D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-double/2addr v0, v4

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v2

    move-wide v2, v0

    move-object v0, v7

    goto/16 :goto_0

    :cond_0
    move-object/from16 p0, v0

    :cond_1
    :goto_1
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "B2G"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Lcom/amap/api/location/DPoint;Z)Lcom/amap/api/location/DPoint;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/c;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [D

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1, v0}, Lcom/amap/api/location/CoordUtil;->convertToGcj([D[D)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/cq;->a(DD)[D

    move-result-object v0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/amap/api/location/DPoint;

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/location/DPoint;-><init>(DD)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object p0, v0

    :cond_1
    :goto_1
    return-object p0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "OffsetUtil"

    const-string v2, "cover part1"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/cq;->a(DD)[D

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/loc/cq;->a(DD)[D

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "cover part2"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/cq;->a(DD)[D
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private static b(D)D
    .locals 6

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v0, p0

    sget-wide v2, Lcom/amap/api/location/a;->b:D

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static b(DD)D
    .locals 6

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 10

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/32 v4, 0x2255100

    rem-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    const-wide/32 v4, 0x2255100

    rem-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/location/a;->a(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v0

    double-to-int v4, v4

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/location/a;->b(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v2

    double-to-int v5, v6

    int-to-double v6, v4

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Lcom/amap/api/location/a;->a(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v0

    const-wide/16 v8, 0x0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int v1, v0

    int-to-double v6, v1

    int-to-double v4, v5

    invoke-static {v6, v7, v4, v5}, Lcom/amap/api/location/a;->b(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-double v2, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    int-to-double v2, v1

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    int-to-double v0, v0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v4

    new-instance v4, Lcom/amap/api/location/DPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-static {p0, v4}, Lcom/amap/api/location/a;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_2
    return-object p1

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OffsetUtil"

    const-string v2, "marbar2G"

    invoke-static {v0, v1, v2}, Lcom/loc/c;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
