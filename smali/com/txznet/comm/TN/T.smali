.class public Lcom/txznet/comm/TN/T;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public T(Ljava/lang/String;)Lcom/txznet/comm/TN/T;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;
    .locals 9

    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    if-nez v8, :cond_0

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iput-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    :cond_0
    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_3

    check-cast p2, [Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v1, v7

    array-length v5, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_1
    return-object p0

    :cond_3
    instance-of v8, p2, Ljava/util/Collection;

    if-eqz v8, :cond_4

    new-instance v4, Lorg/json/JSONArray;

    check-cast p2, Ljava/util/Collection;

    invoke-direct {v4, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    iget-object v9, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    :try_start_0
    iget-object v9, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-class v9, Ljava/lang/Double;

    if-ne p2, v9, :cond_1

    new-instance v2, Ljava/lang/Double;

    iget-object v9, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Ljava/lang/Double;-><init>(D)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-class v9, Ljava/lang/Float;

    if-ne p2, v9, :cond_3

    new-instance v2, Ljava/lang/Float;

    iget-object v9, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Ljava/lang/Float;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v2, p3

    goto :goto_0

    :cond_3
    :try_start_1
    const-class v9, Ljava/lang/Integer;

    if-ne p2, v9, :cond_4

    new-instance v2, Ljava/lang/Integer;

    iget-object v9, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_4
    const-class v9, Ljava/lang/Long;

    if-ne p2, v9, :cond_5

    new-instance v2, Ljava/lang/Long;

    iget-object v9, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_5
    instance-of v9, v8, Lorg/json/JSONArray;

    if-eqz v9, :cond_a

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    const/4 v5, 0x0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_1
    if-ge v5, v7, :cond_0

    const-class v9, Ljava/lang/Double;

    if-ne v3, v9, :cond_6

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v2, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const-class v9, Ljava/lang/Float;

    if-ne v3, v9, :cond_7

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    double-to-float v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v2, v5

    goto :goto_2

    :cond_7
    const-class v9, Ljava/lang/Integer;

    if-ne v3, v9, :cond_8

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v5

    goto :goto_2

    :cond_8
    const-class v9, Ljava/lang/Long;

    if-ne v3, v9, :cond_9

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v2, v5

    goto :goto_2

    :cond_9
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v2, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_a
    move-object v2, v8

    goto/16 :goto_0
.end method

.method public T()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    return-object v0
.end method

.method public T2()[B
    .locals 1

    invoke-virtual {p0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public T3()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
