.class Lcom/txznet/comm/ui/TN$1$1$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/comm/ui/TN$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/TN$1$1;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/TN$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/comm/ui/TN$1$1$1;->T:Lcom/txznet/comm/ui/TN$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/TN;->T2()V

    invoke-static {}, Lcom/txznet/comm/ui/TN/T3;->T()Lcom/txznet/comm/ui/TN/T3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/ui/TN/T3;->T3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/txznet/comm/ui/TN$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/txznet/comm/ui/TN$1$1$1$1;-><init>(Lcom/txznet/comm/ui/TN$1$1$1;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "UI2.0:"

    invoke-static {v1, v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "UI2.0 normal init error!"

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/txznet/comm/ui/TN$1$1$1;->T:Lcom/txznet/comm/ui/TN$1$1;

    iget-object v1, v1, Lcom/txznet/comm/ui/TN$1$1;->T:Lcom/txznet/comm/ui/TN$1;

    iget-object v1, v1, Lcom/txznet/comm/ui/TN$1;->T:Lcom/txznet/comm/ui/TN;

    invoke-static {v1}, Lcom/txznet/comm/ui/TN;->T(Lcom/txznet/comm/ui/TN;)Lcom/txznet/comm/ui/TN$T;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/comm/ui/TN$1$1$1;->T:Lcom/txznet/comm/ui/TN$1$1;

    iget-object v1, v1, Lcom/txznet/comm/ui/TN$1$1;->T:Lcom/txznet/comm/ui/TN$1;

    iget-object v1, v1, Lcom/txznet/comm/ui/TN$1;->T:Lcom/txznet/comm/ui/TN;

    invoke-static {v1}, Lcom/txznet/comm/ui/TN;->T(Lcom/txznet/comm/ui/TN;)Lcom/txznet/comm/ui/TN$T;

    move-result-object v1

    invoke-interface {v1}, Lcom/txznet/comm/ui/TN$T;->T3()V

    goto :goto_0
.end method
