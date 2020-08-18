.class public Lcom/iflytek/cloud/thirdparty/aq;
.super Lcom/iflytek/cloud/thirdparty/E;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/aq$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/iflytek/cloud/TextUnderstanderListener;)I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "asr_sch"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/aq;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "asr_sch"

    const-string v2, "1"

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/cloud/thirdparty/aq;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string v0, "nlp_version"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/aq;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iflytek/msc/MSC;->isIflyVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "3.0"

    :goto_0
    const-string v2, "nlp_version"

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/thirdparty/aq;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const-string v0, "result_type"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/aq;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "result_type"

    const-string v2, "json"

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/cloud/thirdparty/aq;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/aq;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x520d

    :goto_1
    return v0

    :cond_3
    const-string v0, "2.0"

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/iflytek/cloud/thirdparty/G;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/aq;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/aq;->c:Lcom/iflytek/cloud/thirdparty/af;

    const-string v4, "textunderstand"

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/thirdparty/aq;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/G;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/aq;->e:Lcom/iflytek/cloud/thirdparty/A;

    new-instance v2, Lcom/iflytek/cloud/thirdparty/aq$a;

    invoke-direct {v2, p0, p2}, Lcom/iflytek/cloud/thirdparty/aq$a;-><init>(Lcom/iflytek/cloud/thirdparty/aq;Lcom/iflytek/cloud/TextUnderstanderListener;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aq;->e:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/G;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/E$a;

    invoke-direct {v3, p0, v2}, Lcom/iflytek/cloud/thirdparty/E$a;-><init>(Lcom/iflytek/cloud/thirdparty/E;Lcom/iflytek/cloud/SpeechListener;)V

    invoke-virtual {v0, v3, p1}, Lcom/iflytek/cloud/thirdparty/G;->a(Lcom/iflytek/cloud/SpeechListener;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v0, 0x5207

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public cancel(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;->cancel(Z)V

    return-void
.end method

.method public destroy()Z
    .locals 1

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/E;->destroy()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/aq;->d()Z

    move-result v0

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/E;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
