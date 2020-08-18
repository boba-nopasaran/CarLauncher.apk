.class Lcom/baidu/speech/easr/EmbeddedASREngine$AddPVResultsToDB;
.super Ljava/lang/Thread;
.source "EmbeddedASREngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/easr/EmbeddedASREngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddPVResultsToDB"
.end annotation


# instance fields
.field private mErrorCode:I

.field final synthetic this$0:Lcom/baidu/speech/easr/EmbeddedASREngine;


# direct methods
.method public constructor <init>(Lcom/baidu/speech/easr/EmbeddedASREngine;I)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$AddPVResultsToDB;->this$0:Lcom/baidu/speech/easr/EmbeddedASREngine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$AddPVResultsToDB;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/baidu/speech/easr/EmbeddedASREngine;->access$300()Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/baidu/speech/easr/EmbeddedASREngine;->access$300()Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->isDatabaseClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/speech/easr/EmbeddedASREngine;->access$300()Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/baidu/speech/easr/EmbeddedASREngine$AddPVResultsToDB;->mErrorCode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->addSynthesizeResult(JIIILjava/lang/String;)V

    :cond_0
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
