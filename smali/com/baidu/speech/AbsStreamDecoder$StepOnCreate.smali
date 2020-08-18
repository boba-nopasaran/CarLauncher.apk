.class Lcom/baidu/speech/AbsStreamDecoder$StepOnCreate;
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
    name = "StepOnCreate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/AbsStreamDecoder;


# direct methods
.method private constructor <init>(Lcom/baidu/speech/AbsStreamDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/AbsStreamDecoder$StepOnCreate;->this$0:Lcom/baidu/speech/AbsStreamDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/speech/AbsStreamDecoder;Lcom/baidu/speech/AbsStreamDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/speech/AbsStreamDecoder$StepOnCreate;-><init>(Lcom/baidu/speech/AbsStreamDecoder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/speech/AbsStreamDecoder$StepOnCreate;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/AbsStreamDecoder$StepOnCreate;->this$0:Lcom/baidu/speech/AbsStreamDecoder;

    invoke-virtual {v0}, Lcom/baidu/speech/AbsStreamDecoder;->onCreate()V

    const/4 v0, 0x0

    return-object v0
.end method
