.class Lcom/txznet/sdk/TXZMusicManager$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZMusicManager;->setMusicTool(Lcom/txznet/sdk/TXZMusicManager$MusicTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

.field final synthetic T3:Lcom/txznet/sdk/TXZMusicManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZMusicManager;Lcom/txznet/sdk/TXZMusicManager$MusicTool;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T3:Lcom/txznet/sdk/TXZMusicManager;

    iput-object p2, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 3

    const/4 v0, 0x0

    const-string v1, "isPlaying"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "play"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->play()V

    goto :goto_0

    :cond_2
    const-string v1, "pause"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->pause()V

    goto :goto_0

    :cond_3
    const-string v1, "exit"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->exit()V

    goto :goto_0

    :cond_4
    const-string v1, "playMusic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->fromString(Ljava/lang/String;)Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->playMusic(Lcom/txznet/sdk/TXZMusicManager$MusicModel;)V

    goto :goto_0

    :cond_5
    const-string v1, "next"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->next()V

    goto :goto_0

    :cond_6
    const-string v1, "prev"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->prev()V

    goto :goto_0

    :cond_7
    const-string v1, "switchSong"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->switchSong()V

    goto :goto_0

    :cond_8
    const-string v1, "favourMusic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->favourMusic()V

    goto :goto_0

    :cond_9
    const-string v1, "unfavourMusic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->unfavourMusic()V

    goto/16 :goto_0

    :cond_a
    const-string v1, "playFavourMusic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->playFavourMusic()V

    goto/16 :goto_0

    :cond_b
    const-string v1, "playRandom"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->playRandom()V

    goto/16 :goto_0

    :cond_c
    const-string v1, "getCurrentMusicModel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v0}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->getCurrentMusicModel()Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v1, "switchModeLoopAll"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->switchModeLoopAll()V

    goto/16 :goto_0

    :cond_e
    const-string v1, "switchModeLoopOne"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->switchModeLoopOne()V

    goto/16 :goto_0

    :cond_f
    const-string v1, "switchModeRandom"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/sdk/TXZMusicManager$3;->T:Lcom/txznet/sdk/TXZMusicManager$MusicTool;

    invoke-interface {v1}, Lcom/txznet/sdk/TXZMusicManager$MusicTool;->switchModeRandom()V

    goto/16 :goto_0
.end method
