.class Lcom/baidu/speech/AbsStreamDecoder$Task;
.super Ljava/lang/Object;
.source "AbsStreamDecoder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/AbsStreamDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_NUM_PIPES:I = 0x1


# instance fields
.field private final id:I

.field private ins:[Ljava/io/InputStream;

.field private outs:[Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/baidu/speech/AbsStreamDecoder;


# direct methods
.method constructor <init>(Lcom/baidu/speech/AbsStreamDecoder;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/speech/AbsStreamDecoder$Task;-><init>(Lcom/baidu/speech/AbsStreamDecoder;IZI)V

    return-void
.end method

.method constructor <init>(Lcom/baidu/speech/AbsStreamDecoder;IZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->this$0:Lcom/baidu/speech/AbsStreamDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->id:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/OutputStream;

    iput-object v2, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->outs:[Ljava/io/OutputStream;

    new-array v2, p4, [Ljava/io/InputStream;

    iput-object v2, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->ins:[Ljava/io/InputStream;

    if-nez p3, :cond_0

    new-instance v0, Lcom/baidu/speech/CycleBuffer;

    const v2, 0x78000

    invoke-direct {v0, v2}, Lcom/baidu/speech/CycleBuffer;-><init>(I)V

    iget-object v2, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->outs:[Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/baidu/speech/CycleBuffer;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->ins:[Ljava/io/InputStream;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->ins:[Ljava/io/InputStream;

    invoke-virtual {v0}, Lcom/baidu/speech/CycleBuffer;->reader()Lcom/baidu/speech/CycleBuffer$CycleReader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/speech/CycleBuffer$CycleReader;->asInputStream()Ljava/io/InputStream;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->this$0:Lcom/baidu/speech/AbsStreamDecoder;

    iget v3, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->id:I

    iget-object v4, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->ins:[Ljava/io/InputStream;

    invoke-virtual {v2, v3, v4}, Lcom/baidu/speech/AbsStreamDecoder;->onExecute(I[Ljava/io/InputStream;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/speech/AbsStreamDecoder$Task;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->id:I

    return v0
.end method

.method public getInputStreams()[Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->ins:[Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStreams()[Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/AbsStreamDecoder$Task;->outs:[Ljava/io/OutputStream;

    return-object v0
.end method
