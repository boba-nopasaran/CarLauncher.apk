.class Lcom/T2/T/T/T/T/T/T2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final T:Ljava/io/InputStream;

.field private T2:[B

.field private final T3:Ljava/nio/charset/Charset;

.field private TN:I

.field private Te:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    if-gez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/T2/T/T/T/T/T/TN;->T:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lcom/T2/T/T/T/T/T/T2;->T:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/T2/T/T/T/T/T/T2;->T3:Ljava/nio/charset/Charset;

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/T2/T/T/T/T/T/T2;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T2;)Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T2;->T3:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private T3()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T2;->T:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    iput v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    iput v0, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    return-void
.end method


# virtual methods
.method public T()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0xa

    iget-object v5, p0, Lcom/T2/T/T/T/T/T/T2;->T:Ljava/io/InputStream;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v6, "LineReader is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    iget v6, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    if-lt v4, v6, :cond_1

    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T2;->T3()V

    :cond_1
    iget v0, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    :goto_0
    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    if-ne v0, v4, :cond_4

    new-instance v2, Lcom/T2/T/T/T/T/T/T2$1;

    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    iget v6, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x50

    invoke-direct {v2, p0, v4}, Lcom/T2/T/T/T/T/T/T2$1;-><init>(Lcom/T2/T/T/T/T/T/T2;I)V

    :cond_2
    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    iget v6, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    iget v7, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    iget v8, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v4, -0x1

    iput v4, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T2;->T3()V

    iget v0, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    :goto_1
    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    if-eq v0, v4, :cond_2

    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_7

    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    if-eq v0, v4, :cond_3

    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    iget v6, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    iget v7, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    sub-int v7, v0, v7

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_3
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v5

    :goto_2
    return-object v3

    :cond_4
    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_6

    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    if-eq v0, v4, :cond_5

    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    add-int/lit8 v6, v0, -0x1

    aget-byte v4, v4, v6

    const/16 v6, 0xd

    if-ne v4, v6, :cond_5

    add-int/lit8 v1, v0, -0x1

    :goto_3
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    iget v6, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    iget v7, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T2;->T3:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T2;->T:Ljava/io/InputStream;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T2;->T:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
