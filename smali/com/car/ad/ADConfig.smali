.class public Lcom/car/ad/ADConfig;
.super Ljava/lang/Object;
.source "ADConfig.java"


# static fields
.field public static final CLIENT_MODEL_APP_ANDROID:Ljava/lang/String; = "carassist_android"

.field public static final CLIENT_MODEL_APP_IOS:Ljava/lang/String; = "carassist_ios"

.field static GETAD_SERVER_URL:Ljava/lang/String; = null

.field static final KEY_ADID:Ljava/lang/String; = "adid"

.field static final KEY_ADLINK:Ljava/lang/String; = "linkurl"

.field static final KEY_ADURL:Ljava/lang/String; = "adurl"

.field static final KEY_COMMON_CITY:Ljava/lang/String; = "city"

.field static final KEY_COMMON_CLIENTID:Ljava/lang/String; = "clientid"

.field static final KEY_COMMON_ERRCODE:Ljava/lang/String; = "ret"

.field static final KEY_COMMON_ERRMSG:Ljava/lang/String; = "err"

.field static final KEY_COMMON_MODEL:Ljava/lang/String; = "model"

.field static final KEY_COMMON_TOKEN:Ljava/lang/String; = "token"

.field static final KEY_EXPIREDTIME:Ljava/lang/String; = "endtime"

.field static final KEY_LIST:Ljava/lang/String; = "list"

.field static final KEY_POSITION:Ljava/lang/String; = "position"

.field static final KEY_PROP:Ljava/lang/String; = "prop"

.field static final KEY_PROP_DURATION:Ljava/lang/String; = "duration"

.field static final KEY_PROP_SKIP:Ljava/lang/String; = "skip"

.field static final KEY_REPORT_ADID:Ljava/lang/String; = "adid"

.field static final KEY_REPORT_CLICKED:Ljava/lang/String; = "clicked"

.field static final KEY_REPORT_PLAYTIME:Ljava/lang/String; = "playtime"

.field static final KEY_SINGLEPLAYCOUNT:Ljava/lang/String; = "singleplaycount"

.field public static final POSITION_APP_CARLIFE:Ljava/lang/String; = "carassist_carlife"

.field public static final POSITION_APP_SPLASH:Ljava/lang/String; = "carassist_splash"

.field public static final POSITION_MIRROR_POWERON:Ljava/lang/String; = "mirror_poweron"

.field public static final POSITION_MIRROR_WAKEUP:Ljava/lang/String; = "mirror_wakeup"

.field static REPORT_SERVER_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "https://api.carassist.cn/ad/report?"

    sput-object v0, Lcom/car/ad/ADConfig;->REPORT_SERVER_URL:Ljava/lang/String;

    const-string v0, "https://api.carassist.cn/ad/get?"

    sput-object v0, Lcom/car/ad/ADConfig;->GETAD_SERVER_URL:Ljava/lang/String;

    sget v0, Lcom/car/common/OEM;->ID:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "https://yun.tsp189.cn/ad/report?"

    sput-object v0, Lcom/car/ad/ADConfig;->REPORT_SERVER_URL:Ljava/lang/String;

    const-string v0, "https://yun.tsp189.cn/ad/get?"

    sput-object v0, Lcom/car/ad/ADConfig;->GETAD_SERVER_URL:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
