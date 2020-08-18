.class public abstract Lcom/iflytek/cloud/thirdparty/D;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/D$a;
    }
.end annotation


# static fields
.field protected static final b:Ljava/lang/Object;


# instance fields
.field protected c:Lcom/iflytek/cloud/thirdparty/af;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/D;->b:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/af;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/af;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/D;->c:Lcom/iflytek/cloud/thirdparty/af;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/D$a;
    .locals 3

    const-string v0, "engine_mode"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/D;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "plus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/thirdparty/D$a;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/thirdparty/D$a;->c:Lcom/iflytek/cloud/thirdparty/D$a;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/thirdparty/D$a;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_0

    :cond_4
    const-string v0, "engine_type"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/D;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_0

    :cond_5
    const-string v1, "mixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/iflytek/speech/ISpeechModule;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    goto :goto_0
.end method

.method public destroy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "params"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/D;->c:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/af;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/D;->c:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setParameter(Lcom/iflytek/cloud/thirdparty/af;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/af;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/D;->c:Lcom/iflytek/cloud/thirdparty/af;

    const/4 v0, 0x1

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "params"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/D;->c:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/af;->a()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/D;->c:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v1, p2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/D;->c:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/af;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/D;->c:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v1, p1, p2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
