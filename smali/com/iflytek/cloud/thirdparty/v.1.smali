.class public Lcom/iflytek/cloud/thirdparty/v;
.super Lcom/iflytek/cloud/thirdparty/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/v$b;,
        Lcom/iflytek/cloud/thirdparty/v$a;,
        Lcom/iflytek/cloud/thirdparty/v$c;
    }
.end annotation


# static fields
.field private static d:Lcom/iflytek/cloud/thirdparty/v;

.field private static final e:Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private final h:[B

.field private final i:Lcom/iflytek/cloud/thirdparty/x;

.field private final j:Lcom/iflytek/cloud/thirdparty/v$c;

.field private k:I

.field private final l:Lcom/iflytek/cloud/thirdparty/v$a;

.field private m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:Lcom/iflytek/cloud/thirdparty/w;

.field private final r:Lcom/iflytek/cloud/thirdparty/v$b;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/v;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v11, 0x3e80

    const/16 v10, 0x600

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/u;-><init>()V

    const v0, 0xc000

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->a:I

    const v0, 0x78000

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->b:I

    const/high16 v0, 0xf0000

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->c:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    iput-boolean v6, p0, Lcom/iflytek/cloud/thirdparty/v;->g:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->h:[B

    new-instance v0, Lcom/iflytek/cloud/thirdparty/x;

    const-wide/32 v1, 0x78000

    const v3, 0xc000

    const-wide/32 v4, 0x3c000

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/x;-><init>(JIJZZ)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v$c;

    const-string v1, "AIMicAudioWritingThread"

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/thirdparty/v$c;-><init>(Lcom/iflytek/cloud/thirdparty/v;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    iput v9, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-direct {v0, v8}, Lcom/iflytek/cloud/thirdparty/v$a;-><init>(Lcom/iflytek/cloud/thirdparty/v$1;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->m:I

    iput v11, p0, Lcom/iflytek/cloud/thirdparty/v;->n:I

    iput v9, p0, Lcom/iflytek/cloud/thirdparty/v;->o:I

    iput v10, p0, Lcom/iflytek/cloud/thirdparty/v;->p:I

    iput-object v8, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-direct {v0, p0, v8}, Lcom/iflytek/cloud/thirdparty/v$b;-><init>(Lcom/iflytek/cloud/thirdparty/v;Lcom/iflytek/cloud/thirdparty/v$1;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Lcom/iflytek/cloud/thirdparty/v$b;

    iput v11, p0, Lcom/iflytek/cloud/thirdparty/v;->s:I

    iput v9, p0, Lcom/iflytek/cloud/thirdparty/v;->t:I

    iput v10, p0, Lcom/iflytek/cloud/thirdparty/v;->u:I

    const/4 v0, -0x3

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->v:I

    iput-boolean v6, p0, Lcom/iflytek/cloud/thirdparty/v;->w:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic constructor enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_7

    const-string v0, "lib_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_7

    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    const/16 v1, 0x3d

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/iflytek/msc/AIMIC;->loadLibrary(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-static {v0, v1}, Lcom/iflytek/msc/AIMIC;->AIMICNew([BLcom/iflytek/msc/AIMIC$Listener;)I

    move-result v6

    if-eqz v6, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AIMICNew return error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iflytek/msc/AIMIC;->AIMICDestroy(J)I

    :cond_3
    if-eqz v6, :cond_4

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v6}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->g:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$c;->start()V

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    if-ne v9, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    const-wide/32 v2, 0x78000

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/x;->a(J)V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic constructor leave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :cond_7
    move-object v0, v8

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/x;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    return-object v0
.end method

.method private b([BII)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/x;->a([BII)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/v$c;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$c;->a()Lcom/iflytek/cloud/SpeechError;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/v$c;->b()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x2

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    if-ne v0, v2, :cond_2

    const-string v0, "write audio too soon, current audios  in buffer will be ignored!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "write audio too soon, please wait for a second, and try again!"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    const/16 v1, 0x6986

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x6985

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x697e

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "write audio too soon, please wait for a second, and try again!"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x5207

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/v;)Z
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/v$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/v;
    .locals 3

    const-string v0, "aimic createAIMic enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/v;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/iflytek/cloud/thirdparty/v;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;
    :try_end_1
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic createAIMic leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/cloud/thirdparty/v;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()Lcom/iflytek/cloud/thirdparty/v;
    .locals 3

    const-string v0, "aimic getAIMic enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/iflytek/cloud/thirdparty/v;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic getAIMic leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/iflytek/cloud/thirdparty/v;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->AIMICGetVersion()[B

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/O;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    :try_start_1
    monitor-exit v2

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static j()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->AIMICGetChannel()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->g:Z

    return v0
.end method

.method private l()I
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x6980

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->k()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/w;->a()Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->d()I

    move-result v0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/v;->t:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->e()I

    move-result v0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/v;->s:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->f()I

    move-result v0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/v;->u:I

    if-eq v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->c()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    :cond_1
    const-string v0, "create new audio recorder"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v;->t:I

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/v;->s:I

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/v;->u:I

    invoke-static {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/w;->a(III)Lcom/iflytek/cloud/thirdparty/w;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Lcom/iflytek/cloud/thirdparty/v$b;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/w;->g()Lcom/iflytek/cloud/thirdparty/w$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Current record listener is not this, recorder will be stoped."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->c()V

    :cond_3
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac$a;->b:Lcom/iflytek/cloud/thirdparty/ac$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ac$a;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac;->b()Lcom/iflytek/cloud/thirdparty/ac$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/ac$a;->ordinal()I

    move-result v3

    if-lt v0, v3, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/thirdparty/w;->a(Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->b()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "start audio recording."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/w;->a(Lcom/iflytek/cloud/thirdparty/w$b;)I

    move-result v1

    :goto_1
    return v1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "audio recorder is recording."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 v1, 0x697d

    goto :goto_1

    :cond_7
    move v1, v0

    goto :goto_1
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_0

    const-string v0, "stop audio record"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->c()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/16 v1, 0x6980

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic  setParameter enter key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "aimic  setParameter sync"

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const-string v3, "aimic_asr_buffer_time"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/v;->m:I

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/v;->m:I

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/thirdparty/v$a;->a(I)V

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic  setParameter leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    :try_start_2
    const-string v3, "alsa_rate"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/v;->s:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x4e35

    goto :goto_1

    :cond_1
    :try_start_4
    const-string v3, "alsa_card"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/v;->t:I

    goto :goto_0

    :cond_2
    const-string v3, "alsa_per_size"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/v;->u:I

    goto :goto_0

    :cond_3
    const-string v3, "alsa_save"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->r:Lcom/iflytek/cloud/thirdparty/v$b;

    invoke-direct {p0, p2}, Lcom/iflytek/cloud/thirdparty/v;->d(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/thirdparty/v$b;->a(Z)V

    goto :goto_0

    :cond_4
    const-string v3, "audio_source"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/v;->v:I

    goto :goto_0

    :cond_5
    const-string v0, "buf_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v;->k:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    const-wide/32 v4, 0xf0000

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/x;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/cloud/thirdparty/x;->a(J)V

    :goto_2
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "aimic  setParameter Native"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v0

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/iflytek/msc/AIMIC;->AIMICSetParam(J[B[B)I

    move-result v0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    const-wide/32 v4, 0x78000

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/x;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/cloud/thirdparty/x;->a(J)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    const-string v0, "thread_priority"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "aimic  setParameter Native"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v0

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/iflytek/msc/AIMIC;->AIMICSetParam(J[B[B)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v3, v1}, Lcom/iflytek/cloud/thirdparty/v$c;->a(I)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "aimic  setParameter Native"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v0

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {p2}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/iflytek/msc/AIMIC;->AIMICSetParam(J[B[B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x5207

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a([BII)I
    .locals 3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/v;->b([BII)I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/16 v0, 0x6980

    const-string v2, "write audio while not init!"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/u$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  registerListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/thirdparty/u$a;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "aimic  registerListener leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/u$b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  registerListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/thirdparty/u$b;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "aimic  setParameter leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(ZI)V
    .locals 3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Z)V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/ac$a;->values()[Lcom/iflytek/cloud/thirdparty/ac$a;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Lcom/iflytek/cloud/thirdparty/ac$a;)V

    invoke-static {p1, p2}, Lcom/iflytek/msc/AIMIC;->AIMICDebugLog(ZI)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac$a;->b:Lcom/iflytek/cloud/thirdparty/ac$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ac$a;->ordinal()I

    move-result v0

    if-lt v0, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/thirdparty/w;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "aimic  getParameter enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->h:[B

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->k()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v4

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/O;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v4, v5, v3, v1}, Lcom/iflytek/msc/AIMIC;->AIMICGetParam(J[B[B)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/O;->b([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic  getParameter leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get parameter error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 4

    const-string v0, "aimic destroy enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->g:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->c()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/w;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$c;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->j:Lcom/iflytek/cloud/thirdparty/v$c;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/v;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sget-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_3

    :try_start_3
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/iflytek/msc/AIMIC;->AIMICDestroy(J)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/iflytek/cloud/thirdparty/v;->d:Lcom/iflytek/cloud/thirdparty/v;

    :cond_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v0, "aimic destroy leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public b(Lcom/iflytek/cloud/thirdparty/u$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  unregisterListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/v$a;->b(Lcom/iflytek/cloud/thirdparty/u$a;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/v;->e()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "aimic  unregisterListener leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/iflytek/cloud/thirdparty/u$b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aimic  unregisterListener enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/v$a;->b(Lcom/iflytek/cloud/thirdparty/u$b;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/v;->e()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "aimic  unregisterListener leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()I
    .locals 4

    const-string v0, "aimic  reset enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/iflytek/msc/AIMIC;->AIMICResetEng(J)I
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic  reset leave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    const/16 v0, 0x6980

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x4e35

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x5207

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public d()I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "aimic  startListening enter"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/16 v1, 0x6980

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/v;->w:Z

    if-nez v3, :cond_0

    const-string v3, "aimic  startListening clear old datas."

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/v;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, -0x3

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/v;->v:I

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->l()I

    move-result v1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->w:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aimic  startListening leave: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v1, -0x1

    :try_start_1
    iget v3, p0, Lcom/iflytek/cloud/thirdparty/v;->v:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->q:Lcom/iflytek/cloud/thirdparty/w;

    if-eqz v1, :cond_4

    const/16 v1, 0x6986

    const-string v3, "startListening failed, current internal recorder is not stoped!"

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x6984

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startListening failed, invalid audio source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/v;->v:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    const-string v0, "aimic  stopListening enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v;->l:Lcom/iflytek/cloud/thirdparty/v$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AIMic Listener is empty, audio recorder will stop recording."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v;->m()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v;->w:Z

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "aimic  stopListening leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
