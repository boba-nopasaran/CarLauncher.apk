.class public abstract Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;
.super Lcom/txznet/comm/T3/T/T$T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAsrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AsrComplexSelectCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/comm/T3/T/T$T;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/comm/T3/T/T$T;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    return-object v0
.end method

.method public varargs addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/txznet/comm/T3/T/T$T;->addCommand(Ljava/lang/String;[Ljava/lang/String;)Lcom/txznet/comm/T3/T/T$T;

    return-object p0
.end method

.method public bridge synthetic addIndex(I[Ljava/lang/String;)Lcom/txznet/comm/T3/T/T$T;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;->addIndex(I[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;

    move-result-object v0

    return-object v0
.end method

.method public varargs addIndex(I[Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrManager$AsrComplexSelectCallback;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/txznet/comm/T3/T/T$T;->addIndex(I[Ljava/lang/String;)Lcom/txznet/comm/T3/T/T$T;

    return-object p0
.end method

.method public abstract getTaskId()Ljava/lang/String;
.end method

.method public abstract needAsrState()Z
.end method

.method public onCommandSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/txznet/comm/T3/T/T$T;->onCommandSelected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIndexSelected(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/txznet/comm/T3/T/T$T;->onIndexSelected(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
