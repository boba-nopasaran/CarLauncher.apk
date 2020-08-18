.class Lcom/txznet/sdk/TXZConfigManager$5;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZConfigManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-boolean v2, Lcom/txznet/sdk/TXZService;->T:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "sdk.init."

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v3}, Lcom/txznet/sdk/TXZConfigManager;->T2(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZService$T;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v2, :cond_2e

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v2, "version"

    const-string v3, "20170427173905_29342"

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "appId"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_2
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T3:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "appToken"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T3:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_3
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T2:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "appCustomId"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_4
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TN:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "uuid"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TN:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_5
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Te:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, "neverFormatRoot"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Te:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_6
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tn:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    if-eqz v2, :cond_7

    const-string v2, "ftType"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tn:Lcom/txznet/sdk/TXZConfigManager$FloatToolType;

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_7
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TG:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v2, "ftUrl_N"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_8
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TR:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v2, "ftUrl_P"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TR:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_9
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TW:Ljava/lang/Long;

    if-eqz v2, :cond_a

    const-string v2, "ftInterval"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TW:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_a
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TJ:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    const-string v2, "ftX"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TJ:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_b
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TB:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    const-string v2, "ftY"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TB:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_c
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Ty:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    if-eqz v2, :cond_d

    const-string v2, "asrType"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Ty:Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_d
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tw:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    if-eqz v2, :cond_e

    const-string v2, "ttsType"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tw:Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_e
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TP:[Ljava/lang/String;

    if-eqz v2, :cond_f

    const-string v2, "wakeupKeywords"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TP:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_f
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tr:Ljava/lang/String;

    if-eqz v2, :cond_10

    const-string v2, "jsonScoreKws"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_10
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T7:Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    const-string v2, "enableInstantAsr"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T7:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_11
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TO:Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    const-string v2, "enableServiceContact"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TO:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_12
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->To:Ljava/lang/Boolean;

    if-eqz v2, :cond_13

    const-string v2, "fixCallFunction"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->To:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_13
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TQ:Ljava/lang/String;

    if-eqz v2, :cond_14

    const-string v2, "defaultNavTool"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TQ:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_14
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TL:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    if-eqz v2, :cond_15

    const-string v2, "asrMode"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TL:Lcom/txznet/sdk/TXZConfigManager$AsrMode;

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZConfigManager$AsrMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_15
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TH:Ljava/lang/Boolean;

    if-eqz v2, :cond_16

    const-string v2, "coexistAsrAndWakeup"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TH:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_16
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T0:Ljava/lang/Float;

    if-eqz v2, :cond_17

    const-string v2, "wakeupThreshHold"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T0:Ljava/lang/Float;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_17
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tc:Ljava/lang/Float;

    if-eqz v2, :cond_18

    const-string v2, "asrWakeupThreshHold"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tc:Ljava/lang/Float;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_18
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tk:Ljava/lang/Integer;

    if-eqz v2, :cond_19

    const-string v2, "beepTimeOut"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tk:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_19
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TF:Ljava/lang/Integer;

    if-eqz v2, :cond_1a

    const-string v2, "filterNoiseType"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TF:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_1a
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tt:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    if-eqz v2, :cond_1b

    const-string v2, "asrServiceMode"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tt:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_1b
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TA:Ljava/lang/Boolean;

    if-eqz v2, :cond_1c

    const-string v2, "addDefaultMusicType"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TA:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_1c
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T5:Ljava/lang/Integer;

    if-eqz v2, :cond_1d

    const-string v2, "ttsVoiceSpeed"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T5:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_1d
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tf:Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    const-string v2, "maxAsrRecordTime"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tf:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_1e
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T1:Ljava/lang/Boolean;

    if-eqz v2, :cond_1f

    const-string v2, "zeroVolToast"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T1:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_1f
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tg:Ljava/lang/Integer;

    if-eqz v2, :cond_20

    const-string v2, "txzStream"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tg:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_20
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TY:Ljava/lang/Boolean;

    if-eqz v2, :cond_21

    const-string v2, "useExternalAudioSource"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TY:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_21
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TZ:Ljava/lang/Boolean;

    if-eqz v2, :cond_22

    const-string v2, "enableBlackHole"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TZ:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_22
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tx:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    const-string v2, "audioSourceForRecord"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tx:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_23
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TM:Ljava/lang/Boolean;

    if-eqz v2, :cond_24

    const-string v2, "forceStopWkWhenTts"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TM:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_24
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TU:Ljava/lang/Boolean;

    if-eqz v2, :cond_25

    const-string v2, "enableProtectWakeup"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TU:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_25
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T9:Ljava/lang/Integer;

    if-eqz v2, :cond_26

    const-string v2, "extAudioSourceType"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T9:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_26
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TD:Ljava/lang/Boolean;

    if-eqz v2, :cond_27

    const-string v2, "useHQualityWakeupModel"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TD:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_27
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T6:Ljava/lang/String;

    if-eqz v2, :cond_28

    const-string v2, "extAudioSourcePkg"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T6:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_28
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T8:Ljava/lang/Integer;

    if-eqz v2, :cond_29

    const-string v2, "winType"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->T8:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_29
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tz:Ljava/lang/String;

    if-eqz v2, :cond_2a

    const-string v2, "resApkPath"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Tz:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_2a
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TI:Ljava/lang/Boolean;

    if-eqz v2, :cond_2b

    const-string v2, "forceUseUI1"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->TI:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_2b
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Td:Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    if-eqz v2, :cond_2c

    const-string v2, "interruptTTSType"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Td:Lcom/txznet/sdk/TXZConfigManager$InterruptMode;

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZConfigManager$InterruptMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_2c
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v2, v2, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Ta:Ljava/lang/Float;

    if-eqz v2, :cond_2d

    const-string v2, "winBgAlpha"

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iget-object v3, v3, Lcom/txznet/sdk/TXZConfigManager$InitParam;->Ta:Ljava/lang/Float;

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    :cond_2d
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v1

    :cond_2e
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "txz.sdk.init"

    new-instance v5, Lcom/txznet/sdk/TXZConfigManager$5$1;

    invoke-direct {v5, p0}, Lcom/txznet/sdk/TXZConfigManager$5$1;-><init>(Lcom/txznet/sdk/TXZConfigManager$5;)V

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager$5;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-virtual {v2}, Lcom/txznet/sdk/TXZConfigManager;->T()V

    goto/16 :goto_0
.end method
