.class final Lcom/baidu/voicerecognition/android/DebugControl;
.super Ljava/lang/Object;
.source "DebugControl.java"


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_EXPORT_DIRECTORY:Ljava/lang/String;

.field static final DEBUG_EXPORT_DIRECTORY_BEFORE_COMPRESS:Ljava/lang/String; = "SrcLib"

.field public static final DEBUG_EXPORT_DIRECTORY_LIB:Ljava/lang/String; = "CompressLib"

.field static final DEFAULT_TIME_OUT_IN_MS:I = 0x5265c00

.field static final DEFAULT_USER_DATA_FILE_SIZE:I = 0x1000

.field static final EXPORT_RECORDE_VOICE:Z = false

.field static final EXPORT_RECORDE_VOICE_SEGMENT:Z = false

.field static final EXPORT_UPLOADDATA_TO_SDCARD:Z = false

.field static final IS_PRINT_ERROR_SN:Z = false

.field static final IS_SUPPORT_NETWORK_PACKAGE_DEBUG:Z = false

.field static final IS_SUPPORT_PERFORMANCE:Z = false

.field static final IS_USER_DATA_PARAMETER_CHANGABLE:Z = false

.field static final RECORDE_VOICE_FILENAME:Ljava/lang/String; = "OriginalVoice.pcm"

.field static final RECORD_ERROR_SN_FINLENAME:Ljava/lang/String; = "ErrorSn.csv"

.field static final RECORD_VOICE_SAMPLERATE_FILENAME:Ljava/lang/String; = "pcmsamplerate.txt"

.field static sConnectTimeout:I

.field static sMaxUserDataSize:I

.field static sNetworkPackSize:I

.field static sUserDataServerUrl:Ljava/lang/String;

.field static sUserDataTimeOutInMilliSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/BDVRDebug"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/voicerecognition/android/DebugControl;->DEBUG_EXPORT_DIRECTORY:Ljava/lang/String;

    sput v2, Lcom/baidu/voicerecognition/android/DebugControl;->sNetworkPackSize:I

    sput v2, Lcom/baidu/voicerecognition/android/DebugControl;->sConnectTimeout:I

    const/16 v0, 0x1000

    sput v0, Lcom/baidu/voicerecognition/android/DebugControl;->sMaxUserDataSize:I

    const v0, 0x5265c00

    sput v0, Lcom/baidu/voicerecognition/android/DebugControl;->sUserDataTimeOutInMilliSeconds:I

    const-string v0, "http://10.65.45.215:8002/echo.fcgi"

    sput-object v0, Lcom/baidu/voicerecognition/android/DebugControl;->sUserDataServerUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
