.class public Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
.super Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPoiSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NearbyPoiSearchOption"
.end annotation


# instance fields
.field protected T:D

.field protected T2:I

.field protected T3:D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T2:I

    return-void
.end method


# virtual methods
.method public getCenterLat()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T:D

    return-wide v0
.end method

.method public getCenterLng()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T3:D

    return-wide v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T2:I

    return v0
.end method

.method public setCenterLat(D)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 1

    iput-wide p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T:D

    return-object p0
.end method

.method public setCenterLng(D)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 1

    iput-wide p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T3:D

    return-object p0
.end method

.method public bridge synthetic setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    return-object p0
.end method

.method public bridge synthetic setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    return-object p0
.end method

.method public bridge synthetic setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    return-object p0
.end method

.method public bridge synthetic setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setRadius(I)Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->T2:I

    return-object p0
.end method

.method public setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    return-object p0
.end method

.method public bridge synthetic setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;->setTimeout(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    move-result-object v0

    return-object v0
.end method
