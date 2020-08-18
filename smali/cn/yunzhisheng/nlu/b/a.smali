.class public Lcn/yunzhisheng/nlu/b/a;
.super Ljava/lang/Object;


# static fields
.field public static url:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://scv2.hivoice.cn/service/iss"

    sput-object v0, Lcn/yunzhisheng/nlu/b/a;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "iss.getTalk"

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->a:Ljava/lang/String;

    const-string v0, "2.0"

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->q:Ljava/lang/String;

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcn/yunzhisheng/nlu/b/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "iss.getTalk"

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->a:Ljava/lang/String;

    const-string v0, "2.0"

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->q:Ljava/lang/String;

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcn/yunzhisheng/nlu/b/a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcn/yunzhisheng/nlu/b/a;->f:Ljava/lang/String;

    iput-object p4, p0, Lcn/yunzhisheng/nlu/b/a;->e:Ljava/lang/String;

    iput-object p5, p0, Lcn/yunzhisheng/nlu/b/a;->g:Ljava/lang/String;

    iput-object p6, p0, Lcn/yunzhisheng/nlu/b/a;->j:Ljava/lang/String;

    iput-object p7, p0, Lcn/yunzhisheng/nlu/b/a;->k:Ljava/lang/String;

    iput-object p8, p0, Lcn/yunzhisheng/nlu/b/a;->h:Ljava/lang/String;

    iput-object p9, p0, Lcn/yunzhisheng/nlu/b/a;->i:Ljava/lang/String;

    iput-object p10, p0, Lcn/yunzhisheng/nlu/b/a;->l:Ljava/lang/String;

    iput-object p11, p0, Lcn/yunzhisheng/nlu/b/a;->m:Ljava/lang/String;

    iput-object p12, p0, Lcn/yunzhisheng/nlu/b/a;->n:Ljava/lang/String;

    iput-object p13, p0, Lcn/yunzhisheng/nlu/b/a;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAppver()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getDpi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getGps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getHistory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "iss.getTalk"

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getScenario()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/yunzhisheng/nlu/b/a;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0"

    return-object v0
.end method

.method public getViewid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/b/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public setAppver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->h:Ljava/lang/String;

    return-void
.end method

.method public setDpi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->o:Ljava/lang/String;

    return-void
.end method

.method public setGps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->g:Ljava/lang/String;

    return-void
.end method

.method public setHistory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->k:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->p:Ljava/lang/String;

    return-void
.end method

.method public setScenario(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->m:Ljava/lang/String;

    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->n:Ljava/lang/String;

    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->j:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->i:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->f:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcn/yunzhisheng/nlu/b/a;->url:Ljava/lang/String;

    return-void
.end method

.method public setViewid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->q:Ljava/lang/String;

    return-void
.end method

.method public setVoiceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/nlu/b/a;->l:Ljava/lang/String;

    return-void
.end method
