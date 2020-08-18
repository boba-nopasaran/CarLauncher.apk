.class public Lcom/txznet/sdk/bean/Poi;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/bean/Poi$CoordType;,
        Lcom/txznet/sdk/bean/Poi$PoiAction;
    }
.end annotation


# static fields
.field public static final POI_SOURCE_BAIDU_IMPL:I = 0x6

.field public static final POI_SOURCE_BAIDU_LOCAL:I = 0x7

.field public static final POI_SOURCE_BAIDU_WEB:I = 0x8

.field public static final POI_SOURCE_DZDP:I = 0x2

.field public static final POI_SOURCE_GAODE_IMPL:I = 0x3

.field public static final POI_SOURCE_GAODE_LOCAL:I = 0x4

.field public static final POI_SOURCE_GAODE_WEB:I = 0x5

.field public static final POI_SOURCE_KAILIDE:I = 0x9

.field public static final POI_SOURCE_MEIXING:I = 0xb

.field public static final POI_SOURCE_QIHOO:I = 0xc

.field public static final POI_SOURCE_TENCENT:I = 0xa

.field public static final POI_SOURCE_TXZ:I = 0x1

.field public static final POI_TYPE_BUSINESS:I = 0x2

.field public static final POI_TYPE_POIDEATAIL:I = 0x1

.field public static final POI_TYPE_TXZ:I = 0x3

.field private static T:D


# instance fields
.field T0:[Ljava/lang/String;

.field T5:I

.field T7:D

.field TF:Lcom/txznet/sdk/bean/Poi$CoordType;

.field TH:Ljava/lang/String;

.field TL:Ljava/lang/String;

.field TO:D

.field TQ:Ljava/lang/String;

.field Tc:Ljava/lang/String;

.field Tk:Ljava/lang/String;

.field To:I

.field Tt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x404a2e1077c7044eL    # 52.35987755982988

    sput-wide v0, Lcom/txznet/sdk/bean/Poi;->T:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/txznet/sdk/bean/Poi$CoordType;->GCJ02:Lcom/txznet/sdk/bean/Poi$CoordType;

    iput-object v0, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    iput v1, p0, Lcom/txznet/sdk/bean/Poi;->Tt:I

    iput v1, p0, Lcom/txznet/sdk/bean/Poi;->T5:I

    return-void
.end method

.method public static Convert_BD09_To_GCJ02(DD)[D
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

    sget-wide v14, Lcom/txznet/sdk/bean/Poi;->T:D

    mul-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double v8, v10, v12

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    const-wide v12, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v14, Lcom/txznet/sdk/bean/Poi;->T:D

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

.method public static fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 2

    new-instance v1, Lcom/txznet/sdk/bean/Poi;

    invoke-direct {v1}, Lcom/txznet/sdk/bean/Poi;-><init>()V

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/txznet/sdk/bean/Poi;->T(Lcom/txznet/comm/TN/T;)V

    return-object v1
.end method


# virtual methods
.method protected T()Lcom/txznet/comm/TN/T;
    .locals 4

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "lat"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getLat()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "lng"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getLng()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "city"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "name"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "geo"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getGeoinfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "distance"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getDistance()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "action"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "coordtype"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getType()Lcom/txznet/sdk/bean/Poi$CoordType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "extre"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getExtraStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->getSourceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "poitype"

    iget v2, p0, Lcom/txznet/sdk/bean/Poi;->T5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    return-object v0
.end method

.method protected T(Lcom/txznet/comm/TN/T;)V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const-string v1, "lat"

    const-class v2, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    const-string v1, "lng"

    const-class v2, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    const-string v1, "city"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TL:Ljava/lang/String;

    const-string v1, "name"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TQ:Ljava/lang/String;

    const-string v1, "geo"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TH:Ljava/lang/String;

    const-string v1, "distance"

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/txznet/sdk/bean/Poi;->To:I

    const-string v1, "action"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->Tc:Ljava/lang/String;

    const-string v1, "coordtype"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "source"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/txznet/sdk/bean/Poi;->Tt:I

    const-string v1, "extre"

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->Tk:Ljava/lang/String;

    const-string v1, "poitype"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/txznet/sdk/bean/Poi;->T5:I

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BAIDU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/txznet/sdk/bean/Poi$CoordType;->BAIDU:Lcom/txznet/sdk/bean/Poi$CoordType;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/txznet/sdk/bean/Poi$CoordType;->GCJ02:Lcom/txznet/sdk/bean/Poi$CoordType;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/txznet/sdk/bean/Poi$CoordType;->GCJ02:Lcom/txznet/sdk/bean/Poi$CoordType;

    iput-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->Tc:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->T0:[Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->TL:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/Poi;->To:I

    return v0
.end method

.method public getExtraStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->Tk:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoinfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->TH:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 6

    iget-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    sget-object v2, Lcom/txznet/sdk/bean/Poi$CoordType;->BAIDU:Lcom/txznet/sdk/bean/Poi$CoordType;

    if-ne v1, v2, :cond_1

    iget-wide v2, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    iget-wide v4, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    invoke-static {v2, v3, v4, v5}, Lcom/txznet/comm/T3/T/TN;->T(DD)[D

    move-result-object v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    :goto_0
    return-wide v2

    :cond_0
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    goto :goto_0
.end method

.method public getLng()D
    .locals 6

    iget-object v1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    sget-object v2, Lcom/txznet/sdk/bean/Poi$CoordType;->BAIDU:Lcom/txznet/sdk/bean/Poi$CoordType;

    if-ne v1, v2, :cond_1

    iget-wide v2, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    iget-wide v4, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    invoke-static {v2, v3, v4, v5}, Lcom/txznet/comm/T3/T/TN;->T(DD)[D

    move-result-object v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    :goto_0
    return-wide v2

    :cond_0
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->TQ:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalLat()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    return-wide v0
.end method

.method public getOriginalLng()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    return-wide v0
.end method

.method public getPoiType()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/Poi;->T5:I

    return v0
.end method

.method public getSourceType()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/Poi;->Tt:I

    return v0
.end method

.method public getType()Lcom/txznet/sdk/bean/Poi$CoordType;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->Tc:Ljava/lang/String;

    return-object p0
.end method

.method public setAlias([Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->T0:[Ljava/lang/String;

    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->TL:Ljava/lang/String;

    return-object p0
.end method

.method public setCoordType(Lcom/txznet/sdk/bean/Poi$CoordType;)Lcom/txznet/sdk/bean/Poi;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->TF:Lcom/txznet/sdk/bean/Poi$CoordType;

    return-object p0
.end method

.method public setDistance(I)Lcom/txznet/sdk/bean/Poi;
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/Poi;->To:I

    return-object p0
.end method

.method public setExtraStr(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->Tk:Ljava/lang/String;

    return-object p0
.end method

.method public setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->TH:Ljava/lang/String;

    return-object p0
.end method

.method public setLat(D)Lcom/txznet/sdk/bean/Poi;
    .locals 1

    iput-wide p1, p0, Lcom/txznet/sdk/bean/Poi;->T7:D

    return-object p0
.end method

.method public setLng(D)Lcom/txznet/sdk/bean/Poi;
    .locals 1

    iput-wide p1, p0, Lcom/txznet/sdk/bean/Poi;->TO:D

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/Poi;->TQ:Ljava/lang/String;

    return-object p0
.end method

.method public setPoiType(I)Lcom/txznet/sdk/bean/Poi;
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/Poi;->T5:I

    return-object p0
.end method

.method public setSourceType(I)Lcom/txznet/sdk/bean/Poi;
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/Poi;->Tt:I

    return-object p0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 2

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T3()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/Poi;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
