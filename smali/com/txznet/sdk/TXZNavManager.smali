.class public Lcom/txznet/sdk/TXZNavManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZNavManager$8;,
        Lcom/txznet/sdk/TXZNavManager$CallBack;,
        Lcom/txznet/sdk/TXZNavManager$GetTxzNaviInfoListener;,
        Lcom/txznet/sdk/TXZNavManager$TxzNavParam;,
        Lcom/txznet/sdk/TXZNavManager$NavToolType;,
        Lcom/txznet/sdk/TXZNavManager$NavTool;,
        Lcom/txznet/sdk/TXZNavManager$NavStatusListener;,
        Lcom/txznet/sdk/TXZNavManager$NavToolStatusListener;
    }
.end annotation


# static fields
.field private static TB:Lcom/txznet/sdk/TXZNavManager;


# instance fields
.field T:Z

.field T2:Z

.field T3:Z

.field private T7:Z

.field TG:Ljava/lang/Boolean;

.field TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

.field TN:Z

.field private TO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/TXZNavManager$NavStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private TP:Z

.field TR:Ljava/lang/String;

.field TW:Ljava/lang/Boolean;

.field Te:Z

.field Tn:Ljava/lang/Boolean;

.field private To:Lcom/txznet/sdk/bean/NaviInfo;

.field private Tr:Ljava/lang/Object;

.field Tw:Ljava/lang/Boolean;

.field Ty:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZNavManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZNavManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZNavManager;->TB:Lcom/txznet/sdk/TXZNavManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->TP:Z

    iput-object v2, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->T7:Z

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->T3:Z

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->T2:Z

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->TN:Z

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->Te:Z

    iput-object v2, p0, Lcom/txznet/sdk/TXZNavManager;->TG:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZNavManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    return-object v0
.end method

