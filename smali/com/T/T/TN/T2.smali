.class public Lcom/T/T/TN/T2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/T/T/TN/T2;",
        ">;"
    }
.end annotation


# instance fields
.field private final T:Ljava/lang/String;

.field private final T2:Ljava/lang/reflect/Field;

.field private final T3:Ljava/lang/reflect/Method;

.field private final TN:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final Te:Ljava/lang/reflect/Type;

.field private final Tw:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private Ty:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/T/T/TN/T2;->Ty:Z

    iput-object p1, p0, Lcom/T/T/TN/T2;->T:Ljava/lang/String;

    iput-object p2, p0, Lcom/T/T/TN/T2;->Tw:Ljava/lang/Class;

    iput-object p3, p0, Lcom/T/T/TN/T2;->TN:Ljava/lang/Class;

    iput-object p4, p0, Lcom/T/T/TN/T2;->Te:Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/T/T/TN/T2;->T3:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/T/T/TN/T2;->T2:Ljava/lang/reflect/Field;

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/T/T/TN/T2;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Lcom/T/T/TN/T2;->Ty:Z

    iput-object p1, p0, Lcom/T/T/TN/T2;->T:Ljava/lang/String;

    iput-object p2, p0, Lcom/T/T/TN/T2;->T3:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/T/T/TN/T2;->T2:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-ne v4, v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v0, v4, v6

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v1, v4, v6

    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/T/T/TN/T2;->Tw:Ljava/lang/Class;

    :goto_1
    if-eqz p4, :cond_4

    const-class v4, Ljava/lang/Object;

    if-ne v0, v4, :cond_4

    instance-of v4, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_4

    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-static {p4, v3}, Lcom/T/T/TN/T2;->T(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/T/T/TN/Ty;->T(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/T/T/TN/T2;->TN:Ljava/lang/Class;

    iput-object v2, p0, Lcom/T/T/TN/T2;->Te:Ljava/lang/reflect/Type;

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    iput-boolean v5, p0, Lcom/T/T/TN/T2;->Ty:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/T/T/TN/T2;->Tw:Ljava/lang/Class;

    goto :goto_1

    :cond_4
    invoke-static {p4, p5, v1}, Lcom/T/T/TN/T2;->T(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-eq v2, v1, :cond_5

    instance-of v4, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_6

    invoke-static {v2}, Lcom/T/T/TN/Ty;->T(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    :cond_5
    :goto_3
    iput-object v2, p0, Lcom/T/T/TN/T2;->Te:Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/T/T/TN/T2;->TN:Ljava/lang/Class;

    goto :goto_2

    :cond_6
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_5

    invoke-static {v2}, Lcom/T/T/TN/Ty;->T(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3
.end method

.method public static T(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, p2

    :goto_0
    return-object v3

    :cond_1
    instance-of v10, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v10, :cond_2

    move-object v3, p2

    goto :goto_0

    :cond_2
    instance-of v10, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_4

    move-object v6, p1

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    move-object v9, p2

    check-cast v9, Ljava/lang/reflect/TypeVariable;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    array-length v10, v10

    if-ge v4, v10, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    aget-object p2, v10, v4

    move-object v3, p2

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    instance-of v10, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_8

    move-object v7, p2

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_2
    array-length v10, v0

    if-ge v4, v10, :cond_7

    aget-object v2, v0, v4

    instance-of v10, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_6

    move-object v9, v2

    check-cast v9, Ljava/lang/reflect/TypeVariable;

    instance-of v10, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_6

    move-object v8, p1

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    array-length v10, v10

    if-ge v5, v10, :cond_6

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    aget-object v10, v10, v5

    aput-object v10, v0, v4

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    new-instance p2, Lcom/T/T/TN/Tw;

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-direct {p2, v0, v10, v11}, Lcom/T/T/TN/Tw;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object v3, p2

    goto/16 :goto_0

    :cond_8
    move-object v3, p2

    goto/16 :goto_0
.end method

.method public static T(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    instance-of v7, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_4

    move-object v2, v4

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v7, v0, :cond_4

    invoke-interface {v0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v1, 0x0

    :goto_1
    array-length v7, v3

    if-ge v1, v7, :cond_1

    aget-object v7, v3, v1

    if-ne v7, p1, :cond_3

    aget-object v6, v5, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v4}, Lcom/T/T/TN/Ty;->T(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-nez v4, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public T(Lcom/T/T/TN/T2;)I
    .locals 2

    iget-object v0, p0, Lcom/T/T/TN/T2;->T:Ljava/lang/String;

    iget-object v1, p1, Lcom/T/T/TN/T2;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public T()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/TN/T2;->TN:Ljava/lang/Class;

    return-object v0
.end method

.method public T(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v1, p0, Lcom/T/T/TN/T2;->T3:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/T/T/TN/T2;->T3:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/T/T/TN/T2;->T2:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public T(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/T/T/TN/T2;->T3:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/T/T/TN/T2;->T3:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/T/T/TN/T2;->T2:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/T/T/TN/T2;->T2:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public T(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/TN/T2;->T3:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/T/T/TN/T2;->T3:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/T/T/TN/T2;->T2:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public T(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/T/T/TN/T2;->T3:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/T/T/TN/T2;->T3:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/T/T/TN/T2;->T2:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0
.end method

.method public T2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/T/T/TN/T2;->T:Ljava/lang/String;

    return-object v0
.end method

.method public T3()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/T/T/TN/T2;->Te:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public TN()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/T/T/TN/T2;->T3:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public Te()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/T/T/TN/T2;->T2:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public Tw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/T/T/TN/T2;->Ty:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/T/T/TN/T2;

    invoke-virtual {p0, p1}, Lcom/T/T/TN/T2;->T(Lcom/T/T/TN/T2;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/T/T/TN/T2;->T:Ljava/lang/String;

    return-object v0
.end method
