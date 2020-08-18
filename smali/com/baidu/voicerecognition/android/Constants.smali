.class final Lcom/baidu/voicerecognition/android/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field static final DEVICE_ID_KEY:Ljava/lang/String; = "device_id"

.field static final FILE_READ_FINISH:I = -0x7fffff9c

.field static final GB2312:Ljava/lang/String; = "gb2312"

.field static final PRODUCT_ID_HAO123:I = 0x100

.field static final PRODUCT_ID_MULTIPLE:I = 0x200

.field static final PRODUCT_ID_OPEN_SDK_INPUT:I

.field static final PRODUCT_ID_OPEN_SDK_INPUT_EN_GB:I = 0x6c9

.field static final PRODUCT_ID_OPEN_SDK_INPUT_SICHUAN_HANS_CN:I = 0x72d

.field static final PRODUCT_ID_OPEN_SDK_INPUT_YUE_HANS_CN:I = 0x665

.field static final PRODUCT_ID_OPEN_SDK_SEARCH:I

.field static final PRODUCT_ID_OPEN_SDK_SEARCH_EN_GB:I = 0x6c8

.field static final PRODUCT_ID_OPEN_SDK_SEARCH_SICHUAN_HANS_CN:I = 0x72c

.field static final PRODUCT_ID_OPEN_SDK_SEARCH_YUE_HANS_CN:I = 0x664

.field static final PRODUCT_ID_QUNAER:I = 0x100

.field static final PRODUCT_ID_QUNAER_TEXT:I = 0x100

.field static final PRODUCT_ID_SINGLE:I = 0x1

.field static final PROTOCOL_VERSION_AUDIO_DA:I = 0x12e

.field static PROTOCOL_VERSION_INPUT:I = 0x0

.field static final PROTOCOL_VERSION_INPUT_NBEST:I = 0x2

.field static final PROTOCOL_VERSION_MULTIPLE:I = 0x65

.field static final PROTOCOL_VERSION_NLU:I = 0x12f

.field static final PROTOCOL_VERSION_NLU_TEXT:I = 0x130

.field static final PROTOCOL_VERSION_SINGLE:I = 0x1

.field static final PROTOCOL_VERSION_WISE:I = 0x12c

.field static final PROTOCOL_VERSION_WISE_NLU:I = 0x131

.field static final PROTOCOL_VERSION_WISE_TEXT:I = 0x12d

.field static final THREADNAME_POSTDATA:Ljava/lang/String; = "PostDataThread"

.field static final THREADNAME_SHEDULE:Ljava/lang/String; = "PostDataSheduleThread"

.field static final THREADNAME_STATISTIC_POST:Ljava/lang/String; = "PostStatisticThread"

.field static final THREADNAME_VOICERECORD:Ljava/lang/String; = "VoiceRecordThread"

.field static final TIME_STAME_MD5:Ljava/lang/String;

.field private static final TIME_STAMP:Ljava/lang/String; = "timestamp"

.field static final UTF8:Ljava/lang/String; = "utf-8"

.field static final VERSION_NAME:Ljava/lang/String; = "1.6.1.0-11793+"

.field public static debugMask:I

.field public static logLevel:I

.field public static productID:I

.field public static sInputUrl:Ljava/lang/String;

.field public static sSearchUrl:Ljava/lang/String;

.field static sUserDataServerUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x65

    const/4 v1, 0x0

    sput v2, Lcom/baidu/voicerecognition/android/Constants;->PROTOCOL_VERSION_INPUT:I

    const-string v0, "http://123.125.65.52:8002/echo.fcgi"

    sput-object v0, Lcom/baidu/voicerecognition/android/Constants;->sUserDataServerUrl:Ljava/lang/String;

    sput v1, Lcom/baidu/voicerecognition/android/Constants;->debugMask:I

    const/4 v0, 0x3

    sput v0, Lcom/baidu/voicerecognition/android/Constants;->logLevel:I

    const-string v0, "http://vop.baidu.com/echo.fcgi"

    sput-object v0, Lcom/baidu/voicerecognition/android/Constants;->sSearchUrl:Ljava/lang/String;

    const-string v0, "http://vop.baidu.com/echo.fcgi"

    sput-object v0, Lcom/baidu/voicerecognition/android/Constants;->sInputUrl:Ljava/lang/String;

    const-string v0, "timestamp"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/voicerecognition/android/Constants;->TIME_STAME_MD5:Ljava/lang/String;

    const-string v0, "bdspeech.productid.search"

    const/16 v1, 0x600

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/Config;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/baidu/voicerecognition/android/Constants;->PRODUCT_ID_OPEN_SDK_SEARCH:I

    const-string v0, "bdspeech.productid.input"

    const/16 v1, 0x601

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/Config;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/baidu/voicerecognition/android/Constants;->PRODUCT_ID_OPEN_SDK_INPUT:I

    sget v0, Lcom/baidu/voicerecognition/android/Constants;->PRODUCT_ID_OPEN_SDK_SEARCH:I

    sput v0, Lcom/baidu/voicerecognition/android/Constants;->productID:I

    const-string v0, "bdspeech.protocol.input"

    sget v1, Lcom/baidu/voicerecognition/android/Constants;->PROTOCOL_VERSION_INPUT:I

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/Config;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/baidu/voicerecognition/android/Constants;->PROTOCOL_VERSION_INPUT:I

    sget v0, Lcom/baidu/voicerecognition/android/Constants;->PROTOCOL_VERSION_INPUT:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/baidu/voicerecognition/android/Constants;->PROTOCOL_VERSION_INPUT:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PROTOCOL_VERSION_INPUT must be 2 or 101"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "bdspeech.server.url"

    sget-object v1, Lcom/baidu/voicerecognition/android/Constants;->sSearchUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/Config;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/voicerecognition/android/Constants;->sSearchUrl:Ljava/lang/String;

    const-string v0, "bdspeech.server.url"

    sget-object v1, Lcom/baidu/voicerecognition/android/Constants;->sInputUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/voicerecognition/android/Config;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/voicerecognition/android/Constants;->sInputUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
