.class public Lcn/yunzhisheng/tts/online/t;
.super Lcn/yunzhisheng/tts/online/k;


# static fields
.field public static final c:Ljava/lang/String; = "TTSPlayThread"

.field public static final d:I = 0x1f4

.field private static final e:Ljava/text/SimpleDateFormat;

.field private static f:I


# instance fields
.field private g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcn/yunzhisheng/tts/online/g;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_HH_mm_ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcn/yunzhisheng/tts/online/t;->e:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x64

    sput v0, Lcn/yunzhisheng/tts/online/t;->f:I

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcn/yunzhisheng/tts/online/k;-><init>(Z)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/t;->g:Ljava/util/concurrent/BlockingQueue;

    const/16 v0, 0x1f4

    iput v0, p0, Lcn/yunzhisheng/tts/online/t;->h:I

    iput-boolean v1, p0, Lcn/yunzhisheng/tts/online/t;->j:Z

    iput v1, p0, Lcn/yunzhisheng/tts/online/t;->k:I

    iput p2, p0, Lcn/yunzhisheng/tts/online/t;->l:I

    return-void
.end method

.method public static a([S)[B
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-short v2, p0, v0

    mul-int/lit8 v3, v0, 0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    const v4, 0xff00

    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/tts/online/t;->j:Z

    return v0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/t;->i:Lcn/yunzhisheng/tts/online/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/yunzhisheng/tts/online/g;->a()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/t;->i:Lcn/yunzhisheng/tts/online/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/yunzhisheng/tts/online/g;->b()V

    :cond_0
    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/yunzhisheng/tts/online/t;->e:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Z
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/tts/online/t;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcn/yunzhisheng/tts/online/g;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/t;->i:Lcn/yunzhisheng/tts/online/g;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/t;->m:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 2

    iget v0, p0, Lcn/yunzhisheng/tts/online/t;->k:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/yunzhisheng/tts/online/t;->k:I

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/t;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)V
    .locals 1

    const/16 v0, 0x3a98

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcn/yunzhisheng/tts/online/t;->h:I

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/t;->i:Lcn/yunzhisheng/tts/online/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/yunzhisheng/tts/online/g;->a(I)V

    :cond_0
    return-void
.end method

.method public d()Lcn/yunzhisheng/tts/online/g;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/t;->i:Lcn/yunzhisheng/tts/online/g;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/online/t;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/online/t;->g()V

    int-to-long v0, p1

    :try_start_0
    invoke-super {p0, v0, v1}, Lcn/yunzhisheng/tts/online/k;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/tts/online/t;->j:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/t;->i:Lcn/yunzhisheng/tts/online/g;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/t;->i:Lcn/yunzhisheng/tts/online/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/tts/online/t;->j:Z

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/online/t;->b()V

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcn/yunzhisheng/tts/online/k;->run()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/online/t;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/t;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/t;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/t;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    :cond_1
    :goto_0
    new-instance v3, Lcn/yunzhisheng/tts/online/c;

    iget v0, p0, Lcn/yunzhisheng/tts/online/t;->l:I

    const/16 v4, 0x3e80

    const/4 v5, 0x2

    invoke-direct {v3, v0, v4, v5, v6}, Lcn/yunzhisheng/tts/online/c;-><init>(IIII)V

    invoke-virtual {v3}, Lcn/yunzhisheng/tts/online/c;->a()V

    iget v0, p0, Lcn/yunzhisheng/tts/online/t;->h:I

    mul-int/lit16 v0, v0, 0x3e80

    mul-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0x3e8

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcn/yunzhisheng/tts/online/t;->a()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/t;->h()Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcn/yunzhisheng/tts/online/t;->k:I

    if-ge v4, v0, :cond_3

    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, 0x65

    invoke-virtual {v3}, Lcn/yunzhisheng/tts/online/c;->b()V

    invoke-virtual {v3}, Lcn/yunzhisheng/tts/online/c;->c()V

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lcn/yunzhisheng/tts/online/t;->c(I)V

    iput v2, p0, Lcn/yunzhisheng/tts/online/t;->k:I

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/t;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/t;->i()V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcn/yunzhisheng/tts/online/t;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/t;->g:Ljava/util/concurrent/BlockingQueue;

    sget v4, Lcn/yunzhisheng/tts/online/t;->f:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_6

    invoke-virtual {v3, v0}, Lcn/yunzhisheng/tts/online/c;->a([B)I

    move-result v4

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/online/t;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTSPlayThread write:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/yunzhisheng/utils/c;->a(Ljava/lang/String;)V

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcn/yunzhisheng/tts/online/c;->b()V

    invoke-virtual {v3}, Lcn/yunzhisheng/tts/online/c;->c()V

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_4
    throw v0

    :cond_6
    :try_start_6
    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/t;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_7
    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/t;->j()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    invoke-virtual {v3}, Lcn/yunzhisheng/tts/online/c;->b()V

    invoke-virtual {v3}, Lcn/yunzhisheng/tts/online/c;->c()V

    if-eqz v1, :cond_9

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move v0, v2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    goto/16 :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_2
.end method
