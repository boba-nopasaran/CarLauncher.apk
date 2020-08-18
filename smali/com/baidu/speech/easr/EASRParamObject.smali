.class public Lcom/baidu/speech/easr/EASRParamObject;
.super Ljava/lang/Object;
.source "EASRParamObject.java"

# interfaces
.implements Lcom/baidu/voicerecognition/android/NoProGuard;


# instance fields
.field public floatValue:F

.field public intValue:I

.field public stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/speech/easr/EASRParamObject;->intValue:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/speech/easr/EASRParamObject;->floatValue:F

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/speech/easr/EASRParamObject;->stringValue:Ljava/lang/String;

    iput p1, p0, Lcom/baidu/speech/easr/EASRParamObject;->floatValue:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/speech/easr/EASRParamObject;->intValue:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/speech/easr/EASRParamObject;->floatValue:F

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/speech/easr/EASRParamObject;->stringValue:Ljava/lang/String;

    iput p1, p0, Lcom/baidu/speech/easr/EASRParamObject;->intValue:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/speech/easr/EASRParamObject;->intValue:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/baidu/speech/easr/EASRParamObject;->floatValue:F

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/speech/easr/EASRParamObject;->stringValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/speech/easr/EASRParamObject;->stringValue:Ljava/lang/String;

    return-void
.end method
