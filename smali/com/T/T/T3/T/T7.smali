.class public Lcom/T/T/T3/T/T7;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/T7;

    invoke-direct {v0}, Lcom/T/T/T3/T/T7;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public T(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T/T7;->T(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/T/T/TN;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v4

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/T/T/T3/Te;->T(I)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/T/T/T3/T/T7;->T(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/AbstractCollection;

    if-ne v3, v4, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    instance-of v4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_6

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    :goto_2
    invoke-virtual {p1, v1, v2, p3}, Lcom/T/T/T3/T2;->T(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-class v4, Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_2
    const-class v4, Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_1

    :cond_3
    const-class v4, Ljava/util/TreeSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    :cond_4
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Lcom/T/T/TN;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create instane error, class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    const-class v1, Ljava/lang/Object;

    goto :goto_2
.end method
