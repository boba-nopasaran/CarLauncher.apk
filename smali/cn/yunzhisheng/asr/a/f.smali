.class public Lcn/yunzhisheng/asr/a/f;
.super Lcn/yunzhisheng/asr/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/yunzhisheng/asr/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public synthetic b()Lcn/yunzhisheng/asr/a/b;
    .locals 1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a/f;->d()Lcn/yunzhisheng/asr/a/f;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a/f;->d()Lcn/yunzhisheng/asr/a/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcn/yunzhisheng/asr/a/f;
    .locals 1

    new-instance v0, Lcn/yunzhisheng/asr/a/f;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/a/f;-><init>()V

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
