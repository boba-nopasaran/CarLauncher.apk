.class public Lcom/baidu/speech/HttpCallable$Result;
.super Ljava/lang/Object;
.source "HttpCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/HttpCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public response:Ljava/lang/String;

.field public tid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/speech/HttpCallable$Result;->tid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/speech/HttpCallable$Result;->response:Ljava/lang/String;

    iput p1, p0, Lcom/baidu/speech/HttpCallable$Result;->tid:I

    iput-object p2, p0, Lcom/baidu/speech/HttpCallable$Result;->response:Ljava/lang/String;

    return-void
.end method
