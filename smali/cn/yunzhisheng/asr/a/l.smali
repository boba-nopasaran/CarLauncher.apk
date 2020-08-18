.class Lcn/yunzhisheng/asr/a/l;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcn/yunzhisheng/asr/a/k;

.field final synthetic b:Lcn/yunzhisheng/asr/a/j;


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asr/a/j;Lcn/yunzhisheng/asr/a/k;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/a/l;->b:Lcn/yunzhisheng/asr/a/j;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcn/yunzhisheng/asr/a/l;->a:Lcn/yunzhisheng/asr/a/k;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a/l;->a:Lcn/yunzhisheng/asr/a/k;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USCAsyncTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/l;->a:Lcn/yunzhisheng/asr/a/k;

    invoke-interface {v0, p1}, Lcn/yunzhisheng/asr/a/k;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/l;->b:Lcn/yunzhisheng/asr/a/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/yunzhisheng/asr/a/j;->a(Lcn/yunzhisheng/asr/a/j;Z)Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/l;->a:Lcn/yunzhisheng/asr/a/k;

    invoke-interface {v0, p1}, Lcn/yunzhisheng/asr/a/k;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/a/l;->b:Lcn/yunzhisheng/asr/a/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/yunzhisheng/asr/a/j;->a(Lcn/yunzhisheng/asr/a/j;Z)Z

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
