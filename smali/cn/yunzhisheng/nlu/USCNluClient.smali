.class public Lcn/yunzhisheng/nlu/USCNluClient;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNluRequestUrl(Lcn/yunzhisheng/nlu/b/a;)Ljava/lang/String;
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getUdid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getAppver()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getGps()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getVer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getHistory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getCity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getVoiceId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getScenario()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getScreen()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getDpi()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getPlatform()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcn/yunzhisheng/nlu/b/a;->getViewid()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v0 .. v17}, Lcn/yunzhisheng/nlu/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNluJsonResultForGet(Lcn/yunzhisheng/nlu/b/a;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/nlu/USCNluClient;->createNluRequestUrl(Lcn/yunzhisheng/nlu/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/nlu/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nlu url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method public getNluJsonResultForPost(Lcn/yunzhisheng/nlu/b/a;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/nlu/USCNluClient;->createNluRequestUrl(Lcn/yunzhisheng/nlu/b/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/yunzhisheng/nlu/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nlu url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    return-object v1
.end method
