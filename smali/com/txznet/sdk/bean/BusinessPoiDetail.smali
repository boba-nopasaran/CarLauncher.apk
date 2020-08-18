.class public Lcom/txznet/sdk/bean/BusinessPoiDetail;
.super Lcom/txznet/sdk/bean/PoiDetail;
.source "Proguard"


# instance fields
.field T:Ljava/lang/String;

.field T2:[Ljava/lang/String;

.field T3:Ljava/lang/String;

.field TB:D

.field TG:Z

.field TJ:I

.field TN:[Ljava/lang/String;

.field TP:Z

.field TR:I

.field TW:Z

.field Te:D

.field Tn:D

.field Tr:Z

.field Tw:D

.field Ty:D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/txznet/sdk/bean/PoiDetail;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setPoiType(I)Lcom/txznet/sdk/bean/Poi;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 2

    new-instance v1, Lcom/txznet/sdk/bean/BusinessPoiDetail;

    invoke-direct {v1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;-><init>()V

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T(Lcom/txznet/comm/TN/T;)V

    return-object v1
.end method


# virtual methods
.method protected T()Lcom/txznet/comm/TN/T;
    .locals 4

    invoke-super {p0}, Lcom/txznet/sdk/bean/PoiDetail;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    const-string v1, "avgPrice"

    iget-wide v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TB:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "branchName"

    iget-object v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "categories"

    iget-object v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TN:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "dealCount"

    iget v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "hasCoupon"

    iget-boolean v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TW:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "hasDeal"

    iget-boolean v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TG:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "hasPark"

    iget-boolean v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tr:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "hasWifi"

    iget-boolean v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TP:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "photoUrl"

    iget-object v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "regions"

    iget-object v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T2:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "reviewCount"

    iget v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TJ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "score"

    iget-wide v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Te:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "scoreDecoration"

    iget-wide v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Ty:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "scoreProduct"

    iget-wide v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tw:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "scoreService"

    iget-wide v2, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tn:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    return-object v0
.end method

.method protected T(Lcom/txznet/comm/TN/T;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/txznet/sdk/bean/PoiDetail;->T(Lcom/txznet/comm/TN/T;)V

    const-string v0, "avgPrice"

    const-class v1, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TB:D

    const-string v0, "branchName"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T:Ljava/lang/String;

    const-string v0, "categories"

    const-class v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TN:[Ljava/lang/String;

    const-string v0, "dealCount"

    const-class v1, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TR:I

    const-string v0, "hasCoupon"

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TW:Z

    const-string v0, "hasDeal"

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TG:Z

    const-string v0, "hasPark"

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tr:Z

    const-string v0, "hasWifi"

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TP:Z

    const-string v0, "photoUrl"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T3:Ljava/lang/String;

    const-string v0, "regions"

    const-class v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T2:[Ljava/lang/String;

    const-string v0, "reviewCount"

    const-class v1, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TJ:I

    const-string v0, "score"

    const-class v1, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Te:D

    const-string v0, "scoreDecoration"

    const-class v1, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Ty:D

    const-string v0, "scoreProduct"

    const-class v1, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tw:D

    const-string v0, "scoreService"

    const-class v1, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tn:D

    return-void
.end method

.method public getAvgPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TB:D

    return-wide v0
.end method

.method public getBranchName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TN:[Ljava/lang/String;

    return-object v0
.end method

.method public getDealCount()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TR:I

    return v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T3:Ljava/lang/String;

    return-object v0
.end method

.method public getRegions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T2:[Ljava/lang/String;

    return-object v0
.end method

.method public getReviewCount()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TJ:I

    return v0
.end method

.method public getScore()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Te:D

    return-wide v0
.end method

.method public getScoreDecoration()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Ty:D

    return-wide v0
.end method

.method public getScoreProduct()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tw:D

    return-wide v0
.end method

.method public getScoreService()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tn:D

    return-wide v0
.end method

.method public isHasCoupon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TW:Z

    return v0
.end method

.method public isHasDeal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TG:Z

    return v0
.end method

.method public isHasPark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TP:Z

    return v0
.end method

.method public isHasWifi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TP:Z

    return v0
.end method

.method public setAlias([Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T0:[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setAlias([Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setAlias([Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAlias([Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setAlias([Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setAvgPrice(F)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TB:D

    return-object p0
.end method

.method public setBranchName(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T:Ljava/lang/String;

    return-object p0
.end method

.method public setCategories([Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TN:[Ljava/lang/String;

    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/sdk/bean/PoiDetail;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;

    return-object p0
.end method

.method public bridge synthetic setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setDealCount(I)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TR:I

    return-object p0
.end method

.method public setDistance(I)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->To:I

    return-object p0
.end method

.method public bridge synthetic setDistance(I)Lcom/txznet/sdk/bean/Poi;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setDistance(I)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDistance(I)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setDistance(I)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/sdk/bean/PoiDetail;->setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;

    return-object p0
.end method

.method public bridge synthetic setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setGeoinfo(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setHasCoupon(Z)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TW:Z

    return-object p0
.end method

.method public setHasDeal(Z)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TG:Z

    return-object p0
.end method

.method public setHasPark(Z)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tr:Z

    return-object p0
.end method

.method public setHasWifi(Z)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TP:Z

    return-object p0
.end method

.method public setLat(D)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/txznet/sdk/bean/PoiDetail;->setLat(D)Lcom/txznet/sdk/bean/PoiDetail;

    return-object p0
.end method

.method public bridge synthetic setLat(D)Lcom/txznet/sdk/bean/Poi;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setLat(D)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLat(D)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setLat(D)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setLng(D)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/txznet/sdk/bean/PoiDetail;->setLng(D)Lcom/txznet/sdk/bean/PoiDetail;

    return-object p0
.end method

.method public bridge synthetic setLng(D)Lcom/txznet/sdk/bean/Poi;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setLng(D)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLng(D)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setLng(D)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/sdk/bean/PoiDetail;->setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;

    return-object p0
.end method

.method public bridge synthetic setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setName(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setPhotoUrl(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T3:Ljava/lang/String;

    return-object p0
.end method

.method public setPostcode(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T1:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPostcode(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setPostcode(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setProvince(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tu:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setProvince(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setProvince(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setRegions([Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T2:[Ljava/lang/String;

    return-object p0
.end method

.method public setReviewCount(I)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->TJ:I

    return-object p0
.end method

.method public setScore(F)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Te:D

    return-object p0
.end method

.method public setScoreDecoration(F)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Ty:D

    return-object p0
.end method

.method public setScoreProduct(F)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tw:D

    return-object p0
.end method

.method public setScoreService(F)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tn:D

    return-object p0
.end method

.method public setSourceType(I)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/sdk/bean/PoiDetail;->setSourceType(I)Lcom/txznet/sdk/bean/PoiDetail;

    return-object p0
.end method

.method public bridge synthetic setSourceType(I)Lcom/txznet/sdk/bean/Poi;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setSourceType(I)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSourceType(I)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setSourceType(I)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setTelephone(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tf:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setTelephone(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setTelephone(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public setWebsite(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/BusinessPoiDetail;->Tg:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setWebsite(Ljava/lang/String;)Lcom/txznet/sdk/bean/PoiDetail;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->setWebsite(Ljava/lang/String;)Lcom/txznet/sdk/bean/BusinessPoiDetail;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/BusinessPoiDetail;->T()Lcom/txznet/comm/TN/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
