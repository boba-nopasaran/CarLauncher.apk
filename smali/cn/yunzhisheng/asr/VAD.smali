.class public Lcn/yunzhisheng/asr/VAD;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static f:I = 0x0

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = -0x3e9


# instance fields
.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private k:Ljava/io/ByteArrayOutputStream;

.field private l:Lcn/yunzhisheng/asr/VADParams;

.field private m:Lcn/yunzhisheng/asr/z;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:J

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcn/yunzhisheng/asr/VAD;->f:I

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/VADParams;Lcn/yunzhisheng/asr/z;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x5000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/VAD;->n:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/VAD;->o:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/VAD;->p:Z

    iput-wide v4, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->r:Z

    iput-object p1, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iput-object p2, p0, Lcn/yunzhisheng/asr/VAD;->m:Lcn/yunzhisheng/asr/z;

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-string v0, "jni VAD create fail!"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams;->isVADEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Z)V

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->init(J)V

    goto :goto_0
.end method

.method private a([BI[BI)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v4, v0, 0x1

    aput-byte v3, p3, v0

    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p3, v4

    add-int/lit8 v4, v0, 0x1

    aput-byte v3, p3, v0

    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p3, v4

    goto :goto_0

    :cond_0
    return v0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->m:Lcn/yunzhisheng/asr/z;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/yunzhisheng/asr/z;->e(I)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAD >>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z[BII)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->m:Lcn/yunzhisheng/asr/z;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/yunzhisheng/asr/z;->a(Z[BII)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/VAD;->o:Z

    goto :goto_0
.end method

.method private b([B)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v3, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v3

    iget-object v3, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget v3, v3, Lcn/yunzhisheng/asr/VADParams;->C:I

    if-lt v0, v3, :cond_0

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v4, v0

    invoke-direct {p0, v2, v0, v2, v4}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private native checkPitchOffset(J[BI)I
.end method

.method private native create()J
.end method

.method private native destory(J)V
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->m:Lcn/yunzhisheng/asr/z;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/yunzhisheng/asr/z;->l()V

    :cond_0
    return-void
.end method

.method private native getVolume(J)I
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->m:Lcn/yunzhisheng/asr/z;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcn/yunzhisheng/asr/z;->a(Lcn/yunzhisheng/asr/VAD;)V

    :cond_0
    return-void
.end method

.method private native init(J)V
.end method

.method private native isVADTimeout(J[BI)I
.end method

.method private native nativeSetOption(JILjava/lang/String;)I
.end method

.method private native reset(J)V
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/VAD;->nativeSetOption(JILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I
    .locals 2

    invoke-virtual {p1}, Lcn/yunzhisheng/asr/VADParams$VADParamValue;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcn/yunzhisheng/asr/VADParams$VADParamValue;->key:I

    invoke-virtual {p1}, Lcn/yunzhisheng/asr/VADParams$VADParamValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a([BI)I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/VAD;->checkPitchOffset(J[BI)I

    move-result v0

    goto :goto_0
.end method

.method public a([BII)I
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-gtz p3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->r:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v3, p1, v1, p3}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-boolean v0, v0, Lcn/yunzhisheng/asr/VADParams;->is8K216K:Z

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams;->isCheckBeep()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->n:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/VAD;->a([B)V

    invoke-virtual {p0, p1, p3}, Lcn/yunzhisheng/asr/VAD;->c([BI)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(I)V

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, p3, 0x2

    new-array v0, v2, [B

    invoke-direct {p0, p1, p3, v0, v2}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move-result p3

    move-object p1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p3}, Lcn/yunzhisheng/asr/VAD;->b([BI)I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_3
    iget-boolean v2, p0, Lcn/yunzhisheng/asr/VAD;->p:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-boolean v2, v2, Lcn/yunzhisheng/asr/VADParams;->x:Z

    if-eqz v2, :cond_8

    invoke-direct {p0, p1}, Lcn/yunzhisheng/asr/VAD;->b([B)V

    :goto_4
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/yunzhisheng/asr/VAD;->a(I)V

    goto :goto_2

    :cond_5
    if-ne v0, v3, :cond_6

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->h()V

    const-string v2, "ASR_VAD_BACK_END"

    invoke-direct {p0, v2}, Lcn/yunzhisheng/asr/VAD;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->h()V

    const-string v2, "ASR_VAD_MAX_SIL"

    invoke-direct {p0, v2}, Lcn/yunzhisheng/asr/VAD;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iput-boolean v3, p0, Lcn/yunzhisheng/asr/VAD;->p:Z

    const-string v2, "ASR_VAD_FRONT_END"

    invoke-direct {p0, v2}, Lcn/yunzhisheng/asr/VAD;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->f()V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->g()V

    goto :goto_3

    :cond_8
    invoke-direct {p0, v3, p1, v1, p3}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    goto :goto_4
.end method

.method public a(II)V
    .locals 4

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    div-int/lit8 v0, p1, 0xa

    div-int/lit8 v1, p2, 0xa

    iget-wide v2, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    invoke-virtual {p0, v2, v3, v0, v1}, Lcn/yunzhisheng/asr/VAD;->setTime(JII)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/VAD;->r:Z

    return-void
.end method

.method protected a([B)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    invoke-virtual {v0, p1, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget v1, v1, Lcn/yunzhisheng/asr/VADParams;->D:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-wide v2, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    array-length v1, v0

    invoke-direct {p0, v2, v3, v0, v1}, Lcn/yunzhisheng/asr/VAD;->checkPitchOffset(J[BI)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPitchOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/yunzhisheng/utils/c;->a(Ljava/lang/String;)V

    new-array v2, v1, [B

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v2

    invoke-direct {p0, v4, v2, v4, v3}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_0
    sput v1, Lcn/yunzhisheng/asr/VAD;->f:I

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    invoke-direct {p0, v5, v0, v4, v1}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->b([BI)I

    :cond_1
    iput-boolean v5, p0, Lcn/yunzhisheng/asr/VAD;->n:Z

    iput-boolean v5, p0, Lcn/yunzhisheng/asr/VAD;->p:Z

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([BI)I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/VAD;->isVADTimeout(J[BI)I

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VADParams;->isFarFeildEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->b(Z)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget v0, v0, Lcn/yunzhisheng/asr/VADParams;->A:I

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget v1, v1, Lcn/yunzhisheng/asr/VADParams;->B:I

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->a(II)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->MINBACKENG:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->MINBACKENGH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->PITCHTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->PITCHSTNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->PITCHENDNUMTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->LOWHIGHTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->MINSIGLEN:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->MAXSILLEN:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->SINGLEMAX:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YTHVOWEL:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->VOICEPROBTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueFloat;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->USEPEAK:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->NOISE2YST:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->l:Lcn/yunzhisheng/asr/VADParams;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VADParams;->PITCHLASTTH:Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/VADParams$VADParamValue;)I

    return-void
.end method

.method public c()I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->getVolume(J)I

    move-result v0

    goto :goto_0
.end method

.method protected c([BI)I
    .locals 8

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v3, v2

    move v4, v0

    :goto_0
    if-ge v3, p2, :cond_1

    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    const v5, 0x8000

    if-lt v0, v5, :cond_0

    const v5, 0xffff

    sub-int v0, v5, v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    int-to-float v3, p2

    div-float/2addr v0, v3

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    if-gez v0, :cond_2

    move v0, v2

    :cond_2
    if-le v0, v1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Z

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->n:Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->reset(J)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->destory(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->q:J

    goto :goto_0
.end method

.method public f()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Z

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v3, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->p:Z

    array-length v5, v0

    invoke-direct {p0, v4, v0, v2, v5}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcn/yunzhisheng/asr/VAD;->a(I)V

    return-void
.end method

.method public native setTime(JII)V
.end method
