.class Lcom/iflytek/cloud/SpeechRecognizer$3;
.super Lcom/iflytek/speech/LexiconListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cloud/SpeechRecognizer;->updateLexicon(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/LexiconListener;

.field final synthetic b:Lcom/iflytek/cloud/SpeechRecognizer;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/SpeechRecognizer;Lcom/iflytek/cloud/LexiconListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/SpeechRecognizer$3;->b:Lcom/iflytek/cloud/SpeechRecognizer;

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechRecognizer$3;->a:Lcom/iflytek/cloud/LexiconListener;

    invoke-direct {p0}, Lcom/iflytek/speech/LexiconListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLexiconUpdated(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechRecognizer$3;->a:Lcom/iflytek/cloud/LexiconListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechRecognizer$3;->a:Lcom/iflytek/cloud/LexiconListener;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/iflytek/cloud/LexiconListener;->onLexiconUpdated(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    goto :goto_0
.end method
