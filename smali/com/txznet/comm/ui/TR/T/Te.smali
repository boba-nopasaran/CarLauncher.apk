.class public Lcom/txznet/comm/ui/TR/T/Te;
.super Lcom/txznet/comm/ui/TR/T/TQ;
.source "Proguard"


# instance fields
.field public T:Lcom/TN/T/Ty/T$T;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lcom/TN/T/Ty/T$T;

    invoke-direct {v1}, Lcom/TN/T/Ty/T$T;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p1}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strName"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->T3:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strCode"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->T2:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strUrl"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TN:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strCurrentPrice"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->Te:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strChangeAmount"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->Tw:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strChangeRate"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->Ty:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strHighestPrice"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->Tn:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strLowestPrice"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TG:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strTradingVolume"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TR:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strYestodayClosePrice"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TW:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strTodayOpenPrice"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/comm/ui/TR/T/Te;->T:Lcom/TN/T/Ty/T$T;

    const-string v1, "strUpdateTime"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/TN/T/Ty/T$T;->TB:Ljava/lang/String;

    return-void
.end method
