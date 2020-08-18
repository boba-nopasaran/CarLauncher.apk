.class Lcom/car/launchercommon/localapp/LauncherModel$6;
.super Ljava/lang/Thread;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/localapp/LauncherModel;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$6;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherModel$6;->this$0:Lcom/car/launchercommon/localapp/LauncherModel;

    invoke-static {v0}, Lcom/car/launchercommon/localapp/LauncherModel;->access$000(Lcom/car/launchercommon/localapp/LauncherModel;)V

    return-void
.end method
