.class Lcn/yunzhisheng/understander/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/yunzhisheng/nlu/USCNluListener;


# instance fields
.field final synthetic a:Lcn/yunzhisheng/understander/a;


# direct methods
.method constructor <init>(Lcn/yunzhisheng/understander/a;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/understander/b;->a:Lcn/yunzhisheng/understander/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(I)V
    .locals 3

    iget-object v0, p0, Lcn/yunzhisheng/understander/b;->a:Lcn/yunzhisheng/understander/a;

    const/16 v1, 0x65

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/understander/a;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/understander/b;->a:Lcn/yunzhisheng/understander/a;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcn/yunzhisheng/understander/a;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
