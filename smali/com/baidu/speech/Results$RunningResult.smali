.class public Lcom/baidu/speech/Results$RunningResult;
.super Lcom/baidu/speech/Results$Result;
.source "Results.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/Results;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningResult"
.end annotation


# instance fields
.field private resultForSdk1X:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/speech/Results$Result;-><init>(Lorg/json/JSONObject;)V

    const-string v5, "content"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "item"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/baidu/speech/Results$RunningResult;->resultForSdk1X:Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/speech/Results$RunningResult;->bundle:Ljava/util/HashMap;

    const-string v6, "results_recognition"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addPrefix(Ljava/lang/String;)Lcom/baidu/speech/Results$Result;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/baidu/speech/Results$Result;->addPrefix(Ljava/lang/String;)Lcom/baidu/speech/Results$Result;

    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v3, p0, Lcom/baidu/speech/Results$RunningResult;->response:Lorg/json/JSONObject;

    const-string v4, "content"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/baidu/speech/Results$RunningResult;->response:Lorg/json/JSONObject;

    const-string v4, "content"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/baidu/speech/Results$RunningResult;->response:Lorg/json/JSONObject;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/speech/Results$RunningResult;->strResponse:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/speech/Results$RunningResult;->bundle:Ljava/util/HashMap;

    const-string v4, "origin_result"

    iget-object v5, p0, Lcom/baidu/speech/Results$RunningResult;->strResponse:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
