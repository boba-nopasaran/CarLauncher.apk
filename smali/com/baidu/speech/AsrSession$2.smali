.class Lcom/baidu/speech/AsrSession$2;
.super Ljava/lang/Object;
.source "AsrSession.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/AsrSession;->play(Landroid/content/Context;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/AsrSession;

.field final synthetic val$player:[Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/baidu/speech/AsrSession;[Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/AsrSession$2;->this$0:Lcom/baidu/speech/AsrSession;

    iput-object p2, p0, Lcom/baidu/speech/AsrSession$2;->val$player:[Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/speech/AsrSession$2;->val$player:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
