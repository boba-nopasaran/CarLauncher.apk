.class public Lcom/iflytek/cloud/record/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/record/b$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/cloud/record/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field private j:I

.field private volatile k:J

.field private l:Landroid/os/MemoryFile;

.field private volatile m:J

.field private volatile n:I

.field private o:Lcom/iflytek/cloud/record/b$a;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:[B

.field private s:I

.field private t:I

.field private u:I

.field private final v:F

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 7

    const/4 v6, 0x1

    const v5, 0x1d4c00

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/cloud/record/b;->a:I

    iput v6, p0, Lcom/iflytek/cloud/record/b;->b:I

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/record/b;->c:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/iflytek/cloud/record/b;->d:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/iflytek/cloud/record/b;->e:I

    iput v5, p0, Lcom/iflytek/cloud/record/b;->f:I

    iput v5, p0, Lcom/iflytek/cloud/record/b;->g:I

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->i:Landroid/content/Context;

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/record/b;->j:I

    iput-wide v2, p0, Lcom/iflytek/cloud/record/b;->k:J

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    iput-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    iput v4, p0, Lcom/iflytek/cloud/record/b;->n:I

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->r:[B

    iput v4, p0, Lcom/iflytek/cloud/record/b;->s:I

    iput v4, p0, Lcom/iflytek/cloud/record/b;->t:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/iflytek/cloud/record/b;->u:I

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/iflytek/cloud/record/b;->v:F

    iput-boolean v6, p0, Lcom/iflytek/cloud/record/b;->w:Z

    iput-object p1, p0, Lcom/iflytek/cloud/record/b;->i:Landroid/content/Context;

    iput-wide v2, p0, Lcom/iflytek/cloud/record/b;->k:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    iput p2, p0, Lcom/iflytek/cloud/record/b;->j:I

    iput-object p4, p0, Lcom/iflytek/cloud/record/b;->q:Ljava/lang/String;

    iput p5, p0, Lcom/iflytek/cloud/record/b;->u:I

    iget v0, p0, Lcom/iflytek/cloud/record/b;->j:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p3

    add-int/2addr v0, v5

    iput v0, p0, Lcom/iflytek/cloud/record/b;->g:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "min audio seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max audio buf size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/record/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/iflytek/cloud/record/b;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->p:Ljava/lang/String;

    new-instance v0, Landroid/os/MemoryFile;

    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->p:Ljava/lang/String;

    iget v2, p0, Lcom/iflytek/cloud/record/b;->g:I

    invoke-direct {v0, v1, v2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    invoke-virtual {v0, v4}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    long-to-int v1, v2

    array-length v2, p1

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    goto :goto_0
.end method

.method private c(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->r:[B

    if-nez v0, :cond_0

    mul-int/lit8 v0, p1, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->r:[B

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->r:[B

    array-length v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    iget v1, p0, Lcom/iflytek/cloud/record/b;->n:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    long-to-int v1, v2

    if-ge v1, v0, :cond_1

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    iget-object v4, p0, Lcom/iflytek/cloud/record/b;->r:[B

    iget v5, p0, Lcom/iflytek/cloud/record/b;->n:I

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iget v3, p0, Lcom/iflytek/cloud/record/b;->n:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    iput v6, p0, Lcom/iflytek/cloud/record/b;->s:I

    iput v2, p0, Lcom/iflytek/cloud/record/b;->t:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAudio leave, dataSize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", bufLen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/R;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tts.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/iflytek/cloud/record/b;->j:I

    return v0
.end method

.method public a(Landroid/media/AudioTrack;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/iflytek/cloud/record/b;->s:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/iflytek/cloud/record/b;->c(I)V

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    iget v2, p0, Lcom/iflytek/cloud/record/b;->s:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/iflytek/cloud/record/b;->t:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->s:I

    sub-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->r:[B

    iget v2, p0, Lcom/iflytek/cloud/record/b;->s:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/media/AudioTrack;->write([BII)I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/cloud/record/b;->s:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/record/b;->b(Landroid/media/AudioTrack;I)V

    :cond_1
    return-void

    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/record/b$a;

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    iget-wide v4, p0, Lcom/iflytek/cloud/record/b;->m:J

    move-object v1, p0

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/record/b$a;-><init>(Lcom/iflytek/cloud/record/b;JJII)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/iflytek/cloud/record/b;->a([B)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    iput-wide v2, v0, Lcom/iflytek/cloud/record/b$a;->b:J

    int-to-long v2, p2

    iput-wide v2, p0, Lcom/iflytek/cloud/record/b;->k:J

    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/record/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/cloud/record/b;->w:Z

    return-void
.end method

.method public a(I)Z
    .locals 6

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->k:J

    long-to-float v1, v2

    const v2, 0x3f733333    # 0.95f

    iget v3, p0, Lcom/iflytek/cloud/record/b;->u:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    const-wide/16 v4, 0x20

    div-long/2addr v2, v4

    int-to-long v4, p1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/iflytek/cloud/record/b;->m:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save to local: format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/record/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->q:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/iflytek/cloud/thirdparty/R;->a(Landroid/os/MemoryFile;JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/b;->a()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/iflytek/cloud/thirdparty/R;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/media/AudioTrack;I)V
    .locals 3

    iget v0, p0, Lcom/iflytek/cloud/record/b;->j:I

    mul-int/lit16 v0, v0, 0x1f4

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x1

    div-int/lit16 v0, v0, 0x3e8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBuffer.writeTrack writeTrackBlankBlock size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/media/AudioTrack;->write([BII)I

    return-void
.end method

.method public b(I)Z
    .locals 6

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    iget v4, p0, Lcom/iflytek/cloud/record/b;->n:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/iflytek/cloud/record/b;->t:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget v4, p0, Lcom/iflytek/cloud/record/b;->s:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iput v1, p0, Lcom/iflytek/cloud/record/b;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/record/b$a;

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    :cond_0
    return-void
.end method

.method public d()I
    .locals 4

    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    iget v2, p0, Lcom/iflytek/cloud/record/b;->s:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->k:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public e()Lcom/iflytek/cloud/record/b$a;
    .locals 8

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    iget v2, p0, Lcom/iflytek/cloud/record/b;->s:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-long v2, v0

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    iget-wide v0, v0, Lcom/iflytek/cloud/record/b$a;->a:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    iget-wide v0, v0, Lcom/iflytek/cloud/record/b$a;->b:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/record/b$a;

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    iget-wide v6, v0, Lcom/iflytek/cloud/record/b$a;->a:J

    cmp-long v0, v2, v6

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    iget-wide v6, v0, Lcom/iflytek/cloud/record/b$a;->b:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 4

    iget v0, p0, Lcom/iflytek/cloud/record/b;->u:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iflytek/cloud/record/b;->s:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/b;->j()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()Z
    .locals 4

    iget v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iflytek/cloud/record/b;->s:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 4

    iget v0, p0, Lcom/iflytek/cloud/record/b;->u:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/cloud/record/b;->w:Z

    return v0
.end method

.method public j()V
    .locals 1

    const-string v0, "deleteFile"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
