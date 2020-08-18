.class final Lcom/txznet/comm/T3/T/TJ$6;
.super Lcom/txznet/comm/T3/T2$T3;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/T3/T/TJ;->T(Lcom/txznet/comm/T3/T/TJ$T;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/comm/T3/T2$T3;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/T3/T2$T2;)V
    .locals 3

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/TJ$6;->TN()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/T3/T/TJ$T;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/txznet/comm/T3/T2$T2;->Tw()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Lcom/txznet/comm/T3/T/TJ$T;->T:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    const-string v2, "asr"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/TJ;->TN(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/txznet/comm/T3/T/TJ$T;->T:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, v0, Lcom/txznet/comm/T3/T/TJ$T;->T3:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    const-string v2, "tts"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/TJ;->Te(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/txznet/comm/T3/T/TJ$T;->T3:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, v0, Lcom/txznet/comm/T3/T/TJ$T;->T2:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    const-string v2, "call"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/TJ;->Tw(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/txznet/comm/T3/T/TJ$T;->T2:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/txznet/comm/T3/T/TJ$T;->T()V

    return-void

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_0
.end method
