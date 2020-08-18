.class public Lcom/baidu/voicerecognition/android/LibFactory;
.super Ljava/lang/Object;
.source "LibFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/voicerecognition/android/LibFactory$JNI;
    }
.end annotation


# static fields
.field public static final ERROR_UNKNOWN:I = -0x64

.field public static final FORMAT_ADPCM_8K:I = 0x2

.field public static final FORMAT_AMR_16K:I = 0x7

.field public static final FORMAT_BV32_16K:I = 0x4

.field public static final FORMAT_BV32_8K:I = 0x0

.field public static final FORMAT_FEA_16K_2_3_30:I = 0x14

.field public static final FORMAT_OPUS_16K:I = 0x44

.field public static final FORMAT_OPUS_8K:I = 0x40

.field public static final FORMAT_PCM_16K:I = 0x5

.field public static final FORMAT_PCM_8K:I = 0x1

.field public static final MEMALLOC_ERR:I = -0x6b

.field public static final PARAMRANGE_ERR:I = -0x6d

.field public static final PARAM_BITRATE_NB:I = 0x11

.field public static final PARAM_BITRATE_OPUS_16K:I = 0x14

.field public static final PARAM_BITRATE_OPUS_8K:I = 0x13

.field public static final PARAM_BITRATE_WB:I = 0x12

.field public static final PARAM_CODE_FORMAT:I = 0xe

.field public static final PARAM_ENERGY_THRESHOLD_EP:I = 0x7

.field public static final PARAM_ENERGY_THRESHOLD_SP:I = 0x6

.field public static final PARAM_MAX_SP_DURATION:I = 0x2

.field public static final PARAM_MAX_SP_PAUSE:I = 0x3

.field public static final PARAM_MAX_WAIT_DURATION:I = 0x1

.field public static final PARAM_MIN_SP_DURATION:I = 0x4

.field public static final PARAM_MODE_CMB:I = 0x15

.field public static final PARAM_NEED_COMPRESS:I = 0xc

.field public static final PARAM_NEED_VAD:I = 0xb

.field public static final PARAM_OFFSET:I = 0x8

.field public static final PARAM_SAMPLE_RATE:I = 0xd

.field public static final PARAM_SLEEP_TIMEOUT:I = 0x5

.field public static final PARAM_SPEECHIN_THRESHOLD_BIAS:I = 0xf

.field public static final PARAM_SPEECHOUT_THRESHOLD_BIAS:I = 0x10

.field public static final PARAM_SPEECH_END:I = 0x9

.field public static final PARAM_SPEECH_MODE:I = 0xa

.field public static final POINTER_ERR:I = -0x67

.field public static final SEND_TOOMORE_DATA_ONCE:I = -0x76

.field public static final STATE_ERR:I = -0x66

.field public static final SUCCESS:I = 0x0

.field public static final VAD_INIT_ERROR:I = -0x78


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/baidu/voicerecognition/android/LibFactory$JNI;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/baidu/voicerecognition/android/MFE_JNI;

    invoke-direct {v0}, Lcom/baidu/voicerecognition/android/MFE_JNI;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    new-instance v0, Lcom/baidu/voicerecognition/android/NO_JNI;

    invoke-direct {v0}, Lcom/baidu/voicerecognition/android/NO_JNI;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
