.class public final Lcom/T3/T/T/Ty;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final T:[I

.field public static final T2:[F

.field public static final T3:[J

.field public static final TN:[D

.field public static final Te:[Z

.field public static final Tn:[B

.field public static final Tw:[Ljava/lang/String;

.field public static final Ty:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/T3/T/T/Ty;->T:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/T3/T/T/Ty;->T3:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/T3/T/T/Ty;->T2:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/T3/T/T/Ty;->TN:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/T3/T/T/Ty;->Te:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/T3/T/T/Ty;->Tw:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/T3/T/T/Ty;->Ty:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/T3/T/T/Ty;->Tn:[B

    return-void
.end method

.method static T(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static T(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static T(Lcom/T3/T/T/T;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/T3/T/T/T;->T3(I)Z

    move-result v0

    return v0
.end method

.method public static T3(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static final T3(Lcom/T3/T/T/T;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/T3/T/T/T;->TO()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/T3/T/T/T;->T3(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/T3/T/T/T;->Tr()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/T3/T/T/T;->T()I

    move-result v2

    if-eq v2, p1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/T3/T/T/T;->Te(I)V

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/T3/T/T/T;->T3(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
