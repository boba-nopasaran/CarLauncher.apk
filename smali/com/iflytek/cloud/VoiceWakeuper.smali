.class public Lcom/iflytek/cloud/VoiceWakeuper;
.super Lcom/iflytek/cloud/thirdparty/D;


# static fields
.field private static a:Lcom/iflytek/cloud/VoiceWakeuper;


# instance fields
.field private d:Lcom/iflytek/cloud/thirdparty/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/VoiceWakeuper;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/D;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ar;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/ar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    return-void
.end method

.method public static declared-synchronized createWakeuper(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/VoiceWakeuper;
    .locals 3

    const-class v1, Lcom/iflytek/cloud/VoiceWakeuper;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/iflytek/cloud/VoiceWakeuper;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/iflytek/cloud/VoiceWakeuper;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iflytek/cloud/VoiceWakeuper;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/VoiceWakeuper;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/VoiceWakeuper;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/iflytek/cloud/VoiceWakeuper;->a:Lcom/iflytek/cloud/VoiceWakeuper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getWakeuper()Lcom/iflytek/cloud/VoiceWakeuper;
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/VoiceWakeuper;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ar;->cancel(Z)V

    return-void
.end method

.method public destroy()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ar;->destroy()Z

    move-result v0

    :cond_0
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/u;->a()Lcom/iflytek/cloud/thirdparty/u;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/u;->b()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/D;->destroy()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/iflytek/cloud/VoiceWakeuper;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lcom/iflytek/cloud/VoiceWakeuper;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "Destory ivw engine."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const-string v2, "engine_destroy"

    const-string v3, "engine_destroy=ivw"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechUtility;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public downloadResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/util/FileDownloadListener;)I
    .locals 6

    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/cloud/util/FileDownloadListener;)I

    move-result v0

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_3

    const-string v0, "aimic_on_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/u;->a()Lcom/iflytek/cloud/thirdparty/u;

    move-result-object v1

    const-string v2, "aimic_on_channel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/u;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "aimic_on_version"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/u;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "aimic_on_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "aimic is null !"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/D;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isListening()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ar;->f()Z

    move-result v0

    return v0
.end method

.method public queryResource(Ljava/lang/String;Lcom/iflytek/cloud/RequestListener;)I
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/iflytek/cloud/thirdparty/ar;->a(Ljava/lang/String;ZLcom/iflytek/cloud/RequestListener;)I

    move-result v0

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "aimic_on_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/u;->a()Lcom/iflytek/cloud/thirdparty/u;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "aimic_on_reset"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/u;->c()I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "aimic_on_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/iflytek/cloud/thirdparty/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/D;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public startListening(Lcom/iflytek/cloud/WakeuperListener;)I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ar;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    iget-object v1, p0, Lcom/iflytek/cloud/VoiceWakeuper;->c:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ar;->setParameter(Lcom/iflytek/cloud/thirdparty/af;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ar;->a(Lcom/iflytek/cloud/WakeuperListener;)I

    move-result v0

    return v0
.end method

.method public stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ar;->e()V

    return-void
.end method

.method public writeAudio([BII)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ar;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/VoiceWakeuper;->d:Lcom/iflytek/cloud/thirdparty/ar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/ar;->a([BII)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "VoiceWakeup writeAudio failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    const/16 v0, 0x520c

    goto :goto_0
.end method
