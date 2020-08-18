.class final Lcom/baidu/speech/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;,
        Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStream"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final micIn:Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

.field private final sample:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MicrophoneInputStream"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/baidu/speech/MicrophoneInputStream;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/speech/MicrophoneInputStream;-><init>(ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x3e80

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput p1, p0, Lcom/baidu/speech/MicrophoneInputStream;->sample:I

    new-instance v0, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    invoke-direct {v0, v1, p2}, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;-><init>(ILjava/io/InputStream;)V

    iput-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream;->micIn:Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream;->micIn:Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    iput-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream;->in:Ljava/io/InputStream;

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1f40

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream;->micIn:Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    invoke-static {v0, v1, p1}, Lcom/baidu/speech/MicrophoneInputStream;->createResampleInputStream(Ljava/io/InputStream;II)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream;->in:Ljava/io/InputStream;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad sample, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/baidu/speech/MicrophoneInputStream;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static createResampleInputStream(Ljava/io/InputStream;II)Ljava/io/InputStream;
    .locals 5

    :try_start_0
    const-string v1, "android.media.ResampleInputStream"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/io/InputStream;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public globalPosition()I
    .locals 3

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream;->micIn:Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    invoke-virtual {v0}, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->globalPosition()I

    move-result v0

    const/16 v1, 0x3e80

    iget v2, p0, Lcom/baidu/speech/MicrophoneInputStream;->sample:I

    div-int/2addr v1, v2

    div-int/2addr v0, v1

    return v0
.end method

.method public position()J
    .locals 4

    iget-object v2, p0, Lcom/baidu/speech/MicrophoneInputStream;->micIn:Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    invoke-virtual {v2}, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position()J

    move-result-wide v0

    const/16 v2, 0x1f40

    iget v3, p0, Lcom/baidu/speech/MicrophoneInputStream;->sample:I

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public position(J)Lcom/baidu/speech/MicrophoneInputStream;
    .locals 5

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream;->micIn:Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    const/16 v1, 0x1f40

    iget v2, p0, Lcom/baidu/speech/MicrophoneInputStream;->sample:I

    if-ne v1, v2, :cond_0

    const-wide/16 v2, 0x2

    mul-long/2addr p1, v2

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;->position(J)Lcom/baidu/speech/MicrophoneInputStream$PrivateMicrophoneInputStream;

    return-object p0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream;->in:Ljava/io/InputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method
