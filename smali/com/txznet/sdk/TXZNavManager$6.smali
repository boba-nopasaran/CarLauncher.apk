.class Lcom/txznet/sdk/TXZNavManager$6;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZNavManager;->setCustomParamsForTxzNavi(Lcom/txznet/sdk/TXZNavManager$TxzNavParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZNavManager$TxzNavParam;

.field final synthetic T3:Lcom/txznet/sdk/TXZNavManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZNavManager;Lcom/txznet/sdk/TXZNavManager$TxzNavParam;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZNavManager$6;->T3:Lcom/txznet/sdk/TXZNavManager;

    iput-object p2, p0, Lcom/txznet/sdk/TXZNavManager$6;->T:Lcom/txznet/sdk/TXZNavManager$TxzNavParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2

    const-string v0, "updateNaviInfo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager$6;->T3:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v0, p3}, Lcom/txznet/sdk/TXZNavManager;->T(Lcom/txznet/sdk/TXZNavManager;[B)V

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager$6;->T:Lcom/txznet/sdk/TXZNavManager$TxzNavParam;

    iget-object v0, v0, Lcom/txznet/sdk/TXZNavManager$TxzNavParam;->mGetNaviInfoListener:Lcom/txznet/sdk/TXZNavManager$GetTxzNaviInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager$6;->T:Lcom/txznet/sdk/TXZNavManager$TxzNavParam;

    iget-object v0, v0, Lcom/txznet/sdk/TXZNavManager$TxzNavParam;->mGetNaviInfoListener:Lcom/txznet/sdk/TXZNavManager$GetTxzNaviInfoListener;

    iget-object v1, p0, Lcom/txznet/sdk/TXZNavManager$6;->T3:Lcom/txznet/sdk/TXZNavManager;

    invoke-static {v1}, Lcom/txznet/sdk/TXZNavManager;->T2(Lcom/txznet/sdk/TXZNavManager;)Lcom/txznet/sdk/bean/NaviInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/txznet/sdk/TXZNavManager$GetTxzNaviInfoListener;->onUpdateNaviInfo(Lcom/txznet/sdk/bean/NaviInfo;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
