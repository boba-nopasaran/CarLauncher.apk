.class public abstract Lcom/T/T/T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2;
.implements Lcom/T/T/Tw;


# static fields
.field public static T:Ljava/lang/String;

.field public static T2:Ljava/lang/String;

.field public static T3:I

.field public static TN:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v1, "@type"

    sput-object v1, Lcom/T/T/T;->T:Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/T/T/T3/TN;->T:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/T/T/T3/TN;->Te:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/T/T/T3/TN;->Tn:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/T/T/T3/TN;->T2:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/T/T/T3/TN;->TN:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/T/T/T3/TN;->TR:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/T/T/T3/TN;->TG:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/T/T/T;->T3:I

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sput-object v1, Lcom/T/T/T;->T2:Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/T/T/T2/T3c;->T:Lcom/T/T/T2/T3c;

    invoke-virtual {v1}, Lcom/T/T/T2/T3c;->T()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/T/T/T2/T3c;->TR:Lcom/T/T/T2/T3c;

    invoke-virtual {v1}, Lcom/T/T/T2/T3c;->T()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/T/T/T2/T3c;->TN:Lcom/T/T/T2/T3c;

    invoke-virtual {v1}, Lcom/T/T/T2/T3c;->T()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/T/T/T2/T3c;->TW:Lcom/T/T/T2/T3c;

    invoke-virtual {v1}, Lcom/T/T/T2/T3c;->T()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/T/T/T;->TN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static T(Lcom/T/T/T3/T2;Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            "TT;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->Ty()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/T/T/T3/T2;->Ty()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/T/T/T3/T2$T;

    invoke-virtual {v6}, Lcom/T/T/T3/T2$T;->T2()Lcom/T/T/T3/T/T0;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v6}, Lcom/T/T/T3/T2$T;->TN()Lcom/T/T/T3/TR;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/T/T/T3/T2$T;->TN()Lcom/T/T/T3/TR;

    move-result-object v7

    invoke-virtual {v7}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v2

    :cond_0
    invoke-virtual {v6}, Lcom/T/T/T3/T2$T;->T3()Ljava/lang/String;

    move-result-object v3

    const-string v7, "$"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v3}, Lcom/T/T/T3/T2;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v2, v4}, Lcom/T/T/T3/T/T0;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/T/T/T3/T2$T;->T()Lcom/T/T/T3/TR;

    move-result-object v7

    invoke-virtual {v7}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_2
    return v5
.end method

.method public static final T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/T/T/T3/TN;

    invoke-static {p0, p1, v0}, Lcom/T/T/T;->T(Ljava/lang/String;Ljava/lang/Class;[Lcom/T/T/T3/TN;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs T(Ljava/lang/String;Ljava/lang/Class;[Lcom/T/T/T3/TN;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Lcom/T/T/T3/TN;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/T/T/T3/TJ;->T()Lcom/T/T/T3/TJ;

    move-result-object v0

    sget v1, Lcom/T/T/T;->T3:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/T/T/T;->T(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;I[Lcom/T/T/T3/TN;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs T(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;I[Lcom/T/T/T3/TN;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/T/T/T3/TJ;",
            "I[",
            "Lcom/T/T/T3/TN;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    move-object v0, p4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    const/4 v6, 0x1

    invoke-static {p3, v1, v6}, Lcom/T/T/T3/TN;->T(ILcom/T/T/T3/TN;Z)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/T/T/T3/T2;

    invoke-direct {v4, p0, p2, p3}, Lcom/T/T/T3/T2;-><init>(Ljava/lang/String;Lcom/T/T/T3/TJ;I)V

    invoke-virtual {v4, p1}, Lcom/T/T/T3/T2;->T(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/T/T/T;->T(Lcom/T/T/T3/T2;Ljava/lang/Object;)I

    invoke-virtual {v4}, Lcom/T/T/T3/T2;->close()V

    goto :goto_0
.end method

.method public static final T(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/T/T/T2/T3c;

    invoke-static {p0, v0}, Lcom/T/T/T;->T(Ljava/lang/Object;[Lcom/T/T/T2/T3c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs T(Ljava/lang/Object;[Lcom/T/T/T2/T3c;)Ljava/lang/String;
    .locals 7

    new-instance v4, Lcom/T/T/T2/T30;

    invoke-direct {v4}, Lcom/T/T/T2/T30;-><init>()V

    :try_start_0
    new-instance v5, Lcom/T/T/T2/TS;

    invoke-direct {v5, v4}, Lcom/T/T/T2/TS;-><init>(Lcom/T/T/T2/T30;)V

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, p0}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/T/T/T2/T30;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    invoke-virtual {v4}, Lcom/T/T/T2/T30;->close()V

    return-object v6

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Lcom/T/T/T2/T30;->close()V

    throw v6
.end method

.method public static final T3(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Lcom/T/T/T3/T2;

    invoke-static {}, Lcom/T/T/T3/TJ;->T()Lcom/T/T/T3/TJ;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/T/T/T3/T2;-><init>(Ljava/lang/String;Lcom/T/T/T3/TJ;)V

    invoke-virtual {v2}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/T/T/T3/Te;->T()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/T/T/T3/T2;->close()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1, v1}, Lcom/T/T/T3/T2;->T(Ljava/lang/Class;Ljava/util/Collection;)V

    invoke-static {v2, v1}, Lcom/T/T/T;->T(Lcom/T/T/T3/T2;Ljava/lang/Object;)I

    goto :goto_1
.end method


# virtual methods
.method public T()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/T/T/T2/T30;

    invoke-direct {v0}, Lcom/T/T/T2/T30;-><init>()V

    :try_start_0
    new-instance v1, Lcom/T/T/T2/TS;

    invoke-direct {v1, v0}, Lcom/T/T/T2/TS;-><init>(Lcom/T/T/T2/T30;)V

    invoke-virtual {v1, p0}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/T/T/T2/T30;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Lcom/T/T/T2/T30;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/T/T/T2/T30;->close()V

    throw v1
.end method

.method public T(Ljava/lang/Appendable;)V
    .locals 4

    new-instance v1, Lcom/T/T/T2/T30;

    invoke-direct {v1}, Lcom/T/T/T2/T30;-><init>()V

    :try_start_0
    new-instance v2, Lcom/T/T/T2/TS;

    invoke-direct {v2, v1}, Lcom/T/T/T2/TS;-><init>(Lcom/T/T/T2/T30;)V

    invoke-virtual {v2, p0}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/T/T/T2/T30;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/T/T/T2/T30;->close()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/T/T/TN;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/T/T/T2/T30;->close()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/T/T/T;->T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
