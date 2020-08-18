.class public final Lcom/baidu/speech/Console$Msg;
.super Ljava/lang/Object;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Msg"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private level:Ljava/util/logging/Level;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/speech/Console$Msg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/logging/Level;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/logging/Level;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/speech/Console$Msg;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/speech/Console$Msg;->value:Ljava/lang/Object;

    iput-object p3, p0, Lcom/baidu/speech/Console$Msg;->level:Ljava/util/logging/Level;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/Console$Msg;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/Console$Msg;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public level()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/Console$Msg;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    const/16 v11, 0x7b

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "%s"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/speech/Console$Msg;->value:Ljava/lang/Object;

    if-nez v5, :cond_0

    const-string v5, "-"

    :goto_0
    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/speech/Console$Msg;->value:Ljava/lang/Object;

    instance-of v5, v5, [B

    if-eqz v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/baidu/speech/Console$Msg;->value:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byte["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-byte v5, v0, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/baidu/speech/Console$Msg;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v5, "...}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    iget-object v5, p0, Lcom/baidu/speech/Console$Msg;->value:Ljava/lang/Object;

    instance-of v5, v5, [S

    if-eqz v5, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/baidu/speech/Console$Msg;->value:Ljava/lang/Object;

    check-cast v5, [S

    move-object v0, v5

    check-cast v0, [S

    array-length v5, v0

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "short["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-short v5, v0, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const-string v5, "...}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string v5, "%-10s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/baidu/speech/Console$Msg;->key:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
