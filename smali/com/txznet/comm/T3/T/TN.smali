.class public Lcom/txznet/comm/T3/T/TN;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x404a2e1077c7044eL    # 52.35987755982988

    sput-wide v0, Lcom/txznet/comm/T3/T/TN;->T:D

    return-void
.end method

.method public static T(DD)[D
    .locals 16

    const-wide v10, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double v4, p2, v10

    const-wide v10, 0x3f789374bc6a7efaL    # 0.006

    sub-double v6, p0, v10

    mul-double v10, v4, v4

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide v12, 0x3ef4f8b588e368f1L    # 2.0E-5

    sget-wide v14, Lcom/txznet/comm/T3/T/TN;->T:D

    mul-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double v8, v10, v12

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    const-wide v12, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v14, Lcom/txznet/comm/T3/T/TN;->T:D

    mul-double/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double v2, v10, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double p2, v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double p0, v8, v10

    const/4 v1, 0x2

    new-array v0, v1, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    const/4 v1, 0x1

    aput-wide p2, v0, v1

    return-object v0
.end method
