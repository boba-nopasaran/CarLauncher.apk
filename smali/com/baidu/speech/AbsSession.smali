.class abstract Lcom/baidu/speech/AbsSession;
.super Ljava/lang/Object;
.source "AbsSession.java"

# interfaces
.implements Lcom/baidu/speech/Console$Session;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/AbsSession$MsgFilter;
    }
.end annotation


# static fields
.field private static sSid:I


# instance fields
.field private final args:Ljava/lang/String;

.field protected final console:Lcom/baidu/speech/Console;

.field private final f1:Ljava/lang/String;

.field private final f2:Ljava/lang/String;

.field public final filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/speech/AbsSession$MsgFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final fsm:Lcom/baidu/speech/Fsm;

.field private isCanceled:Z

.field isForceCancel:Z

.field private final logger:Ljava/util/logging/Logger;

.field private final messages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/baidu/speech/Console$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private final sid:I

.field private final tag:Ljava/lang/String;

.field private workingThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/baidu/speech/AbsSession;->sSid:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/speech/Console;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/speech/Console;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/speech/AbsSession;->messages:Ljava/util/LinkedList;

    sget v0, Lcom/baidu/speech/AbsSession;->sSid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/speech/AbsSession;->sSid:I

    iput v0, p0, Lcom/baidu/speech/AbsSession;->sid:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/speech/AbsSession;->filters:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/baidu/speech/AbsSession;->console:Lcom/baidu/speech/Console;

    iput-object p3, p0, Lcom/baidu/speech/AbsSession;->f1:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/speech/AbsSession;->f2:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/speech/AbsSession;->args:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/speech/AbsSession;->tag:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/speech/AbsSession;->logger:Ljava/util/logging/Logger;

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/baidu/speech/AbsSession;->fsm:Lcom/baidu/speech/Fsm;

    return-void

    :cond_0
    new-instance v0, Lcom/baidu/speech/Fsm;

    const-string v1, "asr"

    invoke-direct {v0, v1, p5}, Lcom/baidu/speech/Fsm;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method protected static clean([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static computePower([SI)J
    .locals 12

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v3, 0x2

    div-int v5, p1, v3

    const/16 v10, 0x200

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lez v4, :cond_0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    mul-int v5, v2, v3

    aget-short v5, p0, v5

    mul-int v10, v2, v3

    aget-short v10, p0, v10

    mul-int/2addr v5, v10

    int-to-long v10, v5

    add-long/2addr v8, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    int-to-long v10, v4

    div-long v10, v8, v10

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-long v0, v10

    goto :goto_0
.end method

.method private nickname()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/speech/AbsSession;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static final readFully(Ljava/io/InputStream;[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p3, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/2addr v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final appendMsg(Lcom/baidu/speech/Console$Msg;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/baidu/speech/AbsSession;->filters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/speech/AbsSession$MsgFilter;

    invoke-interface {v1, p1}, Lcom/baidu/speech/AbsSession$MsgFilter;->accept(Lcom/baidu/speech/Console$Msg;)Z

    move-result v3

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel msg append, cause by: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".onMsg(): return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/baidu/speech/AbsSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/baidu/speech/AbsSession;->messages:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/speech/Console$Msg;->level()Ljava/util/logging/Level;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/speech/Console$Msg;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/baidu/speech/AbsSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/baidu/speech/AbsSession;->fsm:Lcom/baidu/speech/Fsm;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/speech/AbsSession;->fsm:Lcom/baidu/speech/Fsm;

    invoke-virtual {p1}, Lcom/baidu/speech/Console$Msg;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/baidu/speech/Fsm;->check(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/baidu/speech/AbsSession;->messages:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final cancel(Z)V
    .locals 4

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "cancel(), force=false"

    invoke-virtual {p0, v1, v2}, Lcom/baidu/speech/AbsSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/speech/AbsSession;->isCanceled:Z

    iput-boolean p1, p0, Lcom/baidu/speech/AbsSession;->isForceCancel:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/AbsSession;->workingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling onCancel(force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/baidu/speech/AbsSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/baidu/speech/AbsSession;->onCancel(Z)V

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called  onCancel(force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/baidu/speech/AbsSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    return-void
.end method

.method protected computePower([BI)J
    .locals 4

    div-int/lit8 v2, p2, 0x2

    new-array v0, v2, [S

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/baidu/speech/AbsSession;->computePower([SI)J

    move-result-wide v2

    return-wide v2
.end method

.method public final isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/speech/AbsSession;->isCanceled:Z

    return v0
.end method

.method public final log(Ljava/util/logging/Level;Ljava/lang/Object;)V
    .locals 6

    instance-of v1, p2, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Throwable;

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/baidu/speech/AbsSession;->logger:Ljava/util/logging/Logger;

    const-string v2, "%s-%04d-%08d  %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/baidu/speech/AbsSession;->nickname()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/baidu/speech/AbsSession;->console:Lcom/baidu/speech/Console;

    invoke-virtual {v5}, Lcom/baidu/speech/Console;->cid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/baidu/speech/AbsSession;->sid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final msg()Lcom/baidu/speech/Console$Msg;
    .locals 2

    iget-object v1, p0, Lcom/baidu/speech/AbsSession;->messages:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/speech/AbsSession;->messages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/speech/Console$Msg;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected name()Ljava/lang/String;
    .locals 4

    const-string v0, "%s-%04d-%08d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/speech/AbsSession;->nickname()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/speech/AbsSession;->console:Lcom/baidu/speech/Console;

    invoke-virtual {v3}, Lcom/baidu/speech/Console;->cid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/baidu/speech/AbsSession;->sid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancel(Z)V
    .locals 0

    return-void
.end method

.method protected abstract onExecute(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public final registerMsgFilter(Lcom/baidu/speech/AbsSession$MsgFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/AbsSession;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final run()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/baidu/speech/AbsSession;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/speech/AbsSession;->workingThread:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/baidu/speech/AbsSession;->workingThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    new-instance v3, Lcom/baidu/speech/Console$Msg;

    const-string v4, "enter"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/baidu/speech/AbsSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V

    new-instance v3, Lcom/baidu/speech/Args;

    iget-object v4, p0, Lcom/baidu/speech/AbsSession;->console:Lcom/baidu/speech/Console;

    invoke-virtual {v4}, Lcom/baidu/speech/Console;->context()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/speech/AbsSession;->f1:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/speech/AbsSession;->f2:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/baidu/speech/Args;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "args"

    iget-object v5, p0, Lcom/baidu/speech/AbsSession;->args:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/baidu/speech/Args;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/speech/Args;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/speech/Args;->create()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/speech/AbsSession;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "calling onExecute()"

    invoke-virtual {p0, v3, v4}, Lcom/baidu/speech/AbsSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/baidu/speech/AbsSession;->args:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/baidu/speech/AbsSession;->onExecute(Ljava/util/Map;Ljava/lang/String;)V

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "called  onExecute()"

    invoke-virtual {p0, v3, v4}, Lcom/baidu/speech/AbsSession;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Lcom/baidu/speech/Console$Msg;

    const-string v4, "exit"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/baidu/speech/AbsSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v7, p0, Lcom/baidu/speech/AbsSession;->workingThread:Ljava/lang/Thread;

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Lcom/baidu/speech/Console$Msg;

    const-string v4, "exit"

    invoke-direct {v3, v4, v1}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/baidu/speech/AbsSession;->appendMsg(Lcom/baidu/speech/Console$Msg;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iput-object v7, p0, Lcom/baidu/speech/AbsSession;->workingThread:Ljava/lang/Thread;

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    iput-object v7, p0, Lcom/baidu/speech/AbsSession;->workingThread:Ljava/lang/Thread;

    throw v3
.end method

.method protected sid()I
    .locals 1

    iget v0, p0, Lcom/baidu/speech/AbsSession;->sid:I

    return v0
.end method

.method public final unregisterMsgFilter(Lcom/baidu/speech/AbsSession$MsgFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/AbsSession;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
