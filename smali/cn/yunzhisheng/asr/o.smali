.class public Lcn/yunzhisheng/asr/o;
.super Lcn/yunzhisheng/utils/e;


# static fields
.field public static final BANDWIDTH_AUTO:I = 0x64

.field public static final DEFAULT_BACK_SIL:I = 0x3e8

.field public static final DEFAULT_FRONT_SIL:I = 0xbb8

.field public static KEEP_FILTER_RECORDING_DATA:Z = false

.field public static final LANGUAGE_CANTONESE:Ljava/lang/String; = "cantonese"

.field public static final LANGUAGE_CHINESE:Ljava/lang/String; = "chinese"

.field public static final LANGUAGE_CN_EN_MIX:Ljava/lang/String; = "cn_en_mix"

.field public static final LANGUAGE_ENGLISH:Ljava/lang/String; = "english"

.field public static final MODEL_TYPE_FOOD:Ljava/lang/String; = "food"

.field public static final MODEL_TYPE_GENERAL:Ljava/lang/String; = "general"

.field public static final MODEL_TYPE_MEDICAL:Ljava/lang/String; = "medical"

.field public static final MODEL_TYPE_MOVIETV:Ljava/lang/String; = "movietv"

.field public static final MODEL_TYPE_POI:Ljava/lang/String; = "poi"

.field public static final OPT_GET_SPEAKER_INFO:I = 0x12d

.field public static final OPT_GET_WAVE_DATA:I = 0x14

.field public static final OPT_SET_LOG_LISTENER:I = 0x136

.field public static final OPT_SET_PUNCTUATION:I = 0x2a

.field public static final OPT_SET_SAVE_WAVE_DATA:I = 0x14

.field public static final OPT_SET_SCENE_ID:I = 0x190

.field public static final OPT_SET_SERVER_ADDRESS:I = 0x2d

.field public static final OPT_SET_SPEAKER_INFO:I = 0x12d

.field public static final OPT_SET_START_PLAY_BEEP_ENABLED:I = 0x29

.field public static final RATE_16K:I = 0x3e80

.field public static final RATE_8K:I = 0x1f40

.field public static final VOICE_FIELD_FAR:Ljava/lang/String; = "far"

.field public static final VOICE_FIELD_NEAR:Ljava/lang/String; = "near"

.field protected static final a:I = 0xa

.field protected static final b:I = 0x11

.field protected static final c:I = 0x1e

.field protected static final d:I = 0x66

.field protected static final e:I = 0x28

.field protected static final f:I = 0x2b

.field protected static final g:I = 0x2e

.field protected static final h:I = 0x2f

.field protected static final i:I = 0x14b

.field private static s:Lcn/yunzhisheng/common/SceneManage;


# instance fields
.field private A:Lcn/yunzhisheng/asr/q;

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field protected k:Lcn/yunzhisheng/asr/RecognizerParams;

.field protected l:Lcn/yunzhisheng/asr/d;

.field protected m:Lcn/yunzhisheng/asr/c;

.field protected n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

.field protected o:Lcn/yunzhisheng/utils/g;

.field protected p:Lcn/yunzhisheng/asr/m;

.field protected q:Landroid/content/Context;

.field protected r:Ljava/lang/String;

.field private t:Lcn/yunzhisheng/asr/a;

