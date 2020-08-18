.class public Lcom/baidu/speech/Results$SentenceEndResult;
.super Lcom/baidu/speech/Results$RunningResult;
.source "Results.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/Results;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SentenceEndResult"
.end annotation


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/speech/Results$RunningResult;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
