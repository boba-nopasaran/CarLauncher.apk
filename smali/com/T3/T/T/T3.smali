.class public final Lcom/T3/T/T/T3;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/T3/T/T/T3$T;
    }
.end annotation


# instance fields
.field private final T:[B

.field private T2:I

.field private final T3:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/T3/T/T/T3;->T:[B

    iput p2, p0, Lcom/T3/T/T/T3;->T2:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/T3/T/T/T3;->T3:I

    return-void
.end method

.method public static T([BII)Lcom/T3/T/T/T3;
    .locals 1

    new-instance v0, Lcom/T3/T/T/T3;

    invoke-direct {v0, p0, p1, p2}, Lcom/T3/T/T/T3;-><init>([BII)V

    return-object v0
.end method

.method public static T2(I)I
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/T3/T/T/T3;->Tn(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static T2(II)I
    .locals 2

    invoke-static {p0}, Lcom/T3/T/T/T3;->Tw(I)I

    move-result v0

    invoke-static {p1}, Lcom/T3/T/T/T3;->T2(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static T3(D)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static T3(F)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static T3(ID)I
    .locals 3

    invoke-static {p0}, Lcom/T3/T/T/T3;->Tw(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/T3/T/T/T3;->T3(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static T3(IF)I
    .locals 2

    invoke-static {p0}, Lcom/T3/T/T/T3;->Tw(I)I

    move-result v0

    invoke-static {p1}, Lcom/T3/T/T/T3;->T3(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static T3(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/T3/T/T/T3;->Tw(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/T3/T/T/T3;->T3(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static T3(ILcom/T3/T/T/Te;)I
    .locals 2

    invoke-static {p0}, Lcom/T3/T/T/T3;->Tw(I)I

    move-result v0

    invoke-static {p1}, Lcom/T3/T/T/T3;->T3(Lcom/T3/T/T/Te;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static T3(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/T3/T/T/T3;->Tw(I)I

    move-result v0

    invoke-static {p1}, Lcom/T3/T/T/T3;->T3(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static T3(IZ)I
    .locals 2

    invoke-static {p0}, Lcom/T3/T/T/T3;->Tw(I)I

    move-result v0

    invoke-static {p1}, Lcom/T3/T/T/T3;->T3(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static T3(I[B)I
    .locals 2

    invoke-static {p0}, Lcom/T3/T/T/T3;->Tw(I)I

    move-result v0

    invoke-static {p1}, Lcom/T3/T/T/T3;->T3([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static T3(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/T3/T/T/T3;->TN(J)I

    move-result v0

    return v0
.end method

.method public static T3(Lcom/T3/T/T/Te;)I
    .locals 2

    invoke-virtual {p0}, Lcom/T3/T/T/Te;->T3()I

    move-result v0

    invoke-static {v0}, Lcom/T3/T/T/T3;->Tn(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static T3(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/T3/T/T/T3;->Tn(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static T3(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static T3([B)I
    .locals 2

    array-length v0, p0

    invoke-static {v0}, Lcom/T3/T/T/T3;->Tn(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static TN(I)I
    .locals 1

    invoke-static {p0}, Lcom/T3/T/T/T3;->Tn(I)I

    move-result v0

    return v0
.end method

.method public static TN(II)I
    .locals 2

    invoke-static {p0}, Lcom/T3/T/T/T3;->Tw(I)I

    move-result v0

    invoke-static {p1}, Lcom/T3/T/T/T3;->TN(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static TN(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static Tn(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static Tw(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/T3/T/T/Ty;->T(II)I

    move-result v0

    invoke-static {v0}, Lcom/T3/T/T/T3;->Tn(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public T()I
    .locals 2

    iget v0, p0, Lcom/T3/T/T/T3;->T3:I

    iget v1, p0, Lcom/T3/T/T/T3;->T2:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public T(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/T3/T/T/T3;->T2:I

    iget v1, p0, Lcom/T3/T/T/T3;->T3:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/T3/T/T/T3$T;

    iget v1, p0, Lcom/T3/T/T/T3;->T2:I

    iget v2, p0, Lcom/T3/T/T/T3;->T3:I

    invoke-direct {v0, v1, v2}, Lcom/T3/T/T/T3$T;-><init>(II)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/T3/T/T/T3;->T:[B

    iget v1, p0, Lcom/T3/T/T/T3;->T2:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/T3/T/T/T3;->T2:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public T(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/T3/T/T/T3;->Te(J)V

    return-void
.end method

.method public T(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->TG(I)V

    return-void
.end method

.method public T(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/T3/T/T/T3;->Ty(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/T3/T/T/T3;->T2(J)V

    goto :goto_0
.end method

.method public T(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/T3/T/T/T3;->Te(II)V

    invoke-virtual {p0, p2, p3}, Lcom/T3/T/T/T3;->T(D)V

    return-void
.end method

.method public T(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/T3/T/T/T3;->Te(II)V

    invoke-virtual {p0, p2}, Lcom/T3/T/T/T3;->T(F)V

    return-void
.end method

.method public T(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/T3/T/T/T3;->Te(II)V

    invoke-virtual {p0, p2}, Lcom/T3/T/T/T3;->T(I)V

    return-void
.end method

.method public T(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/T3/T/T/T3;->Te(II)V

    invoke-virtual {p0, p2, p3}, Lcom/T3/T/T/T3;->T(J)V

    return-void
.end method

.method public T(ILcom/T3/T/T/Te;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/T3/T/T/T3;->Te(II)V

    invoke-virtual {p0, p2}, Lcom/T3/T/T/T3;->T(Lcom/T3/T/T/Te;)V

    return-void
.end method

.method public T(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/T3/T/T/T3;->Te(II)V

    invoke-virtual {p0, p2}, Lcom/T3/T/T/T3;->T(Ljava/lang/String;)V

    return-void
.end method

.method public T(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/T3/T/T/T3;->Te(II)V

    invoke-virtual {p0, p2}, Lcom/T3/T/T/T3;->T(Z)V

    return-void
.end method

.method public T(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/T3/T/T/T3;->Te(II)V

    invoke-virtual {p0, p2}, Lcom/T3/T/T/T3;->T([B)V

    return-void
.end method

.method public T(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/T3/T/T/T3;->T2(J)V

    return-void
.end method

.method public T(Lcom/T3/T/T/Te;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T3/T/T/Te;->T()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Ty(I)V

    invoke-virtual {p1, p0}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/T3/T/T/T3;->Ty(I)V

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->T2([B)V

    return-void
.end method

.method public T(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public T([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Ty(I)V

    invoke-virtual {p0, p1}, Lcom/T3/T/T/T3;->T2([B)V

    return-void
.end method

.method public T2(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public T2([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/T3/T/T/T3;->T3([BII)V

    return-void
.end method

.method public T3()V
    .locals 2

    invoke-virtual {p0}, Lcom/T3/T/T/T3;->T()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public T3(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T3/T/T/T3;->Ty(I)V

    return-void
.end method

.method public T3(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/T3/T/T/T3;->Te(II)V

    invoke-virtual {p0, p2}, Lcom/T3/T/T/T3;->T3(I)V

    return-void
.end method

.method public T3([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/T3/T/T/T3;->T3:I

    iget v1, p0, Lcom/T3/T/T/T3;->T2:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/T3/T/T/T3;->T:[B

    iget v1, p0, Lcom/T3/T/T/T3;->T2:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/T3/T/T/T3;->T2:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/T3/T/T/T3;->T2:I

    return-void

    :cond_0
    new-instance v0, Lcom/T3/T/T/T3$T;

    iget v1, p0, Lcom/T3/T/T/T3;->T2:I

    iget v2, p0, Lcom/T3/T/T/T3;->T3:I

    invoke-direct {v0, v1, v2}, Lcom/T3/T/T/T3$T;-><init>(II)V

    throw v0
.end method

.method public TG(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    return-void
.end method

.method public Te(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->T(B)V

    return-void
.end method

.method public Te(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/T3/T/T/Ty;->T(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Ty(I)V

    return-void
.end method

.method public Te(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    return-void
.end method

.method public Ty(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/T3/T/T/T3;->Te(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/T3/T/T/T3;->Te(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
