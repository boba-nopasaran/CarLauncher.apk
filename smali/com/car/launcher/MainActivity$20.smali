.class Lcom/car/launcher/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/car/launcher/MainActivity$20;->this$0:Lcom/car/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/car/launcher/MainActivity$20;->this$0:Lcom/car/launcher/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/launchercommon/Util;->backlightDown(Landroid/content/Context;Z)V

    return-void
.end method
