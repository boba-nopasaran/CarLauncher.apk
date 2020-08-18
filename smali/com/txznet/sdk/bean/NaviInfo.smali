.class public Lcom/txznet/sdk/bean/NaviInfo;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:Lcom/txznet/sdk/bean/NaviLatLng;

.field private T2:I

.field private T3:I

.field private T7:I

.field private TB:I

.field private TG:I

.field private TJ:I

.field private TN:Lcom/txznet/sdk/bean/NaviLatLng;

.field private TO:I

.field private TP:I

.field private TR:I

.field private TW:I

.field private Te:I

.field private Tn:I

.field private To:I

.field private Tr:Ljava/lang/String;

.field private Tw:I

.field private Ty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraCoord()Lcom/txznet/sdk/bean/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->T:Lcom/txznet/sdk/bean/NaviLatLng;

    return-object v0
.end method

.method public getCameraDistance()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->T3:I

    return v0
.end method

.method public getCameraType()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->T2:I

    return v0
.end method

.method public getCoord()Lcom/txznet/sdk/bean/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TN:Lcom/txznet/sdk/bean/NaviLatLng;

    return-object v0
.end method

.method public getCurrentLink()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->Te:I

    return v0
.end method

.method public getCurrentPoint()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tw:I

    return v0
.end method

.method public getCurrentRoadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->Ty:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStep()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tn:I

    return v0
.end method

.method public getCurrentStepRemainDistance()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TG:I

    return v0
.end method

.method public getCurrentStepRemainTime()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TR:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TW:I

    return v0
.end method

.method public getIconType()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TJ:I

    return v0
.end method

.method public getLimitSpeed()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TB:I

    return v0
.end method

.method public getNaviType()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TP:I

    return v0
.end method

.method public getNextRoadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tr:Ljava/lang/String;

    return-object v0
.end method

.method public getPathRemainDistance()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->T7:I

    return v0
.end method

.method public getPathRemainTime()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->TO:I

    return v0
.end method

.method public getServiceAreaDistance()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/NaviInfo;->To:I

    return v0
.end method

.method public setCameraCoord(Lcom/txznet/sdk/bean/NaviLatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->T:Lcom/txznet/sdk/bean/NaviLatLng;

    return-void
.end method

.method public setCameraDistance(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->T3:I

    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->T2:I

    return-void
.end method

.method public setCoord(Lcom/txznet/sdk/bean/NaviLatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TN:Lcom/txznet/sdk/bean/NaviLatLng;

    return-void
.end method

.method public setCurrStepRemainDistance(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TG:I

    return-void
.end method

.method public setCurrentLink(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->Te:I

    return-void
.end method

.method public setCurrentPoint(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tw:I

    return-void
.end method

.method public setCurrentRoadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->Ty:Ljava/lang/String;

    return-void
.end method

.method public setCurrentStep(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tn:I

    return-void
.end method

.method public setCurrentStepRemainTime(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TR:I

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TW:I

    return-void
.end method

.method public setIconType(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TJ:I

    return-void
.end method

.method public setLimitSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TB:I

    return-void
.end method

.method public setNaviType(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TP:I

    return-void
.end method

.method public setNextRoadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->Tr:Ljava/lang/String;

    return-void
.end method

.method public setPathRemainDistance(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->T7:I

    return-void
.end method

.method public setPathRemainTime(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->TO:I

    return-void
.end method

.method public setServiceAreaDistance(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/NaviInfo;->To:I

    return-void
.end method
