.class Lcn/yunzhisheng/asr/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/yunzhisheng/asr/g;


# instance fields
.field final synthetic a:Lcn/yunzhisheng/asr/m;


# direct methods
.method constructor <init>(Lcn/yunzhisheng/asr/m;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/n;->a:Lcn/yunzhisheng/asr/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recognizer timeout("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/n;->a:Lcn/yunzhisheng/asr/m;

    invoke-static {v1}, Lcn/yunzhisheng/asr/m;->a(Lcn/yunzhisheng/asr/m;)Lcn/yunzhisheng/asr/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/n;->a:Lcn/yunzhisheng/asr/m;

    invoke-static {v0}, Lcn/yunzhisheng/asr/m;->b(Lcn/yunzhisheng/asr/m;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/n;->a:Lcn/yunzhisheng/asr/m;

    invoke-static {v0}, Lcn/yunzhisheng/asr/m;->c(Lcn/yunzhisheng/asr/m;)Lcn/yunzhisheng/asr/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/n;->a:Lcn/yunzhisheng/asr/m;

    invoke-static {v0}, Lcn/yunzhisheng/asr/m;->c(Lcn/yunzhisheng/asr/m;)Lcn/yunzhisheng/asr/q;

    move-result-object v0

    const v1, -0xf232

    invoke-interface {v0, v1}, Lcn/yunzhisheng/asr/q;->a(I)V

    :cond_0
    return-void
.end method
