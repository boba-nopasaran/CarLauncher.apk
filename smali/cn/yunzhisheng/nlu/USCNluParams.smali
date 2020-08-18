.class public Lcn/yunzhisheng/nlu/USCNluParams;
.super Lcn/yunzhisheng/nlu/b/a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/nlu/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/yunzhisheng/nlu/USCNluParams;->url:Ljava/lang/String;

    iput-object v0, p0, Lcn/yunzhisheng/nlu/USCNluParams;->a:Ljava/lang/String;

    return-void
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNluServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/nlu/USCNluParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setNluServer(Ljava/lang/String;I)Z
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/service/iss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/nlu/USCNluParams;->a:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method
