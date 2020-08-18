.class Lcn/yunzhisheng/tts/online/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/yunzhisheng/tts/online/f;


# instance fields
.field final synthetic a:Lcn/yunzhisheng/tts/online/m;


# direct methods
.method constructor <init>(Lcn/yunzhisheng/tts/online/m;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/yunzhisheng/tts/online/m;->a(Lcn/yunzhisheng/tts/online/m;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->a(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    iget-object v1, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v1}, Lcn/yunzhisheng/tts/online/m;->a(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/u;

    move-result-object v1

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/online/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/yunzhisheng/tts/online/m;->a(Lcn/yunzhisheng/tts/online/m;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->b(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/r;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->b(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/yunzhisheng/tts/online/r;->onEnd(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->b(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->b(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/r;

    move-result-object v0

    invoke-interface {v0}, Lcn/yunzhisheng/tts/online/r;->onPlayBegin()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->b(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->b(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/r;

    move-result-object v0

    invoke-interface {v0}, Lcn/yunzhisheng/tts/online/r;->onPlayEnd()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->b(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->b(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/r;

    move-result-object v0

    invoke-interface {v0}, Lcn/yunzhisheng/tts/online/r;->onBuffer()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->c(Lcn/yunzhisheng/tts/online/m;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/tts/online/n;->a(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->b(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/r;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/tts/online/n;->a(I)V

    goto :goto_0

    :pswitch_7
    const-string v0, "recognizer cancel"

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/tts/online/n;->a:Lcn/yunzhisheng/tts/online/m;

    invoke-static {v0}, Lcn/yunzhisheng/tts/online/m;->b(Lcn/yunzhisheng/tts/online/m;)Lcn/yunzhisheng/tts/online/r;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
