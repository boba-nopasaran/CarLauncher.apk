.class public Lcom/T/T/TN/Te;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/T/T/TN/Te$T;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final T:[Lcom/T/T/TN/Te$T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/T/T/TN/Te$T",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final T3:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/T/T/TN/Te;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/T/T/TN/Te;->T3:I

    new-array v0, p1, [Lcom/T/T/TN/Te$T;

    iput-object v0, p0, Lcom/T/T/TN/Te;->T:[Lcom/T/T/TN/Te$T;

    return-void
.end method


# virtual methods
.method public final T(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lcom/T/T/TN/Te;->T3:I

    and-int v0, v2, v3

    iget-object v3, p0, Lcom/T/T/TN/Te;->T:[Lcom/T/T/TN/Te$T;

    aget-object v1, v3, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/T/T/TN/Te$T;->T3:Ljava/lang/Object;

    if-ne p1, v3, :cond_0

    iget-object v3, v1, Lcom/T/T/TN/Te$T;->T2:Ljava/lang/Object;

    :goto_1
    return-object v3

    :cond_0
    iget-object v1, v1, Lcom/T/T/TN/Te$T;->TN:Lcom/T/T/TN/Te$T;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public T(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lcom/T/T/TN/Te;->T3:I

    and-int v0, v2, v3

    iget-object v3, p0, Lcom/T/T/TN/Te;->T:[Lcom/T/T/TN/Te$T;

    aget-object v1, v3, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/T/T/TN/Te$T;->T3:Ljava/lang/Object;

    if-ne p1, v3, :cond_0

    iput-object p2, v1, Lcom/T/T/TN/Te$T;->T2:Ljava/lang/Object;

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    iget-object v1, v1, Lcom/T/T/TN/Te$T;->TN:Lcom/T/T/TN/Te$T;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/T/T/TN/Te$T;

    iget-object v3, p0, Lcom/T/T/TN/Te;->T:[Lcom/T/T/TN/Te$T;

    aget-object v3, v3, v0

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/T/T/TN/Te$T;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/T/T/TN/Te$T;)V

    iget-object v3, p0, Lcom/T/T/TN/Te;->T:[Lcom/T/T/TN/Te$T;

    aput-object v1, v3, v0

    const/4 v3, 0x0

    goto :goto_1
.end method
