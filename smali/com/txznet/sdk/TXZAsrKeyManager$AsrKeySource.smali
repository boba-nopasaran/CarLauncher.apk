.class public Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAsrKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsrKeySource"
.end annotation


# instance fields
.field private T:Ljava/lang/String;

.field private T3:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    if-nez v1, :cond_0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    iput-object p2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    return-void
.end method

.method public static assign(Ljava/lang/String;)Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    aget-object v3, v0, v6

    add-int/lit8 v4, v2, -0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v0, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    invoke-direct {v4, v3, v1}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    iget-object v3, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->setKeyCmds([Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getKeyCmds()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyCmds([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZAsrKeyManager$AsrKeySource;->T3:[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
