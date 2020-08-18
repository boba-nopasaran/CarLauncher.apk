.class public Lcn/yunzhisheng/asr/RecognizerParams;
.super Lcn/yunzhisheng/asr/VADParams;


# static fields
.field public static final CANTONESE:Ljava/lang/String; = "cantonese"

.field public static final CHINESE:Ljava/lang/String; = "chinese"

.field public static final CN_EN_MIX:Ljava/lang/String; = "cn_en_mix"

.field public static final ENGLISH:Ljava/lang/String; = "english"

.field private static I:Lcn/yunzhisheng/asr/a/a; = null

.field public static MODEL_TYPE_GENERAL:Ljava/lang/String; = null

.field public static MODEL_TYPE_POI:Ljava/lang/String; = null

.field public static final ORAL:Ljava/lang/String; = "oral"

.field public static USER_DATA_SERVER:Ljava/lang/String;


# instance fields
.field public ASR_USRDATA_ENABLED:Z

.field public ASR_USRDATA_PROTOCOL_ENABLED:Z

.field public ENABLED_REQ_RSP_ENTITY:Z

.field private H:Lcn/yunzhisheng/asr/a/b;

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Lcn/yunzhisheng/asr/b;

.field private M:Lcn/yunzhisheng/common/Scene;

.field public RATE_8K_ENABLED:Z

.field a:I

.field public asrReqSpeakerInfo:I

.field public asrRspSpeakerInfo:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Z

.field public oralExt1:Ljava/lang/String;

.field public oralExt2:Ljava/lang/String;

.field public oralTask:Ljava/lang/String;

.field public oralText:Ljava/lang/String;

.field public rateReal8k:Z

.field public final webPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http://u.hivoice.cn:8081/casr/upload"

    sput-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->USER_DATA_SERVER:Ljava/lang/String;

    const-string v0, "general"

    sput-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->MODEL_TYPE_GENERAL:Ljava/lang/String;

    const-string v0, "poi"

    sput-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->MODEL_TYPE_POI:Ljava/lang/String;

    new-instance v0, Lcn/yunzhisheng/asr/a/a;

    sget-object v1, Lcn/yunzhisheng/asr/a/i;->a:Lcn/yunzhisheng/asr/a/a;

    invoke-direct {v0, v1}, Lcn/yunzhisheng/asr/a/a;-><init>(Lcn/yunzhisheng/asr/a/a;)V

    sput-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->I:Lcn/yunzhisheng/asr/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VADParams;-><init>()V

    const-string v0, "/USCService/WebApi"

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->webPath:Ljava/lang/String;

    new-instance v0, Lcn/yunzhisheng/asr/a/b;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/a/b;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->H:Lcn/yunzhisheng/asr/a/b;

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->ASR_USRDATA_PROTOCOL_ENABLED:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/RecognizerParams;->ENABLED_REQ_RSP_ENTITY:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/RecognizerParams;->ASR_USRDATA_ENABLED:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/RecognizerParams;->RATE_8K_ENABLED:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/RecognizerParams;->J:Z

    iput v1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->asrReqSpeakerInfo:I

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->rateReal8k:Z

    iput v1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->asrRspSpeakerInfo:I

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->K:Ljava/lang/String;

    iput v1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->a:I

    const/16 v0, 0x8

    iput v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->b:I

    iput v2, p0, Lcn/yunzhisheng/asr/RecognizerParams;->c:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->d:I

    const/16 v0, 0x14

    iput v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->e:I

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->oralText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->oralTask:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->oralExt1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->oralExt2:Ljava/lang/String;

    new-instance v0, Lcn/yunzhisheng/asr/b;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/b;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->L:Lcn/yunzhisheng/asr/b;

    new-instance v0, Lcn/yunzhisheng/common/Scene;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcn/yunzhisheng/common/Scene;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->M:Lcn/yunzhisheng/common/Scene;

    return-void
.end method


# virtual methods
.method a()Lcn/yunzhisheng/asr/a/a;
    .locals 1

    sget-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->I:Lcn/yunzhisheng/asr/a/a;

    return-object v0
.end method

