.class public abstract Lcom/txznet/comm/T3/T/T$Te;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Te"
.end annotation


# instance fields
.field T:Z

.field T3:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/txznet/comm/T3/T/T$Te;->T:Z

    iput-boolean v0, p0, Lcom/txznet/comm/T3/T/T$Te;->T3:Z

    return-void
.end method


# virtual methods
.method public genKeywords()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getTaskId()Ljava/lang/String;
.end method

.method public isFromCore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/comm/T3/T/T$Te;->T3:Z

    return v0
.end method

.method public isWakeupResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/comm/T3/T/T$Te;->T:Z

    return v0
.end method

.method public abstract needAsrState()Z
.end method

.method public needTts()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAsrResult(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSpeechBegin()V
    .locals 0

    return-void
.end method

.method public onSpeechEnd()V
    .locals 0

    return-void
.end method

.method public onTtsEnd()V
    .locals 0

    return-void
.end method

.method public onVolume(I)V
    .locals 0

    return-void
.end method

.method public setIsFromCore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/comm/T3/T/T$Te;->T3:Z

    return-void
.end method

.method public setIsWakeupResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/comm/T3/T/T$Te;->T:Z

    return-void
.end method
