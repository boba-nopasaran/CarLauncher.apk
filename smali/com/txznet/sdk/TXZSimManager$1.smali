.class Lcom/txznet/sdk/TXZSimManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZSimManager;->setSimTool(Lcom/txznet/sdk/TXZSimManager$SimTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZSimManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZSimManager;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZSimManager$1;->T:Lcom/txznet/sdk/TXZSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 3

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/txznet/sdk/TXZSimManager$1;->T:Lcom/txznet/sdk/TXZSimManager;

    invoke-static {v1}, Lcom/txznet/sdk/TXZSimManager;->T(Lcom/txznet/sdk/TXZSimManager;)Lcom/txznet/sdk/TXZSimManager$SimTool;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "alarm"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/txznet/sdk/TXZSimManager$SimTool;->onSimAlarmHandle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "recharge.qr"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/txznet/sdk/TXZSimManager$SimTool;->onSimRechargeQrHandle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "recharge.result"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/txznet/sdk/TXZSimManager$SimTool;->onSimRechargeResultHandle(Ljava/lang/String;)V

    goto :goto_0
.end method