.method a(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->I:Lcn/yunzhisheng/asr/a/a;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/a/a;->b(Ljava/lang/String;)V

    sget-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->I:Lcn/yunzhisheng/asr/a/a;

    invoke-virtual {v0, p2}, Lcn/yunzhisheng/asr/a/a;->b(I)V

    return-void
.end method

.method b()V
    .locals 1

    sget-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->I:Lcn/yunzhisheng/asr/a/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a/a;->d()V

    return-void
.end method

.method b(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->I:Lcn/yunzhisheng/asr/a/a;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->I:Lcn/yunzhisheng/asr/a/a;

    invoke-virtual {v0, p2}, Lcn/yunzhisheng/asr/a/a;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognizerParams:setDefaultServer server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public createAsrResultFormat()Lcn/yunzhisheng/asr/a/b;
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->H:Lcn/yunzhisheng/asr/a/b;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a/b;->b()Lcn/yunzhisheng/asr/a/b;

    move-result-object v0

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->J:Z

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/a/b;->a(Z)V

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineParams()Lcn/yunzhisheng/asr/b;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->L:Lcn/yunzhisheng/asr/b;

    return-object v0
.end method

.method public getPunctuation()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->J:Z

    return v0
.end method

.method public getStartScene()Lcn/yunzhisheng/common/Scene;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->M:Lcn/yunzhisheng/common/Scene;

    return-object v0
.end method

.method public isOralEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->f:Z

    return v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->K:Ljava/lang/String;

    return-void
.end method

.method public setFarFeild(Z)V
    .locals 2

    iget-object v1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->L:Lcn/yunzhisheng/asr/b;

    if-eqz p1, :cond_0

    const-string v0, "far"

    :goto_0
    invoke-virtual {v1, v0}, Lcn/yunzhisheng/asr/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "near"

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "RecognizerParams:setLanguage error language == null "

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognizerParams:setLanguage in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    sget-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->I:Lcn/yunzhisheng/asr/a/a;

    invoke-static {p1}, Lcn/yunzhisheng/asr/a/i;->a(Ljava/lang/String;)Lcn/yunzhisheng/asr/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/a/a;->a(Lcn/yunzhisheng/asr/a/a;)V

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/RecognizerParams;->E:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/RecognizerParams;->f:Z

    sget-object v0, Lcn/yunzhisheng/asr/RecognizerParams;->USER_DATA_SERVER:Ljava/lang/String;

    sput-object v0, Lcn/yunzhisheng/asr/x;->a:Ljava/lang/String;

    const-string v0, "english"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcn/yunzhisheng/asr/a/e;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/a/e;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->H:Lcn/yunzhisheng/asr/a/b;

    goto :goto_0

    :cond_1
    const-string v0, "cantonese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcn/yunzhisheng/asr/a/c;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/a/c;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->H:Lcn/yunzhisheng/asr/a/b;

    goto :goto_0

    :cond_2
    const-string v0, "oral"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcn/yunzhisheng/asr/a/f;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/a/f;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->H:Lcn/yunzhisheng/asr/a/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->f:Z

    goto :goto_0

    :cond_3
    const-string v0, "cn_en_mix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcn/yunzhisheng/asr/a/d;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/a/d;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->H:Lcn/yunzhisheng/asr/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/yunzhisheng/asr/RecognizerParams;->I:Lcn/yunzhisheng/asr/a/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":9006/casr/upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/yunzhisheng/asr/x;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v0, "RecognizerParams:setLanguage do chinese"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    new-instance v0, Lcn/yunzhisheng/asr/a/d;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/a/d;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->H:Lcn/yunzhisheng/asr/a/b;

    goto/16 :goto_0
.end method

.method public setModelType(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->L:Lcn/yunzhisheng/asr/b;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/b;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOralExt1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->oralExt1:Ljava/lang/String;

    return-void
.end method

.method public setOralExt2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->oralExt2:Ljava/lang/String;

    return-void
.end method

.method public setOralTask(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->oralTask:Ljava/lang/String;

    return-void
.end method

.method public setOralText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->oralText:Ljava/lang/String;

    return-void
.end method

.method public setPunctuation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->J:Z

    return-void
.end method

.method public setRateReal8k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/RecognizerParams;->rateReal8k:Z

    return-void
.end method

.method public setSampleRate(I)Z
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->L:Lcn/yunzhisheng/asr/b;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/b;->a(I)Z

    move-result v0

    return v0
.end method

.method public setServer(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-short v3, v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p0, v4, v3}, Lcn/yunzhisheng/asr/RecognizerParams;->a(Ljava/lang/String;I)V

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {p0, v2, v3}, Lcn/yunzhisheng/asr/RecognizerParams;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setStartScene(Lcn/yunzhisheng/common/Scene;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->M:Lcn/yunzhisheng/common/Scene;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/common/Scene;->setScene(Lcn/yunzhisheng/common/Scene;)V

    return-void
.end method

.method public setVADRecordingEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/RecognizerParams;->setVADEnabled(Z)V

    return-void
.end method

.method public setVoiceField(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/RecognizerParams;->L:Lcn/yunzhisheng/asr/b;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/b;->c(Ljava/lang/String;)V

    return-void
.end method
