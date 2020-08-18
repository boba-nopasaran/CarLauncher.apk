.class public Lcom/T/T/T3/T/T33;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T33;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/T33;

    invoke-direct {v0}, Lcom/T/T/T3/T/T33;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T33;->T:Lcom/T/T/T3/T/T33;

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

    const/16 v0, 0xc

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    move-object v2, p2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    invoke-virtual {p1, v1}, Lcom/T/T/T3/T2;->T(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-class v4, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v3, v4, :cond_0

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v4

    :cond_0
    const-class v4, Ljava/lang/ref/WeakReference;

    if-ne v3, v4, :cond_1

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-class v4, Ljava/lang/ref/SoftReference;

    if-ne v3, v4, :cond_2

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
