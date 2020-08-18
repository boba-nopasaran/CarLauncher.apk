.class public Lcn/yunzhisheng/asr/a/d;
.super Lcn/yunzhisheng/asr/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/yunzhisheng/asr/a/b;-><init>()V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a/d;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const-string v0, "\uff0c"

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/d;->e:Ljava/lang/String;

    const-string v0, "\uff0c\uff0c"

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/d;->f:Ljava/lang/String;

    const-string v0, "\uff1f"

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/d;->g:Ljava/lang/String;

    const-string v0, "\u3002"

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/d;->h:Ljava/lang/String;

    const-string v0, "([\u5417\u5462]$)|(^(\u8bf7\u95ee)|(\u4e3a(\u4ec0\u4e48|\u5565))|(\u600e\u4e48))"

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/d;->i:Ljava/lang/String;

    return-void
.end method

.method public b()Lcn/yunzhisheng/asr/a/b;
    .locals 1

    new-instance v0, Lcn/yunzhisheng/asr/a/d;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/a/d;-><init>()V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a/d;->b()Lcn/yunzhisheng/asr/a/b;

    move-result-object v0

    return-object v0
.end method
