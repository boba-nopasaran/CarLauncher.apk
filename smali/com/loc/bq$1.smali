.class final Lcom/loc/bq$1;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/bq;->a(Lcom/loc/bq$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/loc/bq$a;

.field private synthetic b:Lcom/loc/bq;


# direct methods
.method constructor <init>(Lcom/loc/bq;Lcom/loc/bq$a;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bq$1;->b:Lcom/loc/bq;

    iput-object p2, p0, Lcom/loc/bq$1;->a:Lcom/loc/bq$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/bq$1;->b:Lcom/loc/bq;

    invoke-static {p2}, Lcom/loc/i$a;->a(Landroid/os/IBinder;)Lcom/loc/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bq;->a(Lcom/loc/bq;Lcom/loc/i;)Lcom/loc/i;

    iget-object v0, p0, Lcom/loc/bq$1;->a:Lcom/loc/bq$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/bq$a;->a(I)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/bq$1;->b:Lcom/loc/bq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/bq;->a(Lcom/loc/bq;Lcom/loc/i;)Lcom/loc/i;

    return-void
.end method
