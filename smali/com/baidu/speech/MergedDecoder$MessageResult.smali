.class public final Lcom/baidu/speech/MergedDecoder$MessageResult;
.super Lcom/baidu/speech/Results$Result;
.source "MergedDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/MergedDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MessageResult"
.end annotation


# instance fields
.field private final engineType:I

.field final synthetic this$0:Lcom/baidu/speech/MergedDecoder;


# direct methods
.method protected constructor <init>(Lcom/baidu/speech/MergedDecoder;Lorg/json/JSONObject;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/speech/MergedDecoder$MessageResult;->this$0:Lcom/baidu/speech/MergedDecoder;

    invoke-direct {p0, p2}, Lcom/baidu/speech/Results$Result;-><init>(Lorg/json/JSONObject;)V

    iput p3, p0, Lcom/baidu/speech/MergedDecoder$MessageResult;->engineType:I

    return-void
.end method


# virtual methods
.method public getEngineType()I
    .locals 1

    iget v0, p0, Lcom/baidu/speech/MergedDecoder$MessageResult;->engineType:I

    return v0
.end method
