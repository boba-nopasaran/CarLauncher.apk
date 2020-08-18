.class Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;
.super Ljava/lang/Object;
.source "MicrophoneInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/MicrophoneInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerSourceInputStream"
.end annotation


# static fields
.field private static audioRecorder:Landroid/media/AudioRecord;


# instance fields
.field debugCount:I

.field debugLast:I

.field private source:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Landroid/media/AudioRecord;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->debugCount:I

    iput v0, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->debugLast:I

    sput-object p1, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->audioRecorder:Landroid/media/AudioRecord;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->debugCount:I

    iput v0, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->debugLast:I

    iput-object p1, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->source:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->source:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->source:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    goto :goto_0
.end method

.method public read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->source:Ljava/io/InputStream;

    if-nez v1, :cond_2

    sget-object v1, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->audioRecorder:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recorder error #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->debugCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->debugCount:I

    iget v1, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->debugCount:I

    iget v2, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->debugLast:I

    if-le v1, v2, :cond_1

    invoke-static {}, Lcom/baidu/speech/MicrophoneInputStream;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->debugCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->debugLast:I

    add-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->debugLast:I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/baidu/speech/MicrophoneInputStream$InnerSourceInputStream;->source:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0
.end method
