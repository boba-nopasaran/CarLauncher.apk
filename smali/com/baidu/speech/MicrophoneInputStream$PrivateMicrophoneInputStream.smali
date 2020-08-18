.class Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/MicrophoneInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivateMicrophoneInputStream"
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x28000

.field private static final sData:[B

.field private static sInnerSourceInputStream:Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;

.field private static sLimit:I

.field private static sUsingCount:I

.field private static throwedException:Ljava/io/IOException;


# instance fields
.field private volatile closed:Z

.field debugCount:I

.field debugLast:I

.field private position:J

.field private sample:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x1e0000

    new-array v0, v0, [B

    sput-object v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sData:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;-><init>(ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v1, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->debugCount:I

    iput v1, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->debugLast:I

    iput p1, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sample:I

    const-class v6, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    monitor-enter v6

    :try_start_0
    sget-object v1, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sInnerSourceInputStream:Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;

    if-nez v1, :cond_1

    if-nez p2, :cond_2

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x2

    const v5, 0x28000

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recorder start failed, RecordingState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;

    invoke-direct {v1, v0}, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;-><init>(Landroid/media/AudioRecord;)V

    sput-object v1, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sInnerSourceInputStream:Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;

    :goto_0
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "glb-record"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget v1, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sUsingCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sUsingCount:I

    sget v1, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sLimit:I

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position(J)Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    invoke-static {}, Lcom/baidu/speech/MicrophoneInputStream;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new instance(), sUsingCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sUsingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sInnerSourceInputStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sInnerSourceInputStream:Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_2
    new-instance v1, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;

    invoke-direct {v1, p2}, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v1, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sInnerSourceInputStream:Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private ready()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/16 v5, 0x140

    new-array v0, v5, [B

    sget-object v5, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sInnerSourceInputStream:Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;

    invoke-virtual {v5, v0}, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->read([B)I

    move-result v4

    sget v5, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sLimit:I

    sget-object v6, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sData:[B

    array-length v6, v6

    rem-int v3, v5, v6

    sget-object v5, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sData:[B

    array-length v5, v5

    sub-int/2addr v5, v3

    array-length v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    array-length v5, v0

    sub-int v2, v5, v1

    if-lez v1, :cond_0

    sget-object v5, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sData:[B

    invoke-static {v0, v7, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-lez v2, :cond_1

    sget-object v5, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sData:[B

    invoke-static {v0, v7, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    sget v5, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sLimit:I

    add-int/2addr v5, v4

    sput v5, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sLimit:I

    invoke-static {}, Lcom/baidu/speech/MicrophoneInputStream;->access$000()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "called ready(), sLimit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sLimit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public branch()Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/baidu/speech/MicrophoneInputStream;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "called branch():MicrophoneInputStream"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    iget v1, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sample:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;-><init>(ILjava/io/InputStream;)V

    invoke-virtual {p0}, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position(J)Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->closed:Z

    if-nez v0, :cond_1

    const-class v1, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sUsingCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sUsingCount:I

    sget v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sUsingCount:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sInnerSourceInputStream:Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;

    invoke-virtual {v0}, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sInnerSourceInputStream:Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;

    const/4 v0, 0x0

    sput v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sLimit:I

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->throwedException:Ljava/io/IOException;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/baidu/speech/MicrophoneInputStream;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close(), sUsingCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sUsingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sInnerSourceInputStream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sInnerSourceInputStream:Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->closed:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public globalPosition()I
    .locals 1

    sget v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sLimit:I

    return v0
.end method

.method public position()J
    .locals 6

    iget-wide v0, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position:J

    :goto_0
    const-wide/16 v2, 0x4

    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public position(J)Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;
    .locals 9

    const-wide/16 v6, 0x0

    move-wide v0, p1

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/baidu/speech/MicrophoneInputStream;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-wide/16 v2, 0x4

    rem-long v2, v0, v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iput-wide v0, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position:J

    invoke-static {}, Lcom/baidu/speech/MicrophoneInputStream;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", by raw postion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object p0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v6, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sData:[B

    array-length v6, v6

    if-le p3, v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string v7, "buffer too long"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    sget-object v6, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->throwedException:Ljava/io/IOException;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->throwedException:Ljava/io/IOException;

    throw v6

    :cond_1
    iget-boolean v6, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->closed:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/io/IOException;

    const-string v7, "mic stream closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/16 v6, 0x1e

    if-ge v1, v6, :cond_3

    sget v6, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sLimit:I

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position:J

    sub-long/2addr v6, v8

    int-to-long v8, p3

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    const-wide/16 v6, 0x1

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/io/InterruptedIOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    const/4 v5, 0x0

    sget v6, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sLimit:I

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position:J

    sub-long/2addr v6, v8

    int-to-long v8, p3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    iget-wide v6, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position:J

    sget-object v8, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sData:[B

    array-length v8, v8

    int-to-long v8, v8

    rem-long/2addr v6, v8

    long-to-int v2, v6

    sget-object v6, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sData:[B

    array-length v6, v6

    sub-int/2addr v6, v2

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v4, p3, v3

    sget-object v6, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sData:[B

    invoke-static {v6, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v4, :cond_4

    sget-object v6, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sData:[B

    const/4 v7, 0x0

    add-int v8, p2, v3

    invoke-static {v6, v7, p1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int v5, v3, v4

    iget-wide v6, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position:J

    :cond_5
    iget v6, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->debugCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->debugCount:I

    iget v6, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->debugCount:I

    iget v7, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->debugLast:I

    if-le v6, v7, :cond_6

    invoke-static {}, Lcom/baidu/speech/MicrophoneInputStream;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mic:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->debugCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget v6, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->debugLast:I

    add-int/lit16 v6, v6, 0x168

    iput v6, p0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->debugLast:I

    :cond_6
    return v5
.end method

.method public run()V
    .locals 2

    :goto_0
    sget v1, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->sUsingCount:I

    if-lez v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->ready()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-object v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->throwedException:Ljava/io/IOException;

    goto :goto_0

    :cond_0
    return-void
.end method
