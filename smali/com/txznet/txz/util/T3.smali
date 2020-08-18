.class public Lcom/txznet/txz/util/T3;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static T(J)[B
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [B

    invoke-static {p0, p1, v0}, Lcom/txznet/txz/util/T3;->T(J[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static T(J[B)[B
    .locals 4

    const/4 v0, 0x7

    const/16 v1, 0x38

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x6

    const/16 v1, 0x30

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x5

    const/16 v1, 0x28

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x4

    const/16 v1, 0x20

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x3

    const/16 v1, 0x18

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    const/16 v1, 0x10

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x1

    const/16 v1, 0x8

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x0

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-object p2
.end method
