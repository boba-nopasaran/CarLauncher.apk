.class public final enum Lcom/aispeech/tts/e$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aispeech/tts/e$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/aispeech/tts/e$d;

.field public static final enum b:Lcom/aispeech/tts/e$d;

.field public static final enum c:Lcom/aispeech/tts/e$d;

.field public static final enum d:Lcom/aispeech/tts/e$d;

.field public static final enum e:Lcom/aispeech/tts/e$d;

.field private static final synthetic f:[Lcom/aispeech/tts/e$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/aispeech/tts/e$d;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/aispeech/tts/e$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/tts/e$d;->a:Lcom/aispeech/tts/e$d;

    new-instance v0, Lcom/aispeech/tts/e$d;

    const-string v1, "STATE_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/aispeech/tts/e$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/tts/e$d;->b:Lcom/aispeech/tts/e$d;

    new-instance v0, Lcom/aispeech/tts/e$d;

    const-string v1, "STATE_STARTED"

    invoke-direct {v0, v1, v4}, Lcom/aispeech/tts/e$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/tts/e$d;->c:Lcom/aispeech/tts/e$d;

    new-instance v0, Lcom/aispeech/tts/e$d;

    const-string v1, "STATE_STOPPED"

    invoke-direct {v0, v1, v5}, Lcom/aispeech/tts/e$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/tts/e$d;->d:Lcom/aispeech/tts/e$d;

    new-instance v0, Lcom/aispeech/tts/e$d;

    const-string v1, "STATE_PAUSED"

    invoke-direct {v0, v1, v6}, Lcom/aispeech/tts/e$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aispeech/tts/e$d;->e:Lcom/aispeech/tts/e$d;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/aispeech/tts/e$d;

    sget-object v1, Lcom/aispeech/tts/e$d;->a:Lcom/aispeech/tts/e$d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aispeech/tts/e$d;->b:Lcom/aispeech/tts/e$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aispeech/tts/e$d;->c:Lcom/aispeech/tts/e$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aispeech/tts/e$d;->d:Lcom/aispeech/tts/e$d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aispeech/tts/e$d;->e:Lcom/aispeech/tts/e$d;

    aput-object v1, v0, v6

    sput-object v0, Lcom/aispeech/tts/e$d;->f:[Lcom/aispeech/tts/e$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aispeech/tts/e$d;
    .locals 1

    const-class v0, Lcom/aispeech/tts/e$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aispeech/tts/e$d;

    return-object v0
.end method

.method public static values()[Lcom/aispeech/tts/e$d;
    .locals 1

    sget-object v0, Lcom/aispeech/tts/e$d;->f:[Lcom/aispeech/tts/e$d;

    invoke-virtual {v0}, [Lcom/aispeech/tts/e$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aispeech/tts/e$d;

    return-object v0
.end method
