.class public Lcn/yunzhisheng/nlu/USCNluThread;
.super Ljava/lang/Thread;


# static fields
.field public static VOICE_OGG_MAX_LENGTH:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcn/yunzhisheng/nlu/USCNluListener;

.field private d:Lcn/yunzhisheng/nlu/USCNluParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x25800

    sput v0, Lcn/yunzhisheng/nlu/USCNluThread;->VOICE_OGG_MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/nlu/USCNluParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/USCNluThread;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/nlu/USCNluThread;->b:Z

    iput-object p1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    return-void
.end method

.method private a()Lcn/yunzhisheng/nlu/b/a;
    .locals 3

    iget-object v0, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcn/yunzhisheng/nlu/b/a;

    iget-object v1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/nlu/USCNluParams;->getAppkey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v2}, Lcn/yunzhisheng/nlu/USCNluParams;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/yunzhisheng/nlu/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/nlu/USCNluParams;->getAppver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/b/a;->setAppver(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/USCNluThread;->c:Lcn/yunzhisheng/nlu/USCNluListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/yunzhisheng/nlu/USCNluListener;->onEnd(I)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/USCNluThread;->c:Lcn/yunzhisheng/nlu/USCNluListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/yunzhisheng/nlu/USCNluListener;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/nlu/USCNluThread;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/yunzhisheng/nlu/USCNluThread;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NLU processing begin"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/yunzhisheng/nlu/USCNluThread;->a()Lcn/yunzhisheng/nlu/b/a;

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/nlu/USCNluParams;->getNluServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/b/a;->setUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/nlu/USCNluParams;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/b/a;->setUdid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/nlu/USCNluParams;->getHistory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/b/a;->setHistory(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/nlu/USCNluParams;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/b/a;->setCity(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/nlu/USCNluParams;->getGps()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/b/a;->setGps(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/nlu/USCNluParams;->getScenario()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/b/a;->setScenario(Ljava/lang/String;)V

    invoke-static {}, Lcn/yunzhisheng/nlu/USCNluParams;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/b/a;->setTime(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->d:Lcn/yunzhisheng/nlu/USCNluParams;

    invoke-virtual {v1}, Lcn/yunzhisheng/nlu/USCNluParams;->getViewid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/b/a;->setViewid(Ljava/lang/String;)V

    sget-object v1, Lcn/yunzhisheng/utils/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/b/a;->setUdid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/nlu/b/a;->setText(Ljava/lang/String;)V

    new-instance v1, Lcn/yunzhisheng/nlu/USCNluClient;

    invoke-direct {v1}, Lcn/yunzhisheng/nlu/USCNluClient;-><init>()V

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/nlu/USCNluClient;->getNluJsonResultForPost(Lcn/yunzhisheng/nlu/b/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Lcn/yunzhisheng/nlu/USCNluThread;->setNluStop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/nlu/USCNluThread;->c:Lcn/yunzhisheng/nlu/USCNluListener;

    return-void
.end method

.method public isCancel()Z
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/USCNluThread;->c:Lcn/yunzhisheng/nlu/USCNluListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNluStop()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/nlu/USCNluThread;->b:Z

    return v0
.end method

.method public run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->b:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcn/yunzhisheng/nlu/USCNluThread;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const v0, -0x1155a

    :goto_0
    invoke-direct {p0, v0}, Lcn/yunzhisheng/nlu/USCNluThread;->a(I)V

    :cond_0
    return-void

    :cond_1
    const-string v2, "{}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, -0x11559

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcn/yunzhisheng/nlu/USCNluThread;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->a:Ljava/lang/String;

    return-void
.end method

.method public setNluListener(Lcn/yunzhisheng/nlu/USCNluListener;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/USCNluThread;->c:Lcn/yunzhisheng/nlu/USCNluListener;

    return-void
.end method

.method public setNluStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/nlu/USCNluThread;->b:Z

    return-void
.end method

.method public waitEnd(I)V
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/nlu/USCNluThread;->cancel()V

    invoke-virtual {p0}, Lcn/yunzhisheng/nlu/USCNluThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-long v0, p1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/nlu/USCNluThread;->join(J)V

    const-string v0, "USCNluThread::waitEnd()"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V
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
