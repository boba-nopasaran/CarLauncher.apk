.class public Lcom/iflytek/cloud/record/a;
.super Lcom/iflytek/cloud/record/PcmRecorder;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private final f:S

.field private g:I

.field private h:I

.field private i:[B

.field private j:Ljava/io/RandomAccessFile;

.field private k:Ljava/lang/String;

.field private l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 3

    const/16 v2, 0x28

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput v0, p0, Lcom/iflytek/cloud/record/a;->a:I

    iput v0, p0, Lcom/iflytek/cloud/record/a;->b:I

    iput v0, p0, Lcom/iflytek/cloud/record/a;->c:I

    iput-boolean v0, p0, Lcom/iflytek/cloud/record/a;->d:Z

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/record/a;->e:I

    const/16 v0, 0x10

    iput-short v0, p0, Lcom/iflytek/cloud/record/a;->f:S

    iput v2, p0, Lcom/iflytek/cloud/record/a;->g:I

    iput v2, p0, Lcom/iflytek/cloud/record/a;->h:I

    iput-object v1, p0, Lcom/iflytek/cloud/record/a;->i:[B

    iput-object v1, p0, Lcom/iflytek/cloud/record/a;->j:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Lcom/iflytek/cloud/record/a;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    iput p1, p0, Lcom/iflytek/cloud/record/a;->e:I

    iput p2, p0, Lcom/iflytek/cloud/record/a;->g:I

    iput p2, p0, Lcom/iflytek/cloud/record/a;->h:I

    iput-object p4, p0, Lcom/iflytek/cloud/record/a;->k:Ljava/lang/String;

    return-void
.end method

.method private a()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/record/a;->j:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/iflytek/cloud/record/a;->b:I

    iget v2, p0, Lcom/iflytek/cloud/record/a;->a:I

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/iflytek/cloud/record/a;->b:I

    iget-object v1, p0, Lcom/iflytek/cloud/record/a;->j:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/iflytek/cloud/record/a;->i:[B

    iget v3, p0, Lcom/iflytek/cloud/record/a;->b:I

    iget-object v4, p0, Lcom/iflytek/cloud/record/a;->i:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/record/a;->a:I

    iget v1, p0, Lcom/iflytek/cloud/record/a;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e26

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_2
    iget v1, p0, Lcom/iflytek/cloud/record/a;->a:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/iflytek/cloud/record/a;->a:I

    iget v1, p0, Lcom/iflytek/cloud/record/a;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/iflytek/cloud/record/a;->c:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/iflytek/cloud/record/a;->c:I

    :goto_1
    iget-object v1, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    iget-object v2, p0, Lcom/iflytek/cloud/record/a;->i:[B

    iget v3, p0, Lcom/iflytek/cloud/record/a;->b:I

    invoke-interface {v1, v2, v3, v0}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordBuffer([BII)V

    iget v1, p0, Lcom/iflytek/cloud/record/a;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/iflytek/cloud/record/a;->b:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/iflytek/cloud/record/a;->a:I

    iget v1, p0, Lcom/iflytek/cloud/record/a;->b:I

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->j:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    const-string v0, "release record begin"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->j:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/iflytek/cloud/record/a;->j:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordReleased()V

    iput-object v1, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    :cond_0
    const-string v0, "release record over"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->i:[B

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/iflytek/cloud/record/a;->i:[B

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(SII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    const/16 v0, 0x10

    mul-int/lit8 v1, p2, 0x28

    div-int/lit16 v1, v1, 0x3e8

    mul-int/2addr v1, p1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/iflytek/cloud/record/a;->c:I

    iget v0, p0, Lcom/iflytek/cloud/record/a;->c:I

    mul-int/lit8 v0, v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/cloud/record/a;->i:[B

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/iflytek/cloud/record/a;->k:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/a;->j:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e26

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/iflytek/cloud/record/a;->b()V

    invoke-super {p0}, Lcom/iflytek/cloud/record/PcmRecorder;->finalize()V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Lcom/iflytek/cloud/record/a;->e:I

    iget v2, p0, Lcom/iflytek/cloud/record/a;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/cloud/record/a;->a(SII)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordStarted(Z)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/iflytek/cloud/record/a;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/cloud/record/a;->a()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/record/a;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/cloud/record/a;->b()V

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/iflytek/cloud/record/a;->h:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/record/a;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e26

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1
.end method

.method public startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    iput-object p1, p0, Lcom/iflytek/cloud/record/a;->l:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/a;->setPriority(I)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/a;->start()V

    return-void
.end method

.method public stopRecord(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/record/a;->d:Z

    return-void
.end method
