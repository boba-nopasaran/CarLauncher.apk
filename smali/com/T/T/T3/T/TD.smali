.class public Lcom/T/T/T3/T/TD;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/TD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/TD;

    invoke-direct {v0}, Lcom/T/T/T3/T/TD;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/TD;->T:Lcom/T/T/T3/T/TD;

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

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TY()J

    move-result-wide v2

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/T/T/T3/Te;->T(I)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p2, v5, :cond_0

    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object v1, v5

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lcom/T/T/TN/Ty;->TJ(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method
