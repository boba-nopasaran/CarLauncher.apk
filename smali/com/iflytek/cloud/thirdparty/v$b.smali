.class Lcom/iflytek/cloud/thirdparty/v$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/v;

.field private b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Lcom/iflytek/cloud/thirdparty/x;

.field private final g:Lcom/iflytek/cloud/thirdparty/x;

.field private volatile h:Lcom/iflytek/cloud/thirdparty/x;

.field private volatile i:Lcom/iflytek/cloud/thirdparty/x;

.field private final j:Ljava/lang/String;

.field private k:Ljava/lang/Thread;

.field private l:Z

.field private m:Z


# direct methods
.method private constructor <init>(Lcom/iflytek/cloud/thirdparty/v;)V
    .locals 8

    const-wide/32 v1, 0x7d000

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const v3, 0xc000

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v7, p0, Lcom/iflytek/cloud/thirdparty/v$b;->b:I

    iput v3, p0, Lcom/iflytek/cloud/thirdparty/v$b;->c:I

    const v0, 0x7d000

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->d:I

    const v0, 0x3a98000

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->e:I

    new-instance v0, Lcom/iflytek/cloud/thirdparty/x;

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/x;-><init>(JIJZZ)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->f:Lcom/iflytek/cloud/thirdparty/x;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/x;

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/x;-><init>(JIJZZ)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->g:Lcom/iflytek/cloud/thirdparty/x;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->f:Lcom/iflytek/cloud/thirdparty/x;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->h:Lcom/iflytek/cloud/thirdparty/x;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->g:Lcom/iflytek/cloud/thirdparty/x;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->i:Lcom/iflytek/cloud/thirdparty/x;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/aimic_alsa.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->k:Ljava/lang/Thread;

    iput-boolean v7, p0, Lcom/iflytek/cloud/thirdparty/v$b;->l:Z

    iput-boolean v7, p0, Lcom/iflytek/cloud/thirdparty/v$b;->m:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/cloud/thirdparty/v;Lcom/iflytek/cloud/thirdparty/v$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/v$b;-><init>(Lcom/iflytek/cloud/thirdparty/v;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v$b;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->k:Ljava/lang/Thread;

    return-object p1
.end method

.method private a(IZ)V
    .locals 8

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$b;->h:Lcom/iflytek/cloud/thirdparty/x;

    monitor-enter v2

    if-nez p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->h:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->b()J

    move-result-wide v4

    int-to-long v6, p1

    add-long/2addr v4, v6

    const-wide/32 v6, 0x7d000

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->h:Lcom/iflytek/cloud/thirdparty/x;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->g:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->f:Lcom/iflytek/cloud/thirdparty/x;

    :goto_0
    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->h:Lcom/iflytek/cloud/thirdparty/x;

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->i:Lcom/iflytek/cloud/thirdparty/x;

    monitor-enter v1

    :try_start_1
    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->i:Lcom/iflytek/cloud/thirdparty/x;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->k:Ljava/lang/Thread;

    monitor-enter v1

    :try_start_2
    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v$b;->k:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->h:Lcom/iflytek/cloud/thirdparty/x;

    monitor-enter v1

    const-wide/16 v2, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->h:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const-string v0, "Error: buffer is not null when exchanged!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/v$a;

    move-result-object v0

    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    const/16 v3, 0x5207

    invoke-direct {v2, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_5
    return-void

    :cond_6
    :try_start_4
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->g:Lcom/iflytek/cloud/thirdparty/x;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v$b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->m:Z

    return v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v$b;Ljava/io/RandomAccessFile;Landroid/os/MemoryFile;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/v$b;->a(Ljava/io/RandomAccessFile;Landroid/os/MemoryFile;II)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/io/RandomAccessFile;Landroid/os/MemoryFile;II)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    add-int v2, p3, p4

    const/high16 v3, 0x10000

    :try_start_0
    new-array v3, v3, [B

    :goto_0
    if-le v2, p3, :cond_2

    array-length v4, v3

    sub-int v5, v2, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p2, v3, p3, v5, v4}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result v5

    if-eq v5, v4, :cond_0

    const-string v1, "saveFileFromMemory error: read bytes length error!"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_0
    add-int/2addr p3, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v1, "saveFileFromMemory error: arguments error"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/v$b;)Lcom/iflytek/cloud/thirdparty/x;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->i:Lcom/iflytek/cloud/thirdparty/x;

    return-object v0
.end method

.method private b([BI)V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->k:Ljava/lang/Thread;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->f:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->g:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->f:Lcom/iflytek/cloud/thirdparty/x;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->h:Lcom/iflytek/cloud/thirdparty/x;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->g:Lcom/iflytek/cloud/thirdparty/x;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->i:Lcom/iflytek/cloud/thirdparty/x;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->m:Z

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v$b;->c()V

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/iflytek/cloud/thirdparty/v$b;->a(IZ)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->h:Lcom/iflytek/cloud/thirdparty/x;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->h:Lcom/iflytek/cloud/thirdparty/x;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Lcom/iflytek/cloud/thirdparty/x;->a([BII)V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/v$a;

    move-result-object v1

    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    const/16 v3, 0x5207

    invoke-direct {v2, v0, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/v$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->j:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v$b$1;

    const-string v1, "AlsaAudioSavingThread"

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/v$b$1;-><init>(Lcom/iflytek/cloud/thirdparty/v$b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->k:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->m:Z

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/v$b;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/v$b;->l:Z

    return-void
.end method

.method public a([BI)V
    .locals 3

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/v$b;->b([BI)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->a:Lcom/iflytek/cloud/thirdparty/v;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/iflytek/cloud/thirdparty/v;->a([BII)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->b:I

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$b;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/v$a;

    move-result-object v0

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/v$b;->b:I

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_1
    return-void
.end method
