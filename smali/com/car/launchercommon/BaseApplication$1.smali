.class Lcom/car/launchercommon/BaseApplication$1;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/BaseApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/launchercommon/BaseApplication;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/BaseApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/BaseApplication$1;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$1;->this$0:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v0}, Lcom/car/launchercommon/BaseApplication;->access$300(Lcom/car/launchercommon/BaseApplication;)V

    return-void
.end method
