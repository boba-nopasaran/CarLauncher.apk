.class public Lcom/txznet/sdk/bean/PoiDeepInfo$StationInfo;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/bean/PoiDeepInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StationInfo"
.end annotation


# instance fields
.field public price:Ljava/lang/String;

.field public pricetag:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromString(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/bean/PoiDeepInfo$StationInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v7, "taginfo"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lcom/txznet/sdk/bean/PoiDeepInfo$StationInfo;

    invoke-direct {v5}, Lcom/txznet/sdk/bean/PoiDeepInfo$StationInfo;-><init>()V

    const-string v7, "type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "#"

    const-string v9, "\u53f7"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/txznet/sdk/bean/PoiDeepInfo$StationInfo;->type:Ljava/lang/String;

    const-string v7, "price"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/txznet/sdk/bean/PoiDeepInfo$StationInfo;->price:Ljava/lang/String;

    const-string v7, "pricetag"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/txznet/sdk/bean/PoiDeepInfo$StationInfo;->pricetag:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    :cond_1
    return-object v4
.end method