.field private u:Lcn/yunzhisheng/asr/i;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/yunzhisheng/asr/o;->KEEP_FILTER_RECORDING_DATA:Z

    new-instance v0, Lcn/yunzhisheng/common/SceneManage;

    invoke-direct {v0}, Lcn/yunzhisheng/common/SceneManage;-><init>()V

    sput-object v0, Lcn/yunzhisheng/asr/o;->s:Lcn/yunzhisheng/common/SceneManage;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/yunzhisheng/utils/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->j:Ljava/util/List;

    new-instance v0, Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/RecognizerParams;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->l:Lcn/yunzhisheng/asr/d;

    new-instance v0, Lcn/yunzhisheng/asr/c;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/c;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->m:Lcn/yunzhisheng/asr/c;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->r:Ljava/lang/String;

    new-instance v0, Lcn/yunzhisheng/asr/a;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/a;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->t:Lcn/yunzhisheng/asr/a;

    new-instance v0, Lcn/yunzhisheng/asr/i;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/i;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->u:Lcn/yunzhisheng/asr/i;

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/o;->v:Z

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/o;->w:Z

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/o;->x:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/o;->y:Z

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/o;->z:Z

    new-instance v0, Lcn/yunzhisheng/asr/p;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/asr/p;-><init>(Lcn/yunzhisheng/asr/o;)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->A:Lcn/yunzhisheng/asr/q;

    iput-object p1, p0, Lcn/yunzhisheng/asr/o;->q:Landroid/content/Context;

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->t:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/a;->a(Landroid/content/Context;)V

    new-instance v0, Lcn/yunzhisheng/asr/m;

    iget-object v1, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-direct {v0, p1, v1}, Lcn/yunzhisheng/asr/m;-><init>(Landroid/content/Context;Lcn/yunzhisheng/asr/RecognizerParams;)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    iget-object v1, p0, Lcn/yunzhisheng/asr/o;->A:Lcn/yunzhisheng/asr/q;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/m;->a(Lcn/yunzhisheng/asr/q;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, p2}, Lcn/yunzhisheng/asr/RecognizerParams;->setAppKey(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcn/yunzhisheng/asr/o;->s:Lcn/yunzhisheng/common/SceneManage;

    iget-object v1, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/common/SceneManage;->setParams(Lcn/yunzhisheng/asr/RecognizerParams;)V

    return-void
.end method

.method static synthetic a(Lcn/yunzhisheng/asr/o;)Lcn/yunzhisheng/asr/i;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->u:Lcn/yunzhisheng/asr/i;

    return-object v0
.end method

.method static synthetic b(Lcn/yunzhisheng/asr/o;)Lcn/yunzhisheng/asr/a;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->t:Lcn/yunzhisheng/asr/a;

    return-object v0
.end method

.method private g()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/o;->w:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/o;->v:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/o;->x:Z

    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/o;->x:Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    const/16 v0, 0x3e80

    invoke-static {v1, v4, v0}, Lcn/yunzhisheng/asr/a/n;->a(III)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/yunzhisheng/asr/o;->j:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.29"

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->o:Lcn/yunzhisheng/utils/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->o:Lcn/yunzhisheng/utils/g;

    invoke-interface {v0, p1, p2, p3}, Lcn/yunzhisheng/utils/g;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected a(Lcn/yunzhisheng/asr/OnlineRecognizerListener;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/o;->n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

    invoke-interface {v0, p1, p2}, Lcn/yunzhisheng/asr/OnlineRecognizerListener;->onResult(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/RecognizerParams;->setFrontVadEnabled(Z)V

    return-void
.end method

.method protected a(Z[BII)V
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/o;->w:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-boolean v0, Lcn/yunzhisheng/asr/o;->KEEP_FILTER_RECORDING_DATA:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

    invoke-interface {v0}, Lcn/yunzhisheng/asr/OnlineRecognizerListener;->onVADTimeout()V

    :cond_0
    return-void
.end method

.method protected b(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

    invoke-interface {v0, p1}, Lcn/yunzhisheng/asr/OnlineRecognizerListener;->onUpdateVolume(I)V

    :cond_0
    return-void
.end method

.method protected b(Z)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/RecognizerParams;->setFarFeild(Z)V

    return-void
.end method

.method protected c()V
    .locals 0

    invoke-direct {p0}, Lcn/yunzhisheng/asr/o;->g()V

    return-void
.end method

.method protected c(I)V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/m;->g()V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

    invoke-interface {v0}, Lcn/yunzhisheng/asr/OnlineRecognizerListener;->onRecognizerStart()V

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->n:Lcn/yunzhisheng/asr/OnlineRecognizerListener;

    invoke-interface {v0}, Lcn/yunzhisheng/asr/OnlineRecognizerListener;->onRecognizerStart()V

    :cond_0
    return-void
.end method

.method public getNetworkTimeout()I
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/m;->e()I

    move-result v0

    return v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/m;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcn/yunzhisheng/asr/o;->g()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->j:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/o;->v:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x29

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/RecognizerParams;->isPlayStartBeep()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x12d

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    iget v0, v0, Lcn/yunzhisheng/asr/RecognizerParams;->asrRspSpeakerInfo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptionValue(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/o;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcn/yunzhisheng/asr/RecognizerParams;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    return-object v0
.end method

.method public getSceneManage()Lcn/yunzhisheng/common/SceneManage;
    .locals 1

    sget-object v0, Lcn/yunzhisheng/asr/o;->s:Lcn/yunzhisheng/common/SceneManage;

    return-object v0
.end method

.method public getSpeakerInfoSetting()Lcn/yunzhisheng/common/USCSpeakerInfoSetting;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/m;->n()Lcn/yunzhisheng/common/USCSpeakerInfoSetting;

    move-result-object v0

    return-object v0
.end method

.method public getSpeakerInformation()Lcn/yunzhisheng/common/USCSpeakerInformation;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/m;->o()Lcn/yunzhisheng/common/USCSpeakerInformation;

    move-result-object v0

    return-object v0
.end method

.method public setBandwidth(I)Z
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->u:Lcn/yunzhisheng/asr/i;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/i;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBandwidth error: unkown param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEngine(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/RecognizerParams;->setModelType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEngine error: unkown param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/RecognizerParams;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setNetworkTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/m;->b(I)V

    return-void
.end method

.method public setOption(ILjava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x1e

    if-eq p1, v2, :cond_0

    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/o;->y:Z

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/o;->y:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/RecognizerParams;->setPlayStartBeep(Z)V

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_2
    const/16 v2, 0x14

    if-ne v2, p1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/o;->w:Z

    goto :goto_0

    :cond_3
    const/16 v2, 0x28

    if-ne v2, p1, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/o;->v:Z

    goto :goto_0

    :cond_4
    const/16 v2, 0x29

    if-ne v2, p1, :cond_5

    iget-object v1, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/RecognizerParams;->setPlayStartBeep(Z)V

    goto :goto_1

    :cond_5
    const/16 v2, 0x12d

    if-ne v2, p1, :cond_6

    iget-object v1, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/yunzhisheng/asr/RecognizerParams;->asrReqSpeakerInfo:I

    goto :goto_1

    :cond_6
    const/16 v2, 0x2a

    if-ne v2, p1, :cond_7

    iget-object v1, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/m;->a(Z)V

    goto :goto_1

    :cond_7
    const/16 v2, 0x2b

    if-ne v2, p1, :cond_8

    iget-object v1, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcn/yunzhisheng/asr/m;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const/16 v2, 0x2d

    if-ne v2, p1, :cond_9

    iget-object v1, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcn/yunzhisheng/asr/RecognizerParams;->setServer(Ljava/lang/String;)Z

    goto :goto_1

    :cond_9
    const/16 v2, 0x2e

    if-ne v2, p1, :cond_a

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/o;->z:Z

    goto :goto_1

    :cond_a
    const/16 v2, 0x2f

    if-ne v2, p1, :cond_b

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/o;->z:Z

    goto :goto_1

    :cond_b
    const/16 v0, 0x14b

    if-ne v0, p1, :cond_c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/o;->b(Z)V

    goto :goto_0

    :cond_c
    const/16 v0, 0x190

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    sget-object v2, Lcn/yunzhisheng/asr/o;->s:Lcn/yunzhisheng/common/SceneManage;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcn/yunzhisheng/common/SceneManage;->findScene(Ljava/lang/String;)Lcn/yunzhisheng/common/Scene;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/RecognizerParams;->setStartScene(Lcn/yunzhisheng/common/Scene;)V

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x136

    if-ne v0, p1, :cond_1

    check-cast p2, Lcn/yunzhisheng/utils/g;

    iput-object p2, p0, Lcn/yunzhisheng/asr/o;->o:Lcn/yunzhisheng/utils/g;

    goto/16 :goto_0
.end method

.method public setOptionValue(ILjava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/yunzhisheng/asr/o;->setOption(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setRecordingDataEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/o;->w:Z

    return-void
.end method

.method public setRequestIdListener(Lcn/yunzhisheng/asr/v;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/m;->a(Lcn/yunzhisheng/asr/v;)V

    return-void
.end method

.method public setSampleRate(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/RecognizerParams;->setSampleRate(I)Z

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/o;->setNetworkTimeout(I)V

    return-void
.end method

.method public setUserData(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/m;->a(Landroid/util/SparseArray;)V

    return-void
.end method

.method public setUserData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/m;->a(Ljava/util/Map;)V

    return-void
.end method

.method public setVADTimeout(II)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, p1, p2}, Lcn/yunzhisheng/asr/RecognizerParams;->setVADTimeout(II)V

    return-void
.end method

.method public setVoiceField(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/RecognizerParams;->setVoiceField(Ljava/lang/String;)V

    return-void
.end method

.method protected start()V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/o;->z:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/o;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcn/yunzhisheng/asr/RecognizerParams;->setRateReal8k(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->l:Lcn/yunzhisheng/asr/d;

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->u:Lcn/yunzhisheng/asr/i;

    invoke-static {}, Lcn/yunzhisheng/utils/a;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/i;->a(I)I

    move-result v0

    iget-object v2, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v2, v0}, Lcn/yunzhisheng/asr/RecognizerParams;->setSampleRate(I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSampleRate :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/o;->y:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/yunzhisheng/asr/u;->l()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    new-instance v2, Lcn/yunzhisheng/asr/u;

    iget-object v3, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-object v4, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-direct {v2, v3, v4}, Lcn/yunzhisheng/asr/u;-><init>(Lcn/yunzhisheng/asr/VADParams;Lcn/yunzhisheng/asr/t;)V

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/m;->a(Lcn/yunzhisheng/asr/e;)V

    :goto_1
    iput-boolean v1, p0, Lcn/yunzhisheng/asr/o;->x:Z

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/o;->w:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->j:Ljava/util/List;

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Lcn/yunzhisheng/asr/d;

    iget-object v2, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    iget-object v3, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-direct {v0, v2, v3}, Lcn/yunzhisheng/asr/d;-><init>(Lcn/yunzhisheng/asr/VADParams;Lcn/yunzhisheng/asr/t;)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->l:Lcn/yunzhisheng/asr/d;

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    iget-object v2, p0, Lcn/yunzhisheng/asr/o;->l:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/m;->a(Lcn/yunzhisheng/asr/e;)V

    goto :goto_1
.end method

.method public start(Lcn/yunzhisheng/common/Scene;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->k:Lcn/yunzhisheng/asr/RecognizerParams;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/RecognizerParams;->setStartScene(Lcn/yunzhisheng/common/Scene;)V

    :cond_0
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/o;->start()V

    return-void
.end method

.method protected stop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/o;->l:Lcn/yunzhisheng/asr/d;

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->p:Lcn/yunzhisheng/asr/m;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/m;->f()V

    return-void
.end method

.method public writePcmData([BII)V
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/o;->y:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-lez p3, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/o;->l:Lcn/yunzhisheng/asr/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcn/yunzhisheng/asr/d;->a([BII)V

    :cond_0
    return-void
.end method
