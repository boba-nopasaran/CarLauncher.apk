.class public Lcn/yunzhisheng/asr/a/c;
.super Lcn/yunzhisheng/asr/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/yunzhisheng/asr/a/b;-><init>()V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a/c;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const-string v0, "([[\u54a9\u55ce]|\u4e5c\u91ce|\u4e5c]$|^(\u70b9\u89e3))"

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/c;->i:Ljava/lang/String;

    return-void
.end method

.method public b()Lcn/yunzhisheng/asr/a/b;
    .locals 1

    new-instance v0, Lcn/yunzhisheng/asr/a/c;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/a/c;-><init>()V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a/c;->b()Lcn/yunzhisheng/asr/a/b;

    move-result-object v0

    return-object v0
.end method
