.class public Lcom/baidu/speech/Args$Obj;
.super Ljava/lang/Object;
.source "Args.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Obj"
.end annotation


# instance fields
.field private final key:Lcom/baidu/speech/Args$Def;

.field private final values:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/speech/Args$Def;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/speech/Args$Obj;->values:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/baidu/speech/Args$Obj;->key:Lcom/baidu/speech/Args$Def;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcom/baidu/speech/Args$Obj;->values:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/speech/Args$Obj;->values:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/baidu/speech/Args$Obj;->key:Lcom/baidu/speech/Args$Def;

    invoke-virtual {v1, v0}, Lcom/baidu/speech/Args$Def;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/Args$Obj;->values:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/speech/Args$Obj;->values:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/speech/Args$Obj;->getValue()Ljava/lang/Object;

    move-result-object v5

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/baidu/speech/Args$Obj;->values:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lcom/baidu/speech/Args$Obj;->values:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/speech/Args$Obj;->values:Ljava/util/LinkedList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v3, ""

    :goto_1
    const-string v6, "%-12s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v10, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const-string v3, " <- "

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
