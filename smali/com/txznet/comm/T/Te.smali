.class Lcom/txznet/comm/T/Te;
.super Landroid/app/Activity;
.source "Proguard"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/txznet/comm/T/T;->T3(Landroid/app/Activity;)V

    :try_start_0
    const-string v2, "com.txznet.txz.comm.R$style"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "AppTransparentTheme"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/txznet/comm/T/Te;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txznet/comm/T/T;->T(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/Te;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T/T;->T()Lcom/txznet/comm/T/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/T;->T3()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "destroy"

    invoke-static {v0}, Lcom/txznet/comm/T/T2;->T2(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
