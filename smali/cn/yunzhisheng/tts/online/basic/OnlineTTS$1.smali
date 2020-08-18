.class Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/yunzhisheng/tts/online/r;


# instance fields
.field final synthetic a:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;


# direct methods
.method constructor <init>(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;->a:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffer()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;->a:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;->a:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;->onBuffer()V

    :cond_0
    return-void
.end method

.method public onEnd(I)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;->a:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;->a:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

    move-result-object v0

    invoke-static {p1}, Lcn/yunzhisheng/tts/online/q;->c(I)Lcn/yunzhisheng/common/USCError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;->onEnd(Lcn/yunzhisheng/common/USCError;)V

    :cond_0
    return-void
.end method

.method public onPlayBegin()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;->a:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;->a:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;->onPlayBegin()V

    :cond_0
    return-void
.end method

.method public onPlayEnd()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;->a:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;->a:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;->onPlayEnd()V

    :cond_0
    return-void
.end method

.method public onTtsData(Lcn/yunzhisheng/tts/online/l;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/basic/OnlineTTS$1;->a:Lcn/yunzhisheng/tts/online/basic/OnlineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/basic/OnlineTTS;->a(Lcn/yunzhisheng/tts/online/basic/OnlineTTS;)Lcn/yunzhisheng/tts/online/basic/TTSPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
