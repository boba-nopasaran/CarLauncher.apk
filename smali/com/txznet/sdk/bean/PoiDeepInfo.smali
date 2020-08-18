.class public Lcom/txznet/sdk/bean/PoiDeepInfo;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/bean/PoiDeepInfo$StationInfo;,
        Lcom/txznet/sdk/bean/PoiDeepInfo$PackingInfo;
    }
.end annotation


# static fields
.field public static final DEEPINFO_CATEGORY_HOTEL:I = 0x2

.field public static final DEEPINFO_CATEGORY_PARKING:I = 0x0

.field public static final DEEPINFO_CATEGORY_STATION:I = 0x1


# instance fields
.field public category:I

.field public feature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/String;

.field public tagInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static T(Lcom/txznet/sdk/bean/PoiDeepInfo;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v5, p0, Lcom/txznet/sdk/bean/PoiDeepInfo;->category:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v5, p0, Lcom/txznet/sdk/bean/PoiDeepInfo;->tag:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/txznet/sdk/bean/PoiDeepInfo;->feature:Ljava/util/List;

    iput-object v4, p0, Lcom/txznet/sdk/bean/PoiDeepInfo;->tagInfo:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-static {p1}, Lcom/txznet/sdk/bean/PoiDeepInfo$PackingInfo;->parseFromString(Lorg/json/JSONObject;)Lcom/txznet/sdk/bean/PoiDeepInfo$PackingInfo;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/txznet/sdk/bean/PoiDeepInfo$StationInfo;->parseFromString(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txznet/sdk/bean/PoiDeepInfo$StationInfo;

    iget-object v5, v5, Lcom/txznet/sdk/bean/PoiDeepInfo$StationInfo;->type:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/txznet/sdk/bean/PoiDeepInfo;->tag:Ljava/lang/String;

    const-string v6, "\u78a7\u8f9f"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "\u78a7\u8f9f"

    iput-object v5, p0, Lcom/txznet/sdk/bean/PoiDeepInfo;->tag:Ljava/lang/String;

    :cond_1
    iget-object v5, p0, Lcom/txznet/sdk/bean/PoiDeepInfo;->tag:Ljava/lang/String;

    const-string v6, "\u9053\u8fbe\u5c14"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "\u9053\u8fbe\u5c14"

    iput-object v5, p0, Lcom/txznet/sdk/bean/PoiDeepInfo;->tag:Ljava/lang/String;

    :cond_2
    move-object v4, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static parseFromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDeepInfo;
    .locals 5

    const/4 v3, 0x0

    new-instance v2, Lcom/txznet/sdk/bean/PoiDeepInfo;

    invoke-direct {v2}, Lcom/txznet/sdk/bean/PoiDeepInfo;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "category"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/txznet/sdk/bean/PoiDeepInfo;->category:I

    const-string v4, "tag"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/txznet/sdk/bean/PoiDeepInfo;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/txznet/sdk/bean/PoiDeepInfo;->T(Lcom/txznet/sdk/bean/PoiDeepInfo;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v3

    goto :goto_0
.end method
