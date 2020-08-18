.class public Lcn/yunzhisheng/tts/online/u;
.super Lcn/yunzhisheng/tts/online/h;


# instance fields
.field private b:Lcn/yunzhisheng/tts/online/v;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/yunzhisheng/tts/online/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/yunzhisheng/tts/online/s;


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/tts/online/s;)V
    .locals 1

    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/h;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/u;->b:Lcn/yunzhisheng/tts/online/v;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/u;->c:Ljava/util/List;

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/u;->d:Lcn/yunzhisheng/tts/online/s;

    return-void
.end method

.method private a(Lcn/yunzhisheng/tts/online/l;)I
    .locals 4

    new-instance v1, Lcn/yunzhisheng/tts/JniClient;

    invoke-direct {v1}, Lcn/yunzhisheng/tts/JniClient;-><init>()V

    :try_start_0
    const-string v0, "TTSThread---start"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/u;->d:Lcn/yunzhisheng/tts/online/s;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/s;->l()Lcn/yunzhisheng/tts/online/a;

    move-result-object v0

    iget-object v2, p0, Lcn/yunzhisheng/tts/online/u;->d:Lcn/yunzhisheng/tts/online/s;

    invoke-virtual {v2}, Lcn/yunzhisheng/tts/online/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/a;->c()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcn/yunzhisheng/tts/JniClient;->create(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TTSThread:create error"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, -0x16378

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->release()I

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/yunzhisheng/tts/online/u;->d:Lcn/yunzhisheng/tts/online/s;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/s;->b()Lcn/yunzhisheng/tts/online/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/yunzhisheng/tts/JniClient;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTSThread:start error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->release()I

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p1, Lcn/yunzhisheng/tts/online/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/tts/JniClient;->textPut(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTSThread:textPut error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->release()I

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcn/yunzhisheng/tts/online/u;->d()V

    :goto_1
    invoke-virtual {p0}, Lcn/yunzhisheng/tts/online/u;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->getResult()[B

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v0, v1, Lcn/yunzhisheng/tts/JniClient;->status:Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;

    iget v0, v0, Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;->mErrorCode:I

    if-nez v0, :cond_4

    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->stop()I

    const-string v2, "TTSThread---end"

    invoke-static {v2}, Lcn/yunzhisheng/utils/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->release()I

    goto :goto_0

    :cond_4
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTSThread:textPut error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->release()I

    throw v0

    :cond_5
    :try_start_5
    invoke-direct {p0, v2}, Lcn/yunzhisheng/tts/online/u;->a([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private a([B)V
    .locals 3

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/u;->b:Lcn/yunzhisheng/tts/online/v;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcn/yunzhisheng/tts/online/v;->a([BII)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/u;->b:Lcn/yunzhisheng/tts/online/v;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/yunzhisheng/tts/online/v;->a(I)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcn/yunzhisheng/tts/online/l;

    invoke-direct {v0}, Lcn/yunzhisheng/tts/online/l;-><init>()V

    iput-object p1, v0, Lcn/yunzhisheng/tts/online/l;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/yunzhisheng/tts/online/u;->d:Lcn/yunzhisheng/tts/online/s;

    iget-object v1, v1, Lcn/yunzhisheng/tts/online/s;->r:Ljava/lang/String;

    iput-object v1, v0, Lcn/yunzhisheng/tts/online/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/yunzhisheng/tts/online/u;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/u;->b:Lcn/yunzhisheng/tts/online/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/yunzhisheng/tts/online/v;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/u;->b:Lcn/yunzhisheng/tts/online/v;

    return-void
.end method

.method public a(Lcn/yunzhisheng/tts/online/v;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/u;->b:Lcn/yunzhisheng/tts/online/v;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yunzhisheng/tts/online/u;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/online/u;->start()V

    return-void
.end method

.method public b(Lcn/yunzhisheng/tts/online/v;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/u;->b:Lcn/yunzhisheng/tts/online/v;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/u;->b:Lcn/yunzhisheng/tts/online/v;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcn/yunzhisheng/tts/online/h;->run()V

    :goto_0
    invoke-virtual {p0}, Lcn/yunzhisheng/tts/online/u;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/u;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/tts/online/u;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yunzhisheng/tts/online/l;

    invoke-direct {p0, v0}, Lcn/yunzhisheng/tts/online/u;->a(Lcn/yunzhisheng/tts/online/l;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcn/yunzhisheng/tts/online/u;->b(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcn/yunzhisheng/tts/online/u;->b(I)V

    goto :goto_0
.end method
