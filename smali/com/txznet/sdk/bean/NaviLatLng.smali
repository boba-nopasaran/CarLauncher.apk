.class public Lcom/txznet/sdk/bean/NaviLatLng;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:D

.field private T3:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/NaviLatLng;
    .locals 2

    new-instance v1, Lcom/txznet/sdk/bean/NaviLatLng;

    invoke-direct {v1}, Lcom/txznet/sdk/bean/NaviLatLng;-><init>()V

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/txznet/sdk/bean/NaviLatLng;->T(Lcom/txznet/comm/TN/T;)V

    return-object v1
.end method


# virtual methods
.method protected T()Lcom/txznet/comm/TN/T;
    .locals 4

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "mLatitude"

    iget-wide v2, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "mLongitude"

    iget-wide v2, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T3:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    return-object v0
.end method

.method protected T(Lcom/txznet/comm/TN/T;)V
    .locals 6

    const-wide/16 v4, 0x0

    const-string v0, "mLatitude"

    const-class v1, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T:D

    const-string v0, "mLongitude"

    const-class v1, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T3:D

    return-void
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T3:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T3:D

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "mLatitude"

    iget-wide v4, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mLongitude"

    iget-wide v4, p0, Lcom/txznet/sdk/bean/NaviLatLng;->T3:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 2

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NaviLatLng;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T3()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NaviLatLng;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
