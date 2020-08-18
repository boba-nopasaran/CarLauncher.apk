.class public Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcn/yunzhisheng/tts/JniClient;

.field public mAudioLen:I

.field public mErrorCode:I

.field public mSynthStatus:I


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/tts/JniClient;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;->a:Lcn/yunzhisheng/tts/JniClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;->mAudioLen:I

    iput v0, p0, Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;->mSynthStatus:I

    iput v0, p0, Lcn/yunzhisheng/tts/JniClient$TtsResultStatus;->mErrorCode:I

    return-void
.end method
