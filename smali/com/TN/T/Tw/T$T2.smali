.class public final Lcom/TN/T/Tw/T$T2;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/Tw/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T2"
.end annotation


# static fields
.field private static volatile TL:[Lcom/TN/T/Tw/T$T2;


# instance fields
.field public T2:Ljava/lang/String;

.field public T3:Ljava/lang/Integer;

.field public T7:[Ljava/lang/String;

.field public TB:[Ljava/lang/String;

.field public TG:Ljava/lang/String;

.field public TJ:Ljava/lang/Integer;

.field public TN:Ljava/lang/String;

.field public TO:Ljava/lang/String;

.field public TP:Ljava/lang/Integer;

.field public TQ:Ljava/lang/Long;

.field public TR:Ljava/lang/String;

.field public TW:Ljava/lang/String;

.field public Te:[Ljava/lang/String;

.field public Tn:Ljava/lang/Integer;

.field public To:Ljava/lang/Integer;

.field public Tr:Ljava/lang/Boolean;

.field public Tw:Ljava/lang/String;

.field public Ty:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    invoke-virtual {p0}, Lcom/TN/T/Tw/T$T2;->Te()Lcom/TN/T/Tw/T$T2;

    return-void
.end method

.method public static TN()[Lcom/TN/T/Tw/T$T2;
    .locals 2

    sget-object v0, Lcom/TN/T/Tw/T$T2;->TL:[Lcom/TN/T/Tw/T$T2;

    if-nez v0, :cond_1

    sget-object v1, Lcom/T3/T/T/T2;->T:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/TN/T/Tw/T$T2;->TL:[Lcom/TN/T/Tw/T$T2;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/TN/T/Tw/T$T2;

    sput-object v0, Lcom/TN/T/Tw/T$T2;->TL:[Lcom/TN/T/Tw/T$T2;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/TN/T/Tw/T$T2;->TL:[Lcom/TN/T/Tw/T$T2;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic T(Lcom/T3/T/T/T;)Lcom/T3/T/T/Te;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/TN/T/Tw/T$T2;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/Tw/T$T2;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/T3/T/T/T3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->T3:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->T3:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(II)V

    :cond_0
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->T2:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->T2:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TN:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->TN:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->Tw:Ljava/lang/String;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->Tw:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->Ty:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->Ty:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T3(II)V

    :cond_6
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->Tn:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->Tn:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T3(II)V

    :cond_7
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TG:Ljava/lang/String;

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->TG:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_8
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TR:Ljava/lang/String;

    if-eqz v2, :cond_9

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->TR:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TW:Ljava/lang/String;

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->TW:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TJ:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->TJ:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(II)V

    :cond_b
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_d

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_c

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TP:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->TP:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T3(II)V

    :cond_e
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->Tr:Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->Tr:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(IZ)V

    :cond_f
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_11

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_10

    const/16 v2, 0x14

    invoke-virtual {p1, v2, v0}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TO:Ljava/lang/String;

    if-eqz v2, :cond_12

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->TO:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    :cond_12
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->To:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    const/16 v2, 0x16

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->To:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T3(II)V

    :cond_13
    iget-object v2, p0, Lcom/TN/T/Tw/T$T2;->TQ:Ljava/lang/Long;

    if-eqz v2, :cond_14

    const/16 v2, 0x17

    iget-object v3, p0, Lcom/TN/T/Tw/T$T2;->TQ:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/T3/T/T/T3;->T(IJ)V

    :cond_14
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    return-void
.end method

.method protected T2()I
    .locals 8

    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v4

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->T3:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->T3:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T2(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->T2:Ljava/lang/String;

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->T2:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TN:Ljava/lang/String;

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->TN:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/T3/T/T/T3;->T3(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_5
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->Tw:Ljava/lang/String;

    if-eqz v5, :cond_6

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->Tw:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_6
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->Ty:Ljava/lang/Integer;

    if-eqz v5, :cond_7

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->Ty:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_7
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->Tn:Ljava/lang/Integer;

    if-eqz v5, :cond_8

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->Tn:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_8
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TG:Ljava/lang/String;

    if-eqz v5, :cond_9

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->TG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_9
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TR:Ljava/lang/String;

    if-eqz v5, :cond_a

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->TR:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_a
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TW:Ljava/lang/String;

    if-eqz v5, :cond_b

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->TW:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_b
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TJ:Ljava/lang/Integer;

    if-eqz v5, :cond_c

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->TJ:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T2(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_c
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_f

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_e

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/T3/T/T/T3;->T3(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_e
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_f
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TP:Ljava/lang/Integer;

    if-eqz v5, :cond_10

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->TP:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_10
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->Tr:Ljava/lang/Boolean;

    if-eqz v5, :cond_11

    const/16 v5, 0x13

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->Tr:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T3(IZ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_11
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_13

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/T3/T/T/T3;->T3(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_13
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    :cond_14
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TO:Ljava/lang/String;

    if-eqz v5, :cond_15

    const/16 v5, 0x15

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->TO:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_15
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->To:Ljava/lang/Integer;

    if-eqz v5, :cond_16

    const/16 v5, 0x16

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->To:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_16
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TQ:Ljava/lang/Long;

    if-eqz v5, :cond_17

    const/16 v5, 0x17

    iget-object v6, p0, Lcom/TN/T/Tw/T$T2;->TQ:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/T3/T/T/T3;->T3(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_17
    return v4
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/Tw/T$T2;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tw()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->T3:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->T2:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->TN:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/T3/T/T/Ty;->T3(Lcom/T3/T/T/T;I)I

    move-result v0

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->Tw:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->Ty:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->Tn:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->TG:Ljava/lang/String;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->TR:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->TW:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tw()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->TJ:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_c
    const/16 v5, 0x6a

    invoke-static {p1, v5}, Lcom/T3/T/T/Ty;->T3(Lcom/T3/T/T/T;I)I

    move-result v0

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->TP:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Ty()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->Tr:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_f
    const/16 v5, 0xa2

    invoke-static {p1, v5}, Lcom/T3/T/T/Ty;->T3(Lcom/T3/T/T/T;I)I

    move-result v0

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    if-nez v5, :cond_8

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->TO:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->To:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Te()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T2;->TQ:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x6a -> :sswitch_c
        0x70 -> :sswitch_d
        0x98 -> :sswitch_e
        0xa2 -> :sswitch_f
        0xaa -> :sswitch_10
        0xb0 -> :sswitch_11
        0xb8 -> :sswitch_12
    .end sparse-switch
.end method

.method public Te()Lcom/TN/T/Tw/T$T2;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->T3:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->T2:Ljava/lang/String;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->TN:Ljava/lang/String;

    sget-object v0, Lcom/T3/T/T/Ty;->Tw:[Ljava/lang/String;

    iput-object v0, p0, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->Tw:Ljava/lang/String;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->Ty:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->Tn:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->TG:Ljava/lang/String;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->TR:Ljava/lang/String;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->TW:Ljava/lang/String;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->TJ:Ljava/lang/Integer;

    sget-object v0, Lcom/T3/T/T/Ty;->Tw:[Ljava/lang/String;

    iput-object v0, p0, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->TP:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->Tr:Ljava/lang/Boolean;

    sget-object v0, Lcom/T3/T/T/Ty;->Tw:[Ljava/lang/String;

    iput-object v0, p0, Lcom/TN/T/Tw/T$T2;->T7:[Ljava/lang/String;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->TO:Ljava/lang/String;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->To:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/TN/T/Tw/T$T2;->TQ:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/Tw/T$T2;->T:I

    return-object p0
.end method
