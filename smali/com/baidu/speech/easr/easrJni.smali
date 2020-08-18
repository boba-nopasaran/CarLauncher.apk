.class public Lcom/baidu/speech/easr/easrJni;
.super Ljava/lang/Object;
.source "easrJni.java"


# static fields
.field public static final BDEASR_AUTH_DOWNLOAD_ERROR:I = 0x5

.field public static final BDEASR_AUTH_ERROR:I = 0x6

.field public static final BDEASR_AUTH_OK:I = 0x4

.field public static final BDEASR_EXPECT_RECOG_NUM:I = 0xe

.field public static final BDEASR_IME_PUNCTUATION_ON:I = 0xf

.field public static final BDEASR_INITIAL_ERROR:I = 0x1

.field public static final BDEASR_INITIAL_OK:I = 0x0

.field public static final BDEASR_LM_RES_PATH:I = 0x6

.field public static final BDEASR_LM_SLOT_NAME:I = 0x7

.field public static final BDEASR_MAX_SPEECH_PAUSE_SEC:I = 0x4

.field public static final BDEASR_MAX_SPEECH_SEC:I = 0x3

.field public static final BDEASR_NAVI_NGRAM_SLOT_NAME:Ljava/lang/String; = "$navi_ngram_LM_LOOP_CORE"

.field public static final BDEASR_NEED_RECOGNITION:I = 0xb

.field public static final BDEASR_NEED_VAD:I = 0x9

.field public static final BDEASR_NEED_WAKEUP:I = 0xa

.field public static final BDEASR_NGRAM_SLOT_NAME:Ljava/lang/String; = "$ngram_LM_LOOP_CORE"

.field public static final BDEASR_RECOG_ERROR:I = 0xa

.field public static final BDEASR_RECOG_FAST_MODE:I = 0x0

.field public static final BDEASR_RECOG_FIND_FINAL_RESULT:I = 0x8

.field public static final BDEASR_RECOG_OK:I = 0x7

.field public static final BDEASR_RECOG_SOLONG_SPEECH:I = 0x9

.field public static final BDEASR_SAMPLE_RATE:I = 0x2

.field public static final BDEASR_SETPARAM_ERROR:I = 0x3

.field public static final BDEASR_SETPARAM_OK:I = 0x2

.field public static final BDEASR_SLOT_NAME_APP:Ljava/lang/String; = "app"

.field public static final BDEASR_SLOT_NAME_ARTIST:Ljava/lang/String; = "artist"

.field public static final BDEASR_SLOT_NAME_NAME:Ljava/lang/String; = "name"

.field public static final BDEASR_SLOT_NAME_SONG:Ljava/lang/String; = "song"

.field public static final BDEASR_SLOT_NAME_USER_COMMAND:Ljava/lang/String; = "usercommand"

.field public static final BDEASR_SUPPORT_LONGSPEECH:I = 0xd

.field public static final BDEASR_TREEID_APP:I = 0xd

.field public static final BDEASR_TREEID_CONTACTS:I = 0xe

.field public static final BDEASR_TREEID_INPUT:I = 0x9

.field public static final BDEASR_TREEID_MAP:I = 0x7

.field public static final BDEASR_TREEID_MESSAGE:I = 0xb

.field public static final BDEASR_TREEID_MUSIC:I = 0xc

.field public static final BDEASR_TREEID_PHONE:I = 0xa

.field public static final BDEASR_TREEID_PLAYER_INSTRUCTION:I = 0x13

.field public static final BDEASR_TREEID_RADIO:I = 0x14

.field public static final BDEASR_TREEID_REFUSAL:I = 0x8

.field public static final BDEASR_TREEID_SETTING:I = 0x10

.field public static final BDEASR_TREEID_TV_INSTRUCTION:I = 0x12

.field public static final BDEASR_TREEID_USER_COMMAND:I = 0x15

.field public static final BDEASR_USE_SSE4:I = 0xc

.field public static final BDEASR_USE_VADEND_CUT:I = 0x5

.field public static final BDEASR_VAD_SENTENCE_END:I = 0xd

.field public static final BDEASR_WAKEUP_ERROR:I = 0xc

.field public static final BDEASR_WAKEUP_FAST_MODE:I = 0x1

.field public static final BDEASR_WAKEUP_OK:I = 0xb

.field public static final BDEASR_WAKEUP_WORDS:I = 0x8

.field public static final slots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/speech/easr/easrJni;->slots:Ljava/util/ArrayList;

    sget-object v0, Lcom/baidu/speech/easr/easrJni;->slots:Ljava/util/ArrayList;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/speech/easr/easrJni;->slots:Ljava/util/ArrayList;

    const-string v1, "song"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/speech/easr/easrJni;->slots:Ljava/util/ArrayList;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/speech/easr/easrJni;->slots:Ljava/util/ArrayList;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/speech/easr/easrJni;->slots:Ljava/util/ArrayList;

    const-string v1, "usercommand"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v0, "bdEASRAndroid"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native bdeasrBuildSlot(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native bdeasrExit()V
.end method

.method public static native bdeasrFeedAudioData([SII)I
.end method

.method public static native bdeasrFront([SIII)I
.end method

.method public static native bdeasrGetJSONResult()Ljava/lang/String;
.end method

.method public static native bdeasrGetVolume()I
.end method

.method public static native bdeasrInitial(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native bdeasrRec()I
.end method

.method public static native bdeasrSetParam(ILcom/baidu/speech/easr/EASRParamObject;)I
.end method

.method public static native bdeasrSetSlot(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native bdeasrStartRecognition([II)I
.end method

.method public static native bdeasrStartWakeUp()I
.end method

.method public static native bdeasrStopRecognition()I
.end method

.method public static native bdeasrStopWakeUp()I
.end method
