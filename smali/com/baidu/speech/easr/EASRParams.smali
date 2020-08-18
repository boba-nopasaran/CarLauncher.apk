.class public Lcom/baidu/speech/easr/EASRParams;
.super Ljava/lang/Object;
.source "EASRParams.java"


# static fields
.field public static final PROP_APP:I = 0x2713

.field public static final PROP_ASSISTANT:I = 0x274a

.field public static final PROP_CAR:I = 0x2745

.field public static final PROP_CATERING:I = 0x2746

.field public static final PROP_COMMAND:I = 0x186b5

.field public static final PROP_CONTACTS:I = 0x186ae

.field public static final PROP_DELIMITER:I = 0x186a0

.field public static final PROP_FINANCE:I = 0x2747

.field public static final PROP_GAME:I = 0x2748

.field public static final PROP_HEALTH:I = 0x2717

.field public static final PROP_INPUT:I = 0x4e20

.field public static final PROP_MAP:I = 0x274c

.field public static final PROP_MEDICAL:I = 0x2744

.field public static final PROP_MUSIC:I = 0x2711

.field public static final PROP_PHONE:I = 0x2718

.field public static final PROP_PLAYER:I = 0x186b3

.field public static final PROP_RADIO:I = 0x186b4

.field public static final PROP_RECIPES:I = 0x2749

.field public static final PROP_SEARCH:I = 0x2715

.field public static final PROP_SETTING:I = 0x186b0

.field public static final PROP_SHOPPING:I = 0x2716

.field public static final PROP_SONG:I = 0x2719

.field public static final PROP_TV:I = 0x186b2

.field public static final PROP_VIDEO:I = 0x2712

.field public static final PROP_WEB:I = 0x2714


# instance fields
.field public asrDataFilePath:Ljava/lang/String;

.field expectRecogNum:I

.field public imePunctuationOn:I

.field public licenseFilePath:Ljava/lang/String;

.field public lmResPath:Ljava/lang/String;

.field maxSpeechPauseSec:F

.field maxSpeechSec:F

.field needRecog:I

.field needVAD:I

.field needWakeUp:I

.field public prop:I

.field recogFastMode:I

.field sampleRate:I

.field public slotData:Lorg/json/JSONObject;

.field supportLongSpeech:I

.field useSSE4:I

.field useVADEndCut:I

.field wakeUpFastMode:I

.field wakeUpWords:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/speech/easr/EASRParams;->asrDataFilePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/speech/easr/EASRParams;->lmResPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/speech/easr/EASRParams;->licenseFilePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/speech/easr/EASRParams;->slotData:Lorg/json/JSONObject;

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/baidu/speech/easr/EASRParams;->prop:I

    iput v3, p0, Lcom/baidu/speech/easr/EASRParams;->recogFastMode:I

    iput v1, p0, Lcom/baidu/speech/easr/EASRParams;->wakeUpFastMode:I

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/baidu/speech/easr/EASRParams;->sampleRate:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/baidu/speech/easr/EASRParams;->maxSpeechSec:F

    const v0, 0x3fcccccd    # 1.6f

    iput v0, p0, Lcom/baidu/speech/easr/EASRParams;->maxSpeechPauseSec:F

    iput v1, p0, Lcom/baidu/speech/easr/EASRParams;->useVADEndCut:I

    iput-object v2, p0, Lcom/baidu/speech/easr/EASRParams;->wakeUpWords:Ljava/lang/String;

    iput v1, p0, Lcom/baidu/speech/easr/EASRParams;->needVAD:I

    iput v3, p0, Lcom/baidu/speech/easr/EASRParams;->needWakeUp:I

    iput v1, p0, Lcom/baidu/speech/easr/EASRParams;->needRecog:I

    iput v3, p0, Lcom/baidu/speech/easr/EASRParams;->useSSE4:I

    iput v3, p0, Lcom/baidu/speech/easr/EASRParams;->supportLongSpeech:I

    iput v1, p0, Lcom/baidu/speech/easr/EASRParams;->expectRecogNum:I

    iput v1, p0, Lcom/baidu/speech/easr/EASRParams;->imePunctuationOn:I

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/easr/EASRParams;->asrDataFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/speech/easr/EASRParams;->asrDataFilePath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/speech/easr/EASRParams;->lmResPath:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/speech/easr/EASRParams;->lmResPath:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/baidu/speech/easr/EASRParams;->licenseFilePath:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/speech/easr/EASRParams;->licenseFilePath:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/baidu/speech/easr/EASRParams;->wakeUpWords:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/speech/easr/EASRParams;->wakeUpWords:Ljava/lang/String;

    :cond_3
    return-void
.end method
