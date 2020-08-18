.class public Lcn/yunzhisheng/asr/VADParams;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_BACK_SIL:I = 0x3e8

.field public static final DEFAULT_CACHE_PCM_TIME:I = 0x1c2

.field public static final DEFAULT_FRONT_SIL:I = 0xbb8

.field public static final FLOAT_OFFSET:I = 0x4e20

.field public static final FREQUENCY_16K:I = 0x3e80

.field public static final FREQUENCY_8K:I = 0x1f40

.field public static final INT_OFFSET:I = 0x2710

.field static final g:I = 0x5

.field static final h:I = 0x6

.field static final i:I = 0x7

.field static final j:I = 0x8

.field static final k:I = 0x9

.field static final l:I = 0xa

.field static final m:I = 0xb

.field static final n:I = 0xc

.field static final o:I = 0xd

.field static final p:I = 0xe

.field static final q:I = 0xf

.field static final r:I = 0x10

.field static final s:I = 0x11

.field static final t:I = 0x12

.field static final u:I = 0x13

.field static final v:I = 0x14

.field static final w:I = 0x15


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field protected E:Z

.field F:I

.field G:I

.field public LOWHIGHTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

.field public MAXSILLEN:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

.field public MINBACKENG:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

.field public MINBACKENGH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

.field public MINSIGLEN:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

.field public NOISE2YST:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

.field public NOISE2YTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

.field public NOISE2YTHVOWEL:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

.field public PITCHENDNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

.field public PITCHLASTTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

.field public PITCHSTNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

.field public PITCHTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

.field public SINGLEMAX:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

.field public USEPEAK:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

.field public VOICEPROBTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

.field private a:I

.field private b:Z

.field public is8K216K:Z

.field x:Z

.field y:Z

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x3e80

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MINBACKENG:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MINBACKENGH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHSTNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHENDNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->LOWHIGHTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MINSIGLEN:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MAXSILLEN:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->SINGLEMAX:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YTHVOWEL:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->VOICEPROBTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->USEPEAK:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YST:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    new-instance v0, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHLASTTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/VADParams;->x:Z

    iput-boolean v3, p0, Lcn/yunzhisheng/asr/VADParams;->y:Z

    iput v4, p0, Lcn/yunzhisheng/asr/VADParams;->z:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcn/yunzhisheng/asr/VADParams;->A:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcn/yunzhisheng/asr/VADParams;->B:I

    iput v2, p0, Lcn/yunzhisheng/asr/VADParams;->C:I

    const v0, 0x9470

    iput v0, p0, Lcn/yunzhisheng/asr/VADParams;->D:I

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/VADParams;->E:Z

    const/16 v0, 0x15e

    iput v0, p0, Lcn/yunzhisheng/asr/VADParams;->a:I

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/VADParams;->is8K216K:Z

    iput-boolean v3, p0, Lcn/yunzhisheng/asr/VADParams;->b:Z

    iput v3, p0, Lcn/yunzhisheng/asr/VADParams;->F:I

    iput v4, p0, Lcn/yunzhisheng/asr/VADParams;->G:I

    const/16 v0, 0x1c2

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VADParams;->setFrontCacheTime(I)V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VADParams;->setVADModelToDefault()V

    return-void
.end method


# virtual methods
.method public getAudioSource()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/VADParams;->F:I

    return v0
.end method

.method public getGiveUpResultMinMillisecond()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/VADParams;->a:I

    return v0
.end method

.method public getRecordingSampleRate()I
    .locals 2

    iget v0, p0, Lcn/yunzhisheng/asr/VADParams;->G:I

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VADParams;->is8K216K:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x1f40

    :cond_0
    return v0
.end method

.method public isCheckBeep()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VADParams;->y:Z

    return v0
.end method

.method public isFarFeildEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VADParams;->E:Z

    return v0
.end method

.method public isFrontVadEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VADParams;->x:Z

    return v0
.end method

.method public isPlayStartBeep()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VADParams;->y:Z

    return v0
.end method

.method public isVADEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VADParams;->b:Z

    return v0
.end method

.method public resetVAD()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MINBACKENG:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MINBACKENGH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHSTNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHENDNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->LOWHIGHTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MINSIGLEN:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MAXSILLEN:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->SINGLEMAX:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YTHVOWEL:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->VOICEPROBTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->USEPEAK:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YST:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHLASTTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->reset()V

    return-void
.end method

.method public setAudioSource(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/VADParams;->F:I

    return-void
.end method

.method public setFarFeildEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/VADParams;->E:Z

    return-void
.end method

.method public setFrontCacheTime(I)V
    .locals 1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcn/yunzhisheng/asr/VADParams;->z:I

    div-int/lit16 v0, v0, 0x3e8

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/yunzhisheng/asr/VADParams;->C:I

    return-void
.end method

.method public setFrontVadEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/VADParams;->x:Z

    return-void
.end method

.method public setGiveUpResultMinMillisecond(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/VADParams;->a:I

    return-void
.end method

.method public setPlayStartBeep(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/VADParams;->y:Z

    return-void
.end method

.method public setRecordingSampleRate(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/VADParams;->G:I

    return-void
.end method

.method public setVADEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/VADParams;->b:Z

    return-void
.end method

.method public setVADModelToDefault()V
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VADParams;->resetVAD()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHSTNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHENDNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    return-void
.end method

.method public setVADModelToLetv()V
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VADParams;->resetVAD()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MINBACKENGH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const v1, 0x4a989680    # 5000000.0f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MAXSILLEN:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHSTNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHLASTTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    return-void
.end method

.method public setVADModelToQuietEnvironmentA()V
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VADParams;->resetVAD()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MINBACKENGH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const v1, 0x4a989680    # 5000000.0f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHSTNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    return-void
.end method

.method public setVADModelToQuietEnvironmentB()V
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VADParams;->resetVAD()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const v1, 0x3e6147ae    # 0.22f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHSTNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->VOICEPROBTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->USEPEAK:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MINBACKENGH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const v1, 0x4a989680    # 5000000.0f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    return-void
.end method

.method public setVADModelToStrongNoiseOrVoice()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VADParams;->resetVAD()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YTHVOWEL:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const v1, 0x3e6147ae    # 0.22f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHSTNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->VOICEPROBTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->USEPEAK:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YST:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MINBACKENG:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const v1, 0x4d3ebc20    # 2.0E8f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->SINGLEMAX:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->LOWHIGHTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    const v1, 0x49742400    # 1000000.0f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;->setValue(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->PITCHLASTTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    return-void
.end method

.method public setVADTimeout(II)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VADParams;->MAXSILLEN:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    div-int/lit8 v1, p2, 0xa

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->setValue(I)V

    iput p1, p0, Lcn/yunzhisheng/asr/VADParams;->A:I

    iput p2, p0, Lcn/yunzhisheng/asr/VADParams;->B:I

    return-void
.end method
