.class public Lcom/iflytek/cloud/thirdparty/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/x$a;,
        Lcom/iflytek/cloud/thirdparty/x$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/iflytek/cloud/thirdparty/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/iflytek/cloud/thirdparty/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:Z

.field private k:J

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JIJZZ)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    const/16 v0, 0x200

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    const-wide/16 v0, 0x1400

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->d:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->j:Z

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->k:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    iput-wide p4, p0, Lcom/iflytek/cloud/thirdparty/x;->d:J

    iput p3, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    iput-boolean p6, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    iput-boolean p7, p0, Lcom/iflytek/cloud/thirdparty/x;->j:Z

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->k:J

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/x;->l()V

    :cond_0
    return-void
.end method

.method private i()Lcom/iflytek/cloud/thirdparty/x$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/x;->j()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-nez v2, :cond_3

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    new-array v0, v0, [B

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    :goto_1
    new-instance v2, Lcom/iflytek/cloud/thirdparty/x$a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/iflytek/cloud/thirdparty/x$a;-><init>([BLjava/lang/Integer;)V

    move-object v0, v2

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current buffer len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", has match max len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private j()Z
    .locals 4

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->k:J

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/x;->a()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    sub-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->a()V

    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    :cond_1
    return-void
.end method

.method private l()V
    .locals 6

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->d:J

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    new-array v2, v2, [B

    new-instance v3, Lcom/iflytek/cloud/thirdparty/x$a;

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/iflytek/cloud/thirdparty/x$a;-><init>([BLjava/lang/Integer;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 7

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    mul-int/lit8 v0, v0, 0x2

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->k:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/x$a;)V
    .locals 6

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/x$a;->a()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v3, 0x0

    add-int v4, p2, p3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v4, :cond_0

    if-ltz p3, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-eqz v0, :cond_1

    if-lez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v5

    const-wide/16 v0, 0x0

    :try_start_0
    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_9

    if-lez p3, :cond_9

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->j:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    sub-long/2addr v0, v6

    int-to-long v6, p3

    add-long/2addr v0, v6

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", has over max len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    move-object v1, v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v2, v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_7

    :cond_4
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/x;->i()Lcom/iflytek/cloud/thirdparty/x$a;

    move-result-object v0

    move-object v1, v0

    move v2, v3

    :cond_5
    :goto_0
    if-ge p2, v4, :cond_9

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-eqz v0, :cond_8

    invoke-virtual {v1, p1}, Lcom/iflytek/cloud/thirdparty/x$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p3

    :goto_1
    add-int/2addr p2, v0

    add-int v6, v2, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/iflytek/cloud/thirdparty/x$a;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/x;->k()V

    if-ge p2, v4, :cond_5

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/x;->i()Lcom/iflytek/cloud/thirdparty/x$a;

    move-result-object v0

    move-object v1, v0

    move v2, v3

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_8
    sub-int v6, v4, p2

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, p2, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_9
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b()J
    .locals 6

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    sub-long/2addr v2, v4

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()I
    .locals 2

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->a()V

    :cond_0
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public e()Z
    .locals 2

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Lcom/iflytek/cloud/thirdparty/x$a;
    .locals 8

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()J
    .locals 4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    mul-int/2addr v0, v2

    int-to-long v2, v0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->d:J

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
