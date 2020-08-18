.class public final Lcn/yunzhisheng/tts/online/basic/OnlineTTS;
.super Ljava/lang/Object;


# static fields
.field public static final OPT_SET_CHUNK_ENABLED:I = 0xa

.field public static final OPT_SET_SERVER_ADDRESS:I = 0xb

.field private static b:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;


# instance fields
.field private a:Lcn/yunzhisheng/tts/online/s;

.field private c:Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

.field private d:Lcn/yunzhisheng/tts/online/m;

.field private e:Lcn/yunzhisheng/tts/online/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcn/yunzhisheng/tts/online/s;->a()Lcn/yunzhisheng/tts/online/s;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a:Lcn/yunzhisheng/tts/online/s;

    new-instance v0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;-><init>(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->e:Lcn/yunzhisheng/tts/online/r;

    new-instance v0, Lcn/yunzhisheng/tts/online/m;

    invoke-direct {v0}, Lcn/yunzhisheng/tts/online/m;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->d:Lcn/yunzhisheng/tts/online/m;

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->d:Lcn/yunzhisheng/tts/online/m;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/m;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->d:Lcn/yunzhisheng/tts/online/m;

    iget-object v1, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->e:Lcn/yunzhisheng/tts/online/r;

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/online/m;->a(Lcn/yunzhisheng/tts/online/r;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->d:Lcn/yunzhisheng/tts/online/m;

    invoke-virtual {v0, p2}, Lcn/yunzhisheng/tts/online/m;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a:Lcn/yunzhisheng/tts/online/s;

    iput-boolean v2, v0, Lcn/yunzhisheng/tts/online/s;->p:Z

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a:Lcn/yunzhisheng/tts/online/s;

    iput-boolean v2, v0, Lcn/yunzhisheng/tts/online/s;->q:Z

    return-void
.end method

.method static synthetic a(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->c:Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcn/yunzhisheng/tts/online/basic/OnlineTTS;
    .locals 1

    sget-object v0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->b:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    if-nez v0, :cond_0

    new-instance v0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    invoke-direct {v0, p0, p1}, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->b:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    :cond_0
    sget-object v0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->b:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.18"

    return-object v0
.end method


# virtual methods
.method public play(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->d:Lcn/yunzhisheng/tts/online/m;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/m;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->d:Lcn/yunzhisheng/tts/online/m;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/m;->a(Z)V

    return-void
.end method

.method public setDebugDir(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->d:Lcn/yunzhisheng/tts/online/m;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setOption(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a:Lcn/yunzhisheng/tts/online/s;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcn/yunzhisheng/tts/online/s;->b(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a:Lcn/yunzhisheng/tts/online/s;

    invoke-virtual {v0, p1, p2}, Lcn/yunzhisheng/tts/online/s;->a(ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPlayStartBufferTime(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->d:Lcn/yunzhisheng/tts/online/m;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/m;->a(I)V

    return-void
.end method

.method public setStreamType(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->d:Lcn/yunzhisheng/tts/online/m;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/m;->c(I)V

    return-void
.end method

.method public setTTSListener(Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->c:Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

    return-void
.end method

.method public setVoiceName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a:Lcn/yunzhisheng/tts/online/s;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/online/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->d:Lcn/yunzhisheng/tts/online/m;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/online/m;->b()V

    return-void
.end method
