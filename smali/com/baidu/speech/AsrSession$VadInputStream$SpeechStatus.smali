.class public final enum Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;
.super Ljava/lang/Enum;
.source "AsrSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/AsrSession$VadInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpeechStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

.field public static final enum Begin:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

.field public static final enum Default:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

.field public static final enum End:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

.field public static final enum Pause:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

.field public static final enum Ready:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

.field public static final enum Resume:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;


# instance fields
.field public final name:Ljava/lang/String;

.field public final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    const-string v1, "Default"

    const/4 v2, -0x2

    const-string v3, "default"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Default:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    new-instance v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    const-string v1, "Ready"

    const/4 v2, -0x3

    const-string v3, "ready"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Ready:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    new-instance v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    const-string v1, "Begin"

    const/4 v2, -0x4

    const-string v3, "begin"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Begin:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    new-instance v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    const-string v1, "Pause"

    const/4 v2, -0x6

    const-string v3, "pause"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Pause:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    new-instance v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    const-string v1, "Resume"

    const/4 v2, -0x7

    const-string v3, "resume"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Resume:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    new-instance v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    const-string v1, "End"

    const/4 v2, 0x5

    const/4 v3, -0x5

    const-string v4, "end"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->End:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    sget-object v1, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Default:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Ready:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Begin:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Pause:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->Resume:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->End:Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->$VALUES:[Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->status:I

    iput-object p4, p0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;
    .locals 1

    const-class v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    return-object v0
.end method

.method public static values()[Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;
    .locals 1

    sget-object v0, Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->$VALUES:[Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    invoke-virtual {v0}, [Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/speech/AsrSession$VadInputStream$SpeechStatus;

    return-object v0
.end method
