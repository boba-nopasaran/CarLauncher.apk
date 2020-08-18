.class Lcom/iflytek/cloud/thirdparty/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/msc/AIMIC$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/iflytek/cloud/thirdparty/u$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/iflytek/cloud/thirdparty/u$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Lcom/iflytek/cloud/thirdparty/x;

.field private final j:I

.field private k:Z

.field private l:I


# direct methods
.method private constructor <init>()V
    .locals 9

    const v8, 0x1f400

    const/16 v3, 0x200

    const/4 v7, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    const/16 v0, 0x20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->e:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->f:I

    iput v8, p0, Lcom/iflytek/cloud/thirdparty/v$a;->g:I

    iput v3, p0, Lcom/iflytek/cloud/thirdparty/v$a;->h:I

    new-instance v0, Lcom/iflytek/cloud/thirdparty/x;

    const-wide/32 v1, 0x1f400

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/thirdparty/x;-><init>(JIJZZ)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    iput v7, p0, Lcom/iflytek/cloud/thirdparty/v$a;->j:I

    iput-boolean v7, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    iput v8, p0, Lcom/iflytek/cloud/thirdparty/v$a;->l:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/cloud/thirdparty/v$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    mul-int/lit8 v0, p1, 0x20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->l:I

    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 4

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/u$b;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/iflytek/cloud/thirdparty/u$b;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/u$a;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/iflytek/cloud/thirdparty/u$a;->a(I)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/u$a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/u$b;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    return-void
.end method

.method public b(Lcom/iflytek/cloud/thirdparty/u$a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/iflytek/cloud/thirdparty/u$b;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRecogAudio([BIILjava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->b()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v2, v0

    iget v5, p0, Lcom/iflytek/cloud/thirdparty/v$a;->l:I

    int-to-long v6, v5

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " matched max buffering len: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", will be clean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    :cond_1
    :goto_0
    monitor-exit v4

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/iflytek/cloud/thirdparty/x;->a([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x5207

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/u$a;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->e()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->f()Lcom/iflytek/cloud/thirdparty/x$a;

    move-result-object v1

    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v1, v2, v6, v7}, Lcom/iflytek/cloud/thirdparty/u$a;->b([BIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x$a;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->f()Lcom/iflytek/cloud/thirdparty/x$a;

    move-result-object v1

    move-object v3, v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->i:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    :cond_5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/u$a;->b([BIILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public onWakeupAudio([BIILjava/lang/Object;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/u$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/u$b;->a([BIILjava/lang/Object;)V

    goto :goto_0

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

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x5207

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    :goto_1
    return-void

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onWakeupMsg(III[BI[BI[BI)V
    .locals 12

    :try_start_0
    const-string v0, "onWakeupMsg enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$a;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->l:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->k:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    iget-object v10, p0, Lcom/iflytek/cloud/thirdparty/v$a;->c:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/u$b;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/iflytek/cloud/thirdparty/u$b;->a(III[BI[BI[BI)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x5207

    invoke-direct {v1, v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    const-string v0, "onWakeupMsg leave"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2
.end method
