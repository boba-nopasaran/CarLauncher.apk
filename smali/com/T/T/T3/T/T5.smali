.class public Lcom/T/T/T3/T/T5;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/T5;

    invoke-direct {v0}, Lcom/T/T/T3/T/T5;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T5;->T:Lcom/T/T/T3/T/T5;

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

    const/4 v0, 0x2

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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

    const/16 v7, 0x10

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v2

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    invoke-virtual {v2, v7}, Lcom/T/T/T3/Te;->T(I)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->To()I

    move-result v3

    invoke-virtual {v2, v7}, Lcom/T/T/T3/Te;->T(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    const-class v5, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne p2, v5, :cond_0

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v1, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TZ()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v7}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/T/T/TN/Ty;->TB(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method
