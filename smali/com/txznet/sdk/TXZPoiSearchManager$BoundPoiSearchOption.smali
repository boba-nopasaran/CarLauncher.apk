.class public Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;
.super Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZPoiSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundPoiSearchOption"
.end annotation


# instance fields
.field protected T:D

.field protected T2:D

.field protected T3:D

.field protected TN:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLat()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->T3:D

    return-wide v0
.end method

.method public getMaxLng()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->TN:D

    return-wide v0
.end method

.method public getMinLat()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->T:D

    return-wide v0
.end method

.method public getMinLng()D
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->T2:D

    return-wide v0
.end method

.method public setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    return-object p0
.end method

.method public bridge synthetic setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->setCity(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    return-object p0
.end method

.method public bridge synthetic setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->setKeywords(Ljava/lang/String;)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public setMaxLat(D)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;
    .locals 1

    iput-wide p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->T3:D

    return-object p0
.end method

.method public setMaxLng(D)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;
    .locals 1

    iput-wide p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->TN:D

    return-object p0
.end method

.method public setMinLat(D)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;
    .locals 1

    iput-wide p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->T:D

    return-object p0
.end method

.method public setMinLng(D)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;
    .locals 1

    iput-wide p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->T2:D

    return-object p0
.end method

.method public setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;
    .locals 0

    invoke-super {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;->setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;

    return-object p0
.end method

.method public bridge synthetic setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;->setNum(I)Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;

    move-result-object v0

    return-object v0
.end method
