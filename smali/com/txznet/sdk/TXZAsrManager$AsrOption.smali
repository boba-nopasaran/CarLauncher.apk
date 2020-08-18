.class public Lcom/txznet/sdk/TXZAsrManager$AsrOption;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAsrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsrOption"
.end annotation


# instance fields
.field T:Ljava/lang/Integer;

.field T2:Ljava/lang/Integer;

.field T3:Ljava/lang/Integer;

.field TN:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T3:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T2:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->TN:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public setBOS(I)Lcom/txznet/sdk/TXZAsrManager$AsrOption;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEOS(I)Lcom/txznet/sdk/TXZAsrManager$AsrOption;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T3:Ljava/lang/Integer;

    return-object p0
.end method

.method public setKeySpeechTimeout(I)Lcom/txznet/sdk/TXZAsrManager$AsrOption;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T2:Ljava/lang/Integer;

    return-object p0
.end method

.method public setManual(Z)Lcom/txznet/sdk/TXZAsrManager$AsrOption;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->TN:Ljava/lang/Boolean;

    return-object p0
.end method
