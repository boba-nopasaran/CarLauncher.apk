.class public abstract Lcom/iflytek/cloud/thirdparty/A;
.super Landroid/os/Handler;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/as$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/A$a;,
        Lcom/iflytek/cloud/thirdparty/A$b;
    }
.end annotation


# static fields
.field protected static final D:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/iflytek/cloud/thirdparty/A;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected A:J

.field protected B:I

.field protected final C:Lcom/iflytek/cloud/thirdparty/as;

.field private a:Lcom/iflytek/cloud/thirdparty/af;

.field private volatile b:Lcom/iflytek/cloud/thirdparty/A$b;

.field private c:Landroid/os/HandlerThread;

.field protected w:I

.field public x:I

.field protected y:Landroid/content/Context;

.field protected volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/A;->D:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, 0xea60

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->w:I

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->x:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->y:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/af;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/af;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/A;->z:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->a:Lcom/iflytek/cloud/thirdparty/A$b;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/A;->A:J

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->B:I

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/as;->a(Lcom/iflytek/cloud/thirdparty/as$a;)Lcom/iflytek/cloud/thirdparty/as;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->C:Lcom/iflytek/cloud/thirdparty/as;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/A;->y:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/A;->z:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, 0xea60

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->w:I

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->x:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->y:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/af;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/af;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/A;->z:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->a:Lcom/iflytek/cloud/thirdparty/A$b;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/A;->A:J

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->B:I

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/as;->a(Lcom/iflytek/cloud/thirdparty/as$a;)Lcom/iflytek/cloud/thirdparty/as;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->C:Lcom/iflytek/cloud/thirdparty/as;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/A;->c:Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/A;->y:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/A;->z:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A;->D:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->y()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->y:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/A;->y:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/A;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "quit current Msc Handler thread"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_1
    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/A;->c:Landroid/os/HandlerThread;

    :cond_2
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A;->D:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static u()Z
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A;->D:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 3

    const-string v0, "cloud"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->x()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "engine_type"

    const-string v2, "cloud"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    const-string v0, "local"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/A;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    return-void
.end method

.method protected a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V
    .locals 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->w()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->f:Lcom/iflytek/cloud/thirdparty/A$b;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->w()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send msg failed while status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->w()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    if-eqz p3, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->removeMessages(I)V

    :cond_2
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    if-ne p2, v0, :cond_3

    if-gtz p4, :cond_3

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->d:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    goto :goto_1

    :sswitch_2
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    goto :goto_1

    :cond_3
    int-to-long v0, p4

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/cloud/thirdparty/A;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->f:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->y()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ae;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ae;->b()V

    return-void
.end method

.method protected declared-synchronized a(Lcom/iflytek/cloud/thirdparty/A$b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "curStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",setStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->f:Lcom/iflytek/cloud/thirdparty/A$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->f:Lcom/iflytek/cloud/thirdparty/A$b;

    if-ne p1, v0, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/A;->A:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/iflytek/cloud/thirdparty/af;)V
    .locals 1

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/af;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->c()V

    return-void
.end method

.method protected a_()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->C:Lcom/iflytek/cloud/thirdparty/as;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/as;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/iflytek/cloud/thirdparty/A;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DC exception:"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected b(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/iflytek/cloud/thirdparty/A;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void
.end method

.method protected declared-synchronized b(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->C:Lcom/iflytek/cloud/thirdparty/as;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/as;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/16 v0, 0x15

    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/iflytek/cloud/thirdparty/A;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->d(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "DC exception:"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/A;->z:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->y()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method protected c()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "timeout"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/A;->B:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->B:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "sample_rate"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/A;->x:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->x:I

    return-void
.end method

.method protected d(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/iflytek/cloud/thirdparty/A;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    const-string v0, "SDK is not init while session begin"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e2f

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e2a

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/SpeechError;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/A;->a()V

    goto :goto_0

    :pswitch_1
    :try_start_2
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e22

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->a(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " occur Error = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v2, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occur Error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e35

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x5207

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " occur Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    :cond_2
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected p()V
    .locals 4

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/thirdparty/A;->removeMessages(I)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    const/4 v1, 0x0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/A;->B:I

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/A;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "pte"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "text_encoding"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "rse"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/A;->x:I

    return v0
.end method

.method public v()Z
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->f:Lcom/iflytek/cloud/thirdparty/A$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->a:Lcom/iflytek/cloud/thirdparty/A$b;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected declared-synchronized w()Lcom/iflytek/cloud/thirdparty/A$b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()Lcom/iflytek/cloud/thirdparty/af;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    return-object v0
.end method

.method protected y()V
    .locals 2

    const-string v0, "clear all message"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected z()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
