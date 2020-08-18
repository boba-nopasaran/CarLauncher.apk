.class public Lcom/T/T/Te;
.super Lcom/T/T/T;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/T/T/T;",
        "Lcom/T/T/T2;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/reflect/InvocationHandler;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final Te:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/T/T/Te;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/T/T/T;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/T/T/T;-><init>()V

    iput-object p1, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/T/T/Te;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/T/T/Te;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v5, v2

    if-ne v5, v8, :cond_5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v5, :cond_0

    new-instance v5, Lcom/T/T/TN;

    const-string v6, "illegal setter"

    invoke-direct {v5, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v1, 0x0

    const-class v5, Lcom/T/T/T/T3;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/T/T/T/T3;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "set"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lcom/T/T/TN;

    const-string v6, "illegal setter"

    invoke-direct {v5, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Lcom/T/T/TN;

    const-string v6, "illegal setter"

    invoke-direct {v5, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v5, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    aget-object v6, p3, v7

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_5
    array-length v5, v2

    if-nez v5, :cond_d

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_6

    new-instance v5, Lcom/T/T/TN;

    const-string v6, "illegal getter"

    invoke-direct {v5, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    const/4 v1, 0x0

    const-class v5, Lcom/T/T/T/T3;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/T/T/T/T3;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Lcom/T/T/T/T3;->T()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_9

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "get"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    new-instance v5, Lcom/T/T/TN;

    const-string v6, "illegal getter"

    invoke-direct {v5, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_1
    iget-object v5, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {}, Lcom/T/T/T3/TJ;->T()Lcom/T/T/T3/TJ;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_a
    const-string v5, "is"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Lcom/T/T/TN;

    const-string v6, "illegal getter"

    invoke-direct {v5, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_c
    new-instance v5, Lcom/T/T/TN;

    const-string v6, "illegal getter"

    invoke-direct {v5, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/T/T/Te;->T(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/Te;->Te:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
