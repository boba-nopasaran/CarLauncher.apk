.class Lcom/txznet/sdk/bean/NavVoicePlugin$1;
.super Lcom/txznet/comm/T3/T/T$T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/bean/NavVoicePlugin;->registerVoiceCmds(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T2:Lcom/txznet/sdk/bean/NavVoicePlugin;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/bean/NavVoicePlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-direct {p0}, Lcom/txznet/comm/T3/T/T$T;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskId()Ljava/lang/String;
    .locals 1

    const-string v0, "TASK_VOICE_CMD"

    return-object v0
.end method

.method public needAsrState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCommandSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0xa

    const-string v1, "GUOYU_MM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "GUOYU_GG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    :cond_2
    const-string v1, "ZHOUXINGXING"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    :cond_3
    const-string v1, "GUANGDONGHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    :cond_4
    const-string v1, "LINZHILIN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    :cond_5
    const-string v1, "GUODEGANG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    :cond_6
    const-string v1, "DONGBEIHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    :cond_7
    const-string v1, "HENANHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "HUNANHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "SICHUANHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "TAIWANHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "SWITCH_ROLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    iget v1, v1, Lcom/txznet/sdk/bean/NavVoicePlugin;->TN:I

    add-int/lit8 v0, v1, 0x1

    if-le v0, v3, :cond_c

    const/4 v0, 0x0

    :cond_c
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto/16 :goto_0
.end method
