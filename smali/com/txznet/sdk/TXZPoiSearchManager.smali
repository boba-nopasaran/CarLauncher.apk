.class public Lcom/txznet/sdk/TXZPoiSearchManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZPoiSearchManager$PoiDisplayStyle;,
        Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;,
        Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchTool;,
        Lcom/txznet/sdk/TXZPoiSearchManager$BoundPoiSearchOption;,
        Lcom/txznet/sdk/TXZPoiSearchManager$NearbyPoiSearchOption;,
        Lcom/txznet/sdk/TXZPoiSearchManager$CityPoiSearchOption;,
        Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchOption;,
        Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchInfo;,
        Lcom/txznet/sdk/TXZPoiSearchManager$SearchReq;,
        Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchResultListener;,
        Lcom/txznet/sdk/TXZPoiSearchManager$SearchPoiSuggestion;
    }
.end annotation


# static fields
.field public static final DEFAULT_NEARBY_RADIUS:I = 0xbb8

.field public static final DEFAULT_SEARCH_AMOUNT:I = 0xa

.field public static final DEFAULT_SEARCH_TIMEOUT:I = 0x2710

.field public static final ERROR_CODE_EMPTY:I = 0x2

.field public static final ERROR_CODE_TIMEOUT:I = 0x3

.field public static final ERROR_CODE_UNKNOW:I = 0x1

.field private static T:Lcom/txznet/sdk/TXZPoiSearchManager;


# instance fields
.field private T2:Ljava/lang/Object;

.field private T3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZPoiSearchManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZPoiSearchManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZPoiSearchManager;->T:Lcom/txznet/sdk/TXZPoiSearchManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T3:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T2:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZPoiSearchManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZPoiSearchManager;->T:Lcom/txznet/sdk/TXZPoiSearchManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T3:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T2:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZPoiSearchManager;->setPoiSearchTool(Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T2:Ljava/lang/Object;

    instance-of v0, v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T2:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZPoiSearchManager;->setPoiSearchTool(Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T2:Ljava/lang/Object;

    instance-of v0, v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchTool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T2:Ljava/lang/Object;

    check-cast v0, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZPoiSearchManager;->T(Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchTool;)V

    goto :goto_0
.end method

.method T(Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchTool;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T3:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T2:Ljava/lang/Object;

    return-void
.end method

.method public setPoiSearchTool(Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T3:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZPoiSearchManager;->T2:Ljava/lang/Object;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.poi.cleartool"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.poi.setInnerTool"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZPoiSearchManager$PoiSearchToolType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method
