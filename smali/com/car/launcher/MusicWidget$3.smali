.class Lcom/car/launcher/MusicWidget$3;
.super Ljava/lang/Object;
.source "MusicWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launcher/MusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launcher/MusicWidget;


# direct methods
.method constructor <init>(Lcom/car/launcher/MusicWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launcher/MusicWidget$3;->this$0:Lcom/car/launcher/MusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "LC.MusicWidget"

    const-string v1, "previous button is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/launcher/MusicWidget$3;->this$0:Lcom/car/launcher/MusicWidget;

    invoke-static {v0}, Lcom/car/launcher/MusicWidget;->access$000(Lcom/car/launcher/MusicWidget;)Lcom/car/launchercommon/MusicTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/launchercommon/MusicTool;->prev()V

    return-void
.end method
