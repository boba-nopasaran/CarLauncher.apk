.class public Lcom/txznet/comm/T3/T2$T2;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T2"
.end annotation


# instance fields
.field T:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/txznet/comm/T3/T2$T2;->T:[B

    return-void
.end method


# virtual methods
.method public T()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/T3/T2$T2;->T:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public T2()Ljava/lang/Integer;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/T3/T2$T2;->T:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public T3()[B
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/T3/T2$T2;->T:[B

    return-object v0
.end method

.method public TN()Ljava/lang/Double;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/T3/T2$T2;->T:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Te()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/T3/T2$T2;->T:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Tw()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/txznet/comm/T3/T2$T2;->T:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method
