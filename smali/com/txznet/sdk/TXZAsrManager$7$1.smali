.class Lcom/txznet/sdk/TXZAsrManager$7$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZAsrManager$AsrCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZAsrManager$7;->T(Ljava/lang/String;Ljava/lang/String;[B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/TN/T;

.field final synthetic T2:Lcom/txznet/sdk/TXZAsrManager$7;

.field final synthetic T3:[B


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZAsrManager$7;Lcom/txznet/comm/TN/T;[B)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T2:Lcom/txznet/sdk/TXZAsrManager$7;

    iput-object p2, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T:Lcom/txznet/comm/TN/T;

    iput-object p3, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T3:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbort()V
    .locals 5

    const-string v0, "asr tool onAbort"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.asr.onAbort"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T3:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public onBeginRecord()V
    .locals 5

    const-string v0, "asr tool onBeginRecord"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.asr.onBeginRecord"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T3:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public onBeginSpeech()V
    .locals 5

    const-string v0, "asr tool onBeginSpeech"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.asr.onBeginSpeech"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T3:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public onCancel()V
    .locals 5

    const-string v0, "asr tool onCancel"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.asr.onCancel"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T3:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public onEndRecord()V
    .locals 5

    const-string v0, "asr tool onEndRecord"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.asr.onEndRecord"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T3:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public onEndSpeech()V
    .locals 5

    const-string v0, "asr tool onEndSpeech"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.asr.onEndSpeech"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T3:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public onError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asr tool onError: errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T:Lcom/txznet/comm/TN/T;

    const-string v1, "volume"

    invoke-virtual {v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;)Lcom/txznet/comm/TN/T;

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T:Lcom/txznet/comm/TN/T;

    const-string v1, "errCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T:Lcom/txznet/comm/TN/T;

    const-string v1, "errDesc"

    invoke-virtual {v0, v1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T:Lcom/txznet/comm/TN/T;

    const-string v1, "errHint"

    invoke-virtual {v0, v1, p3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.asr.onError"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T:Lcom/txznet/comm/TN/T;

    invoke-virtual {v3}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public onSceneResult(Lcom/txznet/sdk/TXZSceneManager$SceneType;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asr tool onSenceResult: SenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZSceneManager$SceneType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T:Lcom/txznet/comm/TN/T;

    const-string v1, "volume"

    invoke-virtual {v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;)Lcom/txznet/comm/TN/T;

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T:Lcom/txznet/comm/TN/T;

    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.asr.onSenceResult"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T:Lcom/txznet/comm/TN/T;

    invoke-virtual {v3}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public onTextResult(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "scene"

    const-string v2, "_raw_online"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    sget-object v1, Lcom/txznet/sdk/TXZSceneManager$SceneType;->SCENE_TYPE_UNKNOW:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager$7$1;->onSceneResult(Lcom/txznet/sdk/TXZSceneManager$SceneType;Ljava/lang/String;)V

    return-void
.end method

.method public onVolume(I)V
    .locals 5

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T:Lcom/txznet/comm/TN/T;

    const-string v1, "volume"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.asr.onVolume"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrManager$7$1;->T:Lcom/txznet/comm/TN/T;

    invoke-virtual {v3}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method
