.class Lcom/txznet/sdk/TXZAsrManager$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZAsrManager;->regCommandForAM(IILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/String;

.field final synthetic T3:Lcom/txznet/sdk/TXZAsrManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZAsrManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrManager$3;->T3:Lcom/txznet/sdk/TXZAsrManager;

    iput-object p2, p0, Lcom/txznet/sdk/TXZAsrManager$3;->T:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 8

    const/4 v7, 0x0

    const-string v3, "toAmFreq"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v2, Lcom/txznet/comm/TN/T;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    const-string v3, "freqValue"

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrManager$3;->T3:Lcom/txznet/sdk/TXZAsrManager;

    invoke-static {v3}, Lcom/txznet/sdk/TXZAsrManager;->T3(Lcom/txznet/sdk/TXZAsrManager;)Lcom/txznet/comm/T3/T/T$TN;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrManager$3;->T3:Lcom/txznet/sdk/TXZAsrManager;

    invoke-static {v3}, Lcom/txznet/sdk/TXZAsrManager;->T3(Lcom/txznet/sdk/TXZAsrManager;)Lcom/txznet/comm/T3/T/T$TN;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8c03\u5e45\u5230"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/txznet/sdk/TXZAsrManager$3;->T:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/txznet/comm/T3/T/T$TN;->T(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
