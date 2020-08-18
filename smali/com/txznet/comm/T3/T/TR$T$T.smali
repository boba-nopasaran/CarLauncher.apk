.class public final Lcom/txznet/comm/T3/T/TR$T$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T/TR$T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation


# instance fields
.field private T:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/T3/T/TR$T$T;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public T(Ljava/lang/String;)Lcom/txznet/comm/T3/T/TR$T$T;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    const-string v2, "taskID"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/T3/T/TR$T$T;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public T()Lcom/txznet/comm/T3/T/TR$T;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    const-string v2, "scene"

    const-string v3, "wakeup"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/TR$T$T;->T3()Lcom/txznet/comm/T3/T/TR$T;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public T2(Ljava/lang/String;)Lcom/txznet/comm/T3/T/TR$T$T;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    const-string v2, "action"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public T3(Ljava/lang/String;)Lcom/txznet/comm/T3/T/TR$T$T;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    const-string v2, "keywords"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public T3()Lcom/txznet/comm/T3/T/TR$T;
    .locals 1

    new-instance v0, Lcom/txznet/comm/T3/T/TR$T$T$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/T3/T/TR$T$T$1;-><init>(Lcom/txznet/comm/T3/T/TR$T$T;)V

    return-object v0
.end method

.method public TN(Ljava/lang/String;)Lcom/txznet/comm/T3/T/TR$T$T;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/T3/T/TR$T$T;->T:Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
