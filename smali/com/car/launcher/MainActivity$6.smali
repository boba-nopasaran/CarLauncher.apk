.class Lcom/car/launcher/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launcher/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launcher/MainActivity;


# direct methods
.method constructor <init>(Lcom/car/launcher/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launcher/MainActivity$6;->this$0:Lcom/car/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/car/launcher/MainActivity$6;->this$0:Lcom/car/launcher/MainActivity;

    const-string v1, "com.car.launcher"

    invoke-static {v0, v1}, Lcom/car/launcher/StartsUtil;->startNaviReset(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
