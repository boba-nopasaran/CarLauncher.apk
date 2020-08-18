.class Lcom/baidu/speech/AmrInputStream;
.super Ljava/io/InputStream;
.source "AmrInputStream.java"


# static fields
.field private static final HEAD_AMR_16K:[B

.field private static final HEAD_AMR_8K:[B


# instance fields
.field private cache:Ljava/nio/ByteBuffer;

.field private in:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/speech/AmrInputStream;->HEAD_AMR_8K:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/speech/AmrInputStream;->HEAD_AMR_16K:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x7t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/baidu/speech/AmrInputStream;->cache:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/baidu/speech/AmrInputStream;->createAmrInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/speech/AmrInputStream;->in:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/baidu/speech/AmrInputStream;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sample"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/baidu/speech/AmrInputStream;->cache:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/baidu/speech/AmrInputStream;->HEAD_AMR_8K:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/baidu/speech/AmrInputStream;->cache:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/baidu/speech/AmrInputStream;->HEAD_AMR_16K:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_0
        0x3e80 -> :sswitch_1
    .end sparse-switch
.end method

.method private static createAmrInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5

    :try_start_0
    const-string v1, "android.media.AmrInputStream"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/io/InputStream;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/AmrInputStream;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/AmrInputStream;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/speech/AmrInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method
