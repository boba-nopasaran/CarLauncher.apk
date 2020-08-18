.class final Lcom/loc/a$2;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/loc/a;


# direct methods
.method constructor <init>(Lcom/loc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/a$2;->a:Lcom/loc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/loc/a$2;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->b(Lcom/loc/a;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
