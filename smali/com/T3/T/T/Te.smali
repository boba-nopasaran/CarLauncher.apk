.class public abstract Lcom/T3/T/T/Te;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field protected volatile T:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/T3/T/T/Te;->T:I

    return-void
.end method

.method public static final T(Lcom/T3/T/T/Te;[B)Lcom/T3/T/T/Te;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/T3/T/T/Te;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/T3/T/T/TN;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/T3/T/T/Te;->T3(Lcom/T3/T/T/Te;[BII)Lcom/T3/T/T/Te;

    move-result-object v0

    return-object v0
.end method

.method public static final T(Lcom/T3/T/T/Te;[BII)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/T3/T/T/T3;->T([BII)Lcom/T3/T/T/T3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    invoke-virtual {v0}, Lcom/T3/T/T/T3;->T3()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final T(Lcom/T3/T/T/Te;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/T3/T/T/Te;->T3()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/Te;[BII)V

    return-object v0
.end method

.method public static final T3(Lcom/T3/T/T/Te;[BII)Lcom/T3/T/T/Te;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/T3/T/T/Te;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/T3/T/T/TN;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/T3/T/T/T;->T([BII)Lcom/T3/T/T/T;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T;)Lcom/T3/T/T/Te;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/T3/T/T/T;->T(I)V
    :try_end_0
    .catch Lcom/T3/T/T/TN; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public T()I
    .locals 1

    iget v0, p0, Lcom/T3/T/T/Te;->T:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/T3/T/T/Te;->T3()I

    :cond_0
    iget v0, p0, Lcom/T3/T/T/Te;->T:I

    return v0
.end method

.method public abstract T(Lcom/T3/T/T/T;)Lcom/T3/T/T/Te;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public T(Lcom/T3/T/T/T3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected T2()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T3()I
    .locals 1

    invoke-virtual {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v0

    iput v0, p0, Lcom/T3/T/T/Te;->T:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/T3/T/T/Tw;->T(Lcom/T3/T/T/Te;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
