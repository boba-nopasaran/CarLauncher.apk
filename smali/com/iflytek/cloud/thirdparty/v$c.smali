.class Lcom/iflytek/cloud/thirdparty/v$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/v;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lcom/iflytek/cloud/thirdparty/x;

.field private f:I

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/iflytek/cloud/SpeechError;

.field private i:J

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/v;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput v3, p0, Lcom/iflytek/cloud/thirdparty/v$c;->b:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->c:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->d:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->a(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    iput v4, p0, Lcom/iflytek/cloud/thirdparty/v$c;->f:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->h:Lcom/iflytek/cloud/SpeechError;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->i:J

    iput-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/v$c;->j:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->g:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->g:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->g:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update priority enter, target priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/v$c;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/v$c;->getPriority()I

    move-result v0

    if-eq p1, v0, :cond_2

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/v$c;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread group name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v2

    if-gt p1, v2, :cond_3

    const-string v0, "get a thread group has target priority"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v2

    if-le p1, v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "exception while set thread priority"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    const-string v0, "update priority leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->checkAccess()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "exception while improve thread group priority"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/v$c;->setPriority(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set thread priority to target, after that is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/v$c;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method private c()V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->d(Lcom/iflytek/cloud/thirdparty/v;)I

    move-result v1

    if-eq v0, v1, :cond_1

    const-wide/32 v2, 0x1d4c0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/v$c;->i:J

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->g()J

    move-result-wide v2

    const-wide/32 v4, 0xc000

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0x78000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->j:Z

    if-nez v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->j:Z

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->h()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->i:J

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/iflytek/cloud/SpeechError;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->h:Lcom/iflytek/cloud/SpeechError;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set priority, target aimic priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", real target priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->f:I

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/v$c;->b(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->f:I

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->h:Lcom/iflytek/cloud/SpeechError;

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "aimic audio writing thread enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->f:I

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/v$c;->b(I)V

    move v0, v2

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$c;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v4}, Lcom/iflytek/cloud/thirdparty/x;->f()Lcom/iflytek/cloud/thirdparty/x$a;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x1e

    if-gt v5, v3, :cond_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current buf container size in aimic thread is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v5}, Lcom/iflytek/cloud/thirdparty/x;->c()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move v3, v2

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v7, v0, v5, v1}, Lcom/iflytek/msc/AIMIC;->AIMICAudioWrite(J[BII)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1, v4}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x$a;)V

    if-eqz v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIMICAudioWrite error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/v$a;

    move-result-object v1

    new-instance v4, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v4, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move v0, v2

    move v1, v2

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v$c;->c()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v4, 0x3e8

    if-gt v4, v0, :cond_3

    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "aimic audio writing will suspend"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    const-string v0, "aimic audio writing is waked"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    move v0, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v2

    :goto_1
    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v4, Lcom/iflytek/cloud/SpeechError;

    const/16 v5, 0x4e35

    invoke-direct {v4, v5}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$c;->h:Lcom/iflytek/cloud/SpeechError;

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x10

    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcom/iflytek/cloud/thirdparty/v$c;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v4, v3

    move v3, v2

    :goto_2
    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v4, Lcom/iflytek/cloud/SpeechError;

    const/16 v5, 0x5207

    invoke-direct {v4, v5}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$c;->h:Lcom/iflytek/cloud/SpeechError;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    const-string v0, "aimic audio writing thread exited"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catch_3
    move-exception v0

    move-object v4, v0

    move v1, v2

    move v0, v2

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v4, v0

    move v0, v2

    goto :goto_2

    :catch_6
    move-exception v3

    move-object v4, v3

    move v3, v2

    goto :goto_1

    :catch_7
    move-exception v0

    move-object v4, v0

    move v1, v2

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    move v1, v2

    goto/16 :goto_0
.end method
