.class Lcn/yunzhisheng/asr/s;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/yunzhisheng/asr/r;


# direct methods
.method constructor <init>(Lcn/yunzhisheng/asr/r;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/r;->a(Landroid/os/Message;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v1, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/asr/r;->a(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/r;->g()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/r;->f()V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/yunzhisheng/asr/k;

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/asr/r;->a(Lcn/yunzhisheng/asr/k;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/r;->e()V

    goto :goto_1

    :pswitch_6
    iget-object v1, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/asr/r;->d(I)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/r;->d()V

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/r;->c()V

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/r;->b()V

    goto :goto_1

    :pswitch_a
    iget-object v1, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/asr/r;->c(I)V

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/r;->a()V

    goto :goto_1

    :pswitch_c
    iget-object v1, p0, Lcn/yunzhisheng/asr/s;->a:Lcn/yunzhisheng/asr/r;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/asr/r;->b(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
