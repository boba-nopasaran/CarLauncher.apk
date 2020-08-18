.class public Lcom/T2/T/T3/T/T/TN;
.super Ljava/util/AbstractQueue;
.source "Proguard"

# interfaces
.implements Lcom/T2/T/T3/T/T/T;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/T2/T/T3/T/T/TN$T;,
        Lcom/T2/T/T3/T/T/TN$T3;,
        Lcom/T2/T/T3/T/T/TN$T2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Lcom/T2/T/T3/T/T/T",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field transient T:Lcom/T2/T/T3/T/T/TN$T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation
.end field

.field final T2:Ljava/util/concurrent/locks/ReentrantLock;

.field transient T3:Lcom/T2/T/T3/T/T/TN$T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient TN:I

.field private final Te:I

.field private final Tw:Ljava/util/concurrent/locks/Condition;

.field private final Ty:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/T2/T/T3/T/T/TN;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T/T/TN;->Tw:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lcom/T2/T/T3/T/T/TN;->Te:I

    return-void
.end method

.method private T2(Lcom/T2/T/T3/T/T/TN$T2;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;)Z"
        }
    .end annotation

    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    iget v2, p0, Lcom/T2/T/T3/T/T/TN;->Te:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    iput-object v0, p1, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    iput-object p1, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    :goto_1
    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->Tw:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    goto :goto_1
.end method

.method private T3(Lcom/T2/T/T3/T/T/TN$T2;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;)Z"
        }
    .end annotation

    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    iget v2, p0, Lcom/T2/T/T3/T/T/TN;->Te:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    iput-object v0, p1, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    iput-object p1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    :goto_1
    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->Tw:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    goto :goto_1
.end method

.method private Tw()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v0, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    iget-object v1, v0, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    iput-object v3, v0, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    iput-object v0, v0, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    iput-object v2, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v2, :cond_1

    iput-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    :goto_1
    iget v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    :cond_1
    iput-object v3, v2, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    goto :goto_1
.end method

.method private Ty()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v1, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v1, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    iget-object v0, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    iput-object v3, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    iput-object v1, v1, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    iput-object v2, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v2, :cond_1

    iput-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    :goto_1
    iget v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    :cond_1
    iput-object v3, v2, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    goto :goto_1
.end method


# virtual methods
.method public T()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->T3()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method public T(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Tw()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v1

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/T2/T/T3/T/T/TN;->Tw:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method T(Lcom/T2/T/T3/T/T/TN$T2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;)V"
        }
    .end annotation

    iget-object v1, p1, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    iget-object v0, p1, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Tw()Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Ty()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v0, v1, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    iput-object v1, v0, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    iget v2, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    iget-object v2, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0
.end method

.method public T(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T2/T/T3/T/T/TN;->T2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public T(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    new-instance v1, Lcom/T2/T/T3/T/T/TN$T2;

    invoke-direct {v1, p1}, Lcom/T2/T/T3/T/T/TN$T2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/T2/T/T3/T/T/TN;->T2(Lcom/T2/T/T3/T/T/TN$T2;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public T2()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Tw()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/T2/T/T3/T/T/TN;->Tw:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public T2(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    new-instance v1, Lcom/T2/T/T3/T/T/TN$T2;

    invoke-direct {v1, p1}, Lcom/T2/T/T3/T/T/TN$T2;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0, v1}, Lcom/T2/T/T3/T/T/TN;->T2(Lcom/T2/T/T3/T/T/TN$T2;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public T3()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Tw()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public T3(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    new-instance v1, Lcom/T2/T/T3/T/T/TN$T2;

    invoke-direct {v1, p1}, Lcom/T2/T/T3/T/T/TN$T2;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0, v1}, Lcom/T2/T/T3/T/T/TN;->T3(Lcom/T2/T/T3/T/T/TN$T2;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public TN()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->Te()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method public TN(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    new-instance v1, Lcom/T2/T/T3/T/T/TN$T2;

    invoke-direct {v1, p1}, Lcom/T2/T/T3/T/T/TN$T2;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/T2/T/T3/T/T/TN;->T2(Lcom/T2/T/T3/T/T/TN$T2;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public Te()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    iget-object v1, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public Te(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/T2/T/T3/T/T/TN;->T(Lcom/T2/T/T3/T/T/TN$T2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v1, v1, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T2/T/T3/T/T/TN;->T(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 4

    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    :goto_0
    if-nez v0, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    iput-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    const/4 v3, 0x0

    iput v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->Ty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, v0, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    iget-object v2, v0, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/T2/T/T3/T/T/TN$T2;->T3:Lcom/T2/T/T3/T/T/TN$T2;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v1, v1, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/T2/T/T3/T/T/TN;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1
    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v3, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    iget-object v3, v3, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;->Tw()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->TN()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/T2/T/T3/T/T/TN$T3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/T2/T/T3/T/T/TN$T3;-><init>(Lcom/T2/T/T3/T/T/TN;Lcom/T2/T/T3/T/T/TN$T3;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T2/T/T3/T/T/TN;->T2(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/T2/T/T3/T/T/TN;->T(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->Te()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->T3()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/T2/T/T3/T/T/TN;->T(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T2/T/T3/T/T/TN;->TN(Ljava/lang/Object;)V

    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->Te:I

    iget v2, p0, Lcom/T2/T/T3/T/T/TN;->TN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->T()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/T2/T/T3/T/T/TN;->Te(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v1, p0, Lcom/T2/T/T3/T/T/TN;->TN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/T2/T/T3/T/T/TN;->T2()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v5, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    :goto_0
    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    :try_start_1
    iget-object v5, v4, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    aput-object v5, v0, v2

    iget-object v4, v4, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v3, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    array-length v5, p1

    iget v6, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    if-ge v5, v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    iget v6, p0, Lcom/T2/T/T3/T/T/TN;->TN:I

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;

    move v2, v1

    :goto_0
    if-nez v4, :cond_2

    array-length v5, p1

    if-le v5, v2, :cond_1

    const/4 v5, 0x0

    aput-object v5, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    :try_start_1
    iget-object v5, v4, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    aput-object v5, p1, v2

    iget-object v4, v4, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v1, p0, Lcom/T2/T/T3/T/T/TN;->T2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/T2/T/T3/T/T/TN;->T:Lcom/T2/T/T3/T/T/TN$T2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v4, "[]"

    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v0, v2, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    if-ne v0, p0, :cond_1

    const-string v0, "(this Collection)"

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/T2/T/T3/T/T/TN$T2;->T2:Lcom/T2/T/T3/T/T/TN$T2;

    if-nez v2, :cond_2

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_2
    const/16 v4, 0x2c

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method
