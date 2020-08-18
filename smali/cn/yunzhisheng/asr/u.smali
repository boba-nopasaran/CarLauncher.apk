.class public Lcn/yunzhisheng/asr/u;
.super Lcn/yunzhisheng/asr/e;


# static fields
.field public static final h:I = 0x3e80

.field protected static i:Lcn/yunzhisheng/asr/u; = null

.field protected static final j:I = 0x960

.field private static k:I

.field private static l:I


# instance fields
.field private m:Landroid/media/AudioRecord;

.field private n:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x3e80

    sput v0, Lcn/yunzhisheng/asr/u;->k:I

    const/16 v0, 0x4b00

    sput v0, Lcn/yunzhisheng/asr/u;->l:I

    sget v0, Lcn/yunzhisheng/asr/u;->k:I

    sget v1, Lcn/yunzhisheng/asr/u;->b:I

    sget v2, Lcn/yunzhisheng/asr/u;->c:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    sget v1, Lcn/yunzhisheng/asr/u;->l:I

    if-ge v1, v0, :cond_0

    sput v0, Lcn/yunzhisheng/asr/u;->l:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/VADParams;Lcn/yunzhisheng/asr/t;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asr/e;-><init>(Lcn/yunzhisheng/asr/VADParams;Lcn/yunzhisheng/asr/t;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/u;->m:Landroid/media/AudioRecord;

    const/16 v0, 0x4b0

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/yunzhisheng/asr/u;->n:[B

    sput-object p0, Lcn/yunzhisheng/asr/u;->i:Lcn/yunzhisheng/asr/u;

    return-void
.end method

.method public static l()V
    .locals 1

    sget-object v0, Lcn/yunzhisheng/asr/u;->i:Lcn/yunzhisheng/asr/u;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/yunzhisheng/asr/u;->i:Lcn/yunzhisheng/asr/u;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/u;->k()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Landroid/media/AudioRecord;

    iget-object v1, p0, Lcn/yunzhisheng/asr/u;->f:Lcn/yunzhisheng/asr/VADParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/VADParams;->getAudioSource()I

    move-result v1

    iget-object v2, p0, Lcn/yunzhisheng/asr/u;->f:Lcn/yunzhisheng/asr/VADParams;

    invoke-virtual {v2}, Lcn/yunzhisheng/asr/VADParams;->getRecordingSampleRate()I

    move-result v2

    sget v3, Lcn/yunzhisheng/asr/u;->b:I

    sget v4, Lcn/yunzhisheng/asr/u;->c:I

    sget v5, Lcn/yunzhisheng/asr/u;->l:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/u;->m:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcn/yunzhisheng/asr/u;->m:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/u;->m:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/yunzhisheng/asr/u;->m:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    const-string v0, "RecordingThread::close audioRecord.stop()"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/u;->m:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/u;->m:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    const-string v0, "RecordingThread::close audioRecord.release()"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/u;->m:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v2, p0, Lcn/yunzhisheng/asr/u;->m:Landroid/media/AudioRecord;

    const-string v0, "RecordingThread::close ok"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcn/yunzhisheng/asr/u;->i:Lcn/yunzhisheng/asr/u;

    if-ne v0, p0, :cond_2

    sput-object v2, Lcn/yunzhisheng/asr/u;->i:Lcn/yunzhisheng/asr/u;

    :cond_2
    return-void
.end method

.method protected c()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/yunzhisheng/asr/u;->m:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/u;->m:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcn/yunzhisheng/asr/u;->n:[B

    iget-object v2, p0, Lcn/yunzhisheng/asr/u;->n:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    new-array v0, v1, [B

    iget-object v2, p0, Lcn/yunzhisheng/asr/u;->n:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
