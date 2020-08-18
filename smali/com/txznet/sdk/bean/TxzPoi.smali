.class public Lcom/txznet/sdk/bean/TxzPoi;
.super Lcom/txznet/sdk/bean/Poi;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;
    }
.end annotation


# instance fields
.field T:Ljava/lang/String;

.field T2:Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

.field T3:I

.field public isTop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/txznet/sdk/bean/Poi;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/bean/TxzPoi;->setPoiType(I)Lcom/txznet/sdk/bean/Poi;

    return-void
.end method

.method public static creatCompanyPoi(Lorg/json/JSONObject;)Lcom/txznet/sdk/bean/TxzPoi;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/txznet/sdk/bean/TxzPoi;

    invoke-direct {v0}, Lcom/txznet/sdk/bean/TxzPoi;-><init>()V

    :try_start_0
    const-string v2, "lng"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "lng"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "lng"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/txznet/sdk/bean/TxzPoi;->setLng(D)Lcom/txznet/sdk/bean/Poi;

    const-string v2, "lat"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "lat"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "lat"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/txznet/sdk/bean/TxzPoi;->setLat(D)Lcom/txznet/sdk/bean/Poi;

    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    const-string v2, "geo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "geo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "geo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    const-string v2, "city"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "city"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "city"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    :cond_0
    const-string v2, "logo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "logo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "logo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setLogo(Ljava/lang/String;)V

    :cond_1
    const-string v2, "hot"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "hot"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "hot"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setHot(I)V

    :cond_2
    const-string v2, "detail"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "detail"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "detail"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->creatGeoDetail(Ljava/lang/String;)Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setGeoDetail(Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;)V

    :cond_3
    const-string v2, "top"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "top"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "top"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setTop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/TxzPoi;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/txznet/sdk/bean/TxzPoi;

    invoke-direct {v1}, Lcom/txznet/sdk/bean/TxzPoi;-><init>()V

    invoke-virtual {v1, v0}, Lcom/txznet/sdk/bean/TxzPoi;->T(Lcom/txznet/comm/TN/T;)V

    const-string v2, "top"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setTop(Z)V

    const-string v2, "hot"

    const-class v3, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setHot(I)V

    const-string v2, "logo"

    const-class v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setLogo(Ljava/lang/String;)V

    const-string v2, "detail"

    const-class v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->creatGeoDetail(Ljava/lang/String;)Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txznet/sdk/bean/TxzPoi;->setGeoDetail(Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;)V

    return-object v1
.end method

.method public static getCompanyPoiForJson(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/txznet/sdk/bean/Poi;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/txznet/sdk/bean/TxzPoi;->creatCompanyPoi(Lorg/json/JSONObject;)Lcom/txznet/sdk/bean/TxzPoi;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getGeoDetail()Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/TxzPoi;->T2:Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    return-object v0
.end method

.method public getHot()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/TxzPoi;->T3:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/TxzPoi;->T:Ljava/lang/String;

    return-object v0
.end method

.method public isTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/sdk/bean/TxzPoi;->isTop:Z

    return v0
.end method

.method public setGeoDetail(Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/TxzPoi;->T2:Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    return-void
.end method

.method public setHot(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/TxzPoi;->T3:I

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/TxzPoi;->T:Ljava/lang/String;

    return-void
.end method

.method public setTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/sdk/bean/TxzPoi;->isTop:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/txznet/sdk/bean/Poi;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    const-string v1, "geo"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->getGeoinfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "top"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->isTop()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "hot"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->getHot()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "logo"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v2, "detail"

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->getGeoDetail()Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/TxzPoi;->getGeoDetail()Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/sdk/bean/TxzPoi$GeoDetail;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
