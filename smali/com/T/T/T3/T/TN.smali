.class public Lcom/T/T/T3/T/TN;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/TN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/TN;

    invoke-direct {v0}, Lcom/T/T/T3/T/TN;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/TN;->T:Lcom/T/T/T3/T/TN;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static T(Lcom/T/T/T3/T2;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            ")TT;"
        }
    .end annotation

    const/16 v6, 0x10

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TY()J

    move-result-wide v2

    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TZ()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/T/T/TN/Ty;->Te(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public T()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    invoke-static {p1}, Lcom/T/T/T3/T/TN;->T(Lcom/T/T/T3/T2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
