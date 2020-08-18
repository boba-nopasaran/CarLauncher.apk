.class public Lcom/T/T/T3/T/Tw;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/Tw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/Tw;

    invoke-direct {v0}, Lcom/T/T/T3/T/Tw;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/Tw;->T:Lcom/T/T/T3/T/Tw;

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

    const/4 v0, 0x6

    return v0
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

    const/16 v6, 0x10

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v2

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, v6}, Lcom/T/T/T3/Te;->T(I)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne p2, v4, :cond_0

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v0, v4

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    invoke-virtual {v2, v6}, Lcom/T/T/T3/Te;->T(I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    invoke-virtual {v2}, Lcom/T/T/T3/Te;->To()I

    move-result v1

    invoke-virtual {v2, v6}, Lcom/T/T/T3/Te;->T(I)V

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lcom/T/T/TN/Ty;->TP(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