.method static T(Lcom/txznet/sdk/TXZNavManager$NavToolType;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget-object v1, Lcom/txznet/sdk/TXZNavManager$8;->T:[I

    invoke-virtual {p0}, Lcom/txznet/sdk/TXZNavManager$NavToolType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "BAIDU_MAP"

    goto :goto_0

    :pswitch_1
    const-string v0, "BAIDU_NAV"

    goto :goto_0

    :pswitch_2
    const-string v0, "BAIDU_NAV_HD"

    goto :goto_0

    :pswitch_3
    const-string v0, "GAODE_MAP"

    goto :goto_0

    :pswitch_4
    const-string v0, "GAODE_MAP_CAR"

    goto :goto_0

    :pswitch_5
    const-string v0, "GAODE_NAV"

    goto :goto_0

    :pswitch_6
    const-string v0, "KAILIDE_NAV"

    goto :goto_0

    :pswitch_7
    const-string v0, "TXZ"

    goto :goto_0

    :pswitch_8
    const-string v0, "MX_NAV"

    goto :goto_0

    :pswitch_9
    const-string v0, "QIHOO_NAV"

    goto :goto_0

    :pswitch_a
    const-string v0, "TX_NAV"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZNavManager;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/txznet/sdk/TXZNavManager;->T([B)V

    return-void
.end method

.method private T([B)V
    .locals 9

    if-nez p1, :cond_0

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    new-instance v7, Lcom/txznet/sdk/bean/NaviInfo;

    invoke-direct {v7}, Lcom/txznet/sdk/bean/NaviInfo;-><init>()V

    iput-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    if-nez v7, :cond_1

    new-instance v7, Lcom/txznet/sdk/bean/NaviInfo;

    invoke-direct {v7}, Lcom/txznet/sdk/bean/NaviInfo;-><init>()V

    iput-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CameraDistance"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCameraDistance(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CameraType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCameraType(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurLink"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrentLink(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurPoint"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrentPoint(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurStep"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrentStep(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurStepRetainDistance"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrStepRemainDistance(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurStepRetainTime"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrentStepRemainTime(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "Direction"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setDirection(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "IconType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setIconType(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "LimitSpeed"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setLimitSpeed(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "NaviType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setNaviType(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "PathRetainDistance"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setPathRemainDistance(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "PathRetainTime"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setPathRemainTime(I)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "ServiceAreaDistance"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setServiceAreaDistance(I)V

    const-string v7, "true"

    const-string v8, "HasCameraCoord"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "CameraCoordLatitude"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v7, "CameraCoordLongitude"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7}, Lcom/txznet/sdk/bean/NaviInfo;->getCameraCoord()Lcom/txznet/sdk/bean/NaviLatLng;

    move-result-object v7

    if-nez v7, :cond_4

    new-instance v6, Lcom/txznet/sdk/bean/NaviLatLng;

    invoke-direct {v6}, Lcom/txznet/sdk/bean/NaviLatLng;-><init>()V

    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7, v6}, Lcom/txznet/sdk/bean/NaviInfo;->setCameraCoord(Lcom/txznet/sdk/bean/NaviLatLng;)V

    :goto_1
    invoke-virtual {v6, v2, v3}, Lcom/txznet/sdk/bean/NaviLatLng;->setLatitude(D)V

    invoke-virtual {v6, v4, v5}, Lcom/txznet/sdk/bean/NaviLatLng;->setLongitude(D)V

    :cond_2
    const-string v7, "true"

    const-string v8, "HasCoord"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "CoordLatitude"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v7, "CoordLongitude"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7}, Lcom/txznet/sdk/bean/NaviInfo;->getCoord()Lcom/txznet/sdk/bean/NaviLatLng;

    move-result-object v7

    if-nez v7, :cond_5

    new-instance v6, Lcom/txznet/sdk/bean/NaviLatLng;

    invoke-direct {v6}, Lcom/txznet/sdk/bean/NaviLatLng;-><init>()V

    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7, v6}, Lcom/txznet/sdk/bean/NaviInfo;->setCoord(Lcom/txznet/sdk/bean/NaviLatLng;)V

    :goto_2
    invoke-virtual {v6, v2, v3}, Lcom/txznet/sdk/bean/NaviLatLng;->setLatitude(D)V

    invoke-virtual {v6, v4, v5}, Lcom/txznet/sdk/bean/NaviLatLng;->setLongitude(D)V

    :cond_3
    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "CurrentRoadName"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setCurrentRoadName(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    const-string v7, "NextRoadName"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/txznet/sdk/bean/NaviInfo;->setNextRoadName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7}, Lcom/txznet/sdk/bean/NaviInfo;->getCameraCoord()Lcom/txznet/sdk/bean/NaviLatLng;

    move-result-object v6

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    invoke-virtual {v7}, Lcom/txznet/sdk/bean/NaviInfo;->getCoord()Lcom/txznet/sdk/bean/NaviLatLng;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_2
.end method

.method static synthetic T2(Lcom/txznet/sdk/TXZNavManager;)Lcom/txznet/sdk/bean/NaviInfo;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->To:Lcom/txznet/sdk/bean/NaviInfo;

    return-object v0
.end method

.method private T2()V
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/txznet/sdk/TXZNavManager$7;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZNavManager$7;-><init>(Lcom/txznet/sdk/TXZNavManager;)V

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavStatusListener(Lcom/txznet/sdk/TXZNavManager$NavStatusListener;)V

    :cond_0
    return-void
.end method

.method static synthetic T3(Lcom/txznet/sdk/TXZNavManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TO:Ljava/util/List;

    return-object v0
.end method

.method private T3()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "status.nav."

    new-instance v1, Lcom/txznet/sdk/TXZNavManager$3;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZNavManager$3;-><init>(Lcom/txznet/sdk/TXZNavManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.setStatusListener"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZNavManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZNavManager;->TB:Lcom/txznet/sdk/TXZNavManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 4

    iget-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->TP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    check-cast v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->T:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->Te:Z

    iget-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->T3:Z

    iget-boolean v2, p0, Lcom/txznet/sdk/TXZNavManager;->T2:Z

    iget-boolean v3, p0, Lcom/txznet/sdk/TXZNavManager;->TN:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/txznet/sdk/TXZNavManager;->enableAutoAMapCmd(ZZZZ)V

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tw:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->enableWakeupNavCmds(Z)V

    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tn:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->enableWakeupExitNav(Z)V

    :cond_3
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Ty:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Ty:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->exitInteractiveWhenBackPoi(Z)V

    :cond_4
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TG:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->forceRegsiterMapOrder(Z)V

    :cond_5
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TR:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavCldPackageName(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TW:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TW:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->enableSavePlanAfterPlan(Z)V

    :cond_7
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->T7:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/txznet/sdk/TXZNavManager;->T3()V

    :cond_8
    invoke-direct {p0}, Lcom/txznet/sdk/TXZNavManager;->T2()V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    instance-of v0, v0, Lcom/txznet/sdk/TXZNavManager$NavTool;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/sdk/TXZNavManager$NavTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavTool;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    instance-of v0, v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    goto/16 :goto_0
.end method

.method public clearCompanyLocation()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.clearCompanyLocation"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public clearHomeLocation()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.clearHomeLocation"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public enableAutoAMapCmd(ZZZZ)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->T:Z

    iput-boolean p1, p0, Lcom/txznet/sdk/TXZNavManager;->Te:Z

    iput-boolean p2, p0, Lcom/txznet/sdk/TXZNavManager;->T3:Z

    iput-boolean p3, p0, Lcom/txznet/sdk/TXZNavManager;->T2:Z

    iput-boolean p4, p0, Lcom/txznet/sdk/TXZNavManager;->TN:Z

    :try_start_0
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "enableCmd"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "enableTraffic"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "enable3D"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "enableDirect"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.nav.app.enablecmd"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public enableSavePlanAfterPlan(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TW:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.app.savePlan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/txznet/sdk/TXZNavManager;->TW:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public enableWakeupExitNav(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tn:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.app.enableWakeupExit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public enableWakeupNavCmds(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Tw:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.app.enableWakeupNav"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public enterNav()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.enterNav"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public exitInteractiveWhenBackPoi(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->Ty:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.selector.exitBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public exitNav()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.exitNav"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public flingPager(I)V
    .locals 5

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.selector.selection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public forceRegsiterMapOrder(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TG:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.app.forceRegister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public getCompanyLocation()Lcom/txznet/sdk/bean/Poi;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "txz.nav.getCompanyLocation"

    invoke-virtual {v2, v3, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/txznet/sdk/bean/Poi;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    move-result-object v1

    goto :goto_0
.end method

.method public getHomeLocation()Lcom/txznet/sdk/bean/Poi;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "txz.nav.getHomeLocation"

    invoke-virtual {v2, v3, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/txznet/sdk/bean/Poi;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/bean/Poi;

    move-result-object v1

    goto :goto_0
.end method

.method public isInNav()Z
    .locals 4

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "txz.nav.isInNav"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public navCompany()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.navCompany"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public navHome()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.navHome"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public navToLoc(Lcom/txznet/sdk/bean/Poi;)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lat"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getLat()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lng"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getLng()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "city"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "geo"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->getGeoinfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.nav.navTo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public navToLocWithHint(Ljava/lang/String;Ljava/lang/String;Lcom/txznet/sdk/bean/Poi;)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tts"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lat"

    invoke-virtual {p3}, Lcom/txznet/sdk/bean/Poi;->getLat()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lng"

    invoke-virtual {p3}, Lcom/txznet/sdk/bean/Poi;->getLng()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "city"

    invoke-virtual {p3}, Lcom/txznet/sdk/bean/Poi;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {p3}, Lcom/txznet/sdk/bean/Poi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "geo"

    invoke-virtual {p3}, Lcom/txznet/sdk/bean/Poi;->getGeoinfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.nav.navToLocWithHint"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCompanyLocation(Lcom/txznet/sdk/bean/Poi;)V
    .locals 5

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.setCompanyLocation"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setCustomParamsForTxzNavi(Lcom/txznet/sdk/TXZNavManager$TxzNavParam;)V
    .locals 10

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Lcom/txznet/sdk/TXZNavManager$5;

    invoke-direct {v5, p0}, Lcom/txznet/sdk/TXZNavManager$5;-><init>(Lcom/txznet/sdk/TXZNavManager;)V

    invoke-virtual {p1, v5}, Lcom/txznet/sdk/TXZNavManager$TxzNavParam;->setNaviToolListener(Lcom/txznet/sdk/TXZNavManager$TxzNavParam$TxzNaviTool;)V

    const-string v5, "tool.nav.custom."

    new-instance v6, Lcom/txznet/sdk/TXZNavManager$6;

    invoke-direct {v6, p0, p1}, Lcom/txznet/sdk/TXZNavManager$6;-><init>(Lcom/txznet/sdk/TXZNavManager;Lcom/txznet/sdk/TXZNavManager$TxzNavParam;)V

    invoke-static {v5, v6}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    iget-boolean v1, p1, Lcom/txznet/sdk/TXZNavManager$TxzNavParam;->isNeedNaviInfo:Z

    iget-boolean v0, p1, Lcom/txznet/sdk/TXZNavManager$TxzNavParam;->mIsSupport3D:Z

    const-string v4, "nav"

    iget-object v3, p1, Lcom/txznet/sdk/TXZNavManager$TxzNavParam;->mDisplayType:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    sget-object v5, Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;->TYPE_HUD:Lcom/txznet/sdk/TXZNavManager$TxzNavParam$Navi_Display;

    if-ne v3, v5, :cond_1

    const-string v4, "hud"

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "needNaviInfo"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "nav_type"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "is3D"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.nav"

    const-string v7, "txz.nav.initParams"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setHomeLocation(Lcom/txznet/sdk/bean/Poi;)V
    .locals 5

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.setHomeLocation"

    invoke-virtual {p1}, Lcom/txznet/sdk/bean/Poi;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setNavCldPackageName(Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lcom/txznet/sdk/TXZNavManager;->TR:Ljava/lang/String;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.app.cldpkn"

    iget-object v3, p0, Lcom/txznet/sdk/TXZNavManager;->TR:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setNavStatusListener(Lcom/txznet/sdk/TXZNavManager$NavStatusListener;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TO:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TO:Ljava/util/List;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->T7:Z

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/txznet/sdk/TXZNavManager;->T3()V

    goto :goto_0
.end method

.method public setNavTool(Lcom/txznet/sdk/TXZNavManager$NavTool;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZNavManager;->TP:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    if-nez p1, :cond_0

    check-cast v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/txznet/sdk/TXZNavManager$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZNavManager$1;-><init>(Lcom/txznet/sdk/TXZNavManager;)V

    invoke-interface {p1, v1}, Lcom/txznet/sdk/TXZNavManager$NavTool;->setStatusListener(Lcom/txznet/sdk/TXZNavManager$NavToolStatusListener;)V

    const-string v1, "tool.nav."

    new-instance v2, Lcom/txznet/sdk/TXZNavManager$2;

    invoke-direct {v2, p0}, Lcom/txznet/sdk/TXZNavManager$2;-><init>(Lcom/txznet/sdk/TXZNavManager;)V

    invoke-static {v1, v2}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.nav.settool"

    invoke-virtual {v1, v2, v3, v0, v0}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZNavManager;->TP:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZNavManager;->Tr:Ljava/lang/Object;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.settool"

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.settool"

    invoke-static {p1}, Lcom/txznet/sdk/TXZNavManager;->T(Lcom/txznet/sdk/TXZNavManager$NavToolType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setNavTool(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "com.baidu.BaiduMap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "com.baidu.navi"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "com.baidu.navi.hd"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_BAIDU_NAV_HD:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "com.autonavi.minimap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_MAP:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v2, "com.autonavi.amapauto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_MAP_CAR:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    goto :goto_0

    :cond_6
    const-string v2, "com.autonavi.xmgd.navigator"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_GAODE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    goto :goto_0

    :cond_7
    const-string v2, "com.txznet.nav"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_TXZ:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    goto :goto_0

    :cond_8
    const-string v2, "com.mxnavi.mxnavi"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_MX_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    goto :goto_0

    :cond_9
    const-string v2, "^cld\\.navi\\.\\S+\\.mainframe$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/txznet/sdk/TXZNavManager$NavToolType;->NAV_TOOL_KAILIDE_NAV:Lcom/txznet/sdk/TXZNavManager$NavToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZNavManager;->setNavTool(Lcom/txznet/sdk/TXZNavManager$NavToolType;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method public setNavVoiceCmdCallback(Lcom/txznet/sdk/TXZNavManager$CallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-direct {v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;->unRegisterVoiceCmds()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZNavManager;->TJ:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/bean/NavVoicePlugin;->setNavVoiceCmdCallback(Lcom/txznet/sdk/TXZNavManager$CallBack;)V

    invoke-direct {p0}, Lcom/txznet/sdk/TXZNavManager;->T2()V

    goto :goto_0
.end method

.method public setNeedLocalNavNaviInfo(ZLcom/txznet/sdk/TXZNavManager$GetTxzNaviInfoListener;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "tool.nav."

    new-instance v1, Lcom/txznet/sdk/TXZNavManager$4;

    invoke-direct {v1, p0, p2}, Lcom/txznet/sdk/TXZNavManager$4;-><init>(Lcom/txznet/sdk/TXZNavManager;Lcom/txznet/sdk/TXZNavManager$GetTxzNaviInfoListener;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.nav"

    const-string v2, "txz.nav.enableNaviInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method
