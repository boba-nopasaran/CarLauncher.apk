.class public Lcom/T/T/T3/T/TR;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/TR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/TR;

    invoke-direct {v0}, Lcom/T/T/T3/T/TR;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/TR;->T:Lcom/T/T/T3/T/TR;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static T(Lcom/T/T/T3/T2;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            ")TT;"
        }
    .end annotation

    const/16 v5, 0x10

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->Tn()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v5}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/T/T/T;->T(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public T()I
    .locals 1

    const/4 v0, 0x4

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

    invoke-static {p1}, Lcom/T/T/T3/T/TR;->T(Lcom/T/T/T3/T2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
