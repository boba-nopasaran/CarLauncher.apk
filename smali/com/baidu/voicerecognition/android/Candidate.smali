.class public final Lcom/baidu/voicerecognition/android/Candidate;
.super Ljava/lang/Object;
.source "Candidate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/baidu/voicerecognition/android/NoProGuard;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final belief:D

.field private wordString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/Candidate;->wordString:Ljava/lang/String;

    iput-wide p2, p0, Lcom/baidu/voicerecognition/android/Candidate;->belief:D

    return-void
.end method


# virtual methods
.method public getBelief()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/voicerecognition/android/Candidate;->belief:D

    return-wide v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/voicerecognition/android/Candidate;->wordString:Ljava/lang/String;

    return-object v0
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/voicerecognition/android/Candidate;->wordString:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/voicerecognition/android/Candidate;->wordString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/voicerecognition/android/Candidate;->belief:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
