.class public Lcom/txznet/sdk/bean/WechatMessage;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final MSG_TYPE_HTML:I = 0x2

.field public static final MSG_TYPE_IMG:I = 0x3

.field public static final MSG_TYPE_LOCATION:I = 0x5

.field public static final MSG_TYPE_TEXT:I = 0x1

.field public static final MSG_TYPE_VOICE:I = 0x4


# instance fields
.field private T:Ljava/lang/String;

.field private T2:Ljava/lang/String;

.field private T3:Ljava/lang/String;

.field private TN:I

.field private Te:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/bean/WechatMessage;->setId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/txznet/sdk/bean/WechatMessage;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/txznet/sdk/bean/WechatMessage;->setSenderId(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/txznet/sdk/bean/WechatMessage;->setContent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/WechatMessage;->Te:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/WechatMessage;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/WechatMessage;->T3:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/bean/WechatMessage;->T2:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/txznet/sdk/bean/WechatMessage;->TN:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/WechatMessage;->Te:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/WechatMessage;->T:Ljava/lang/String;

    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/WechatMessage;->T3:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/bean/WechatMessage;->T2:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/sdk/bean/WechatMessage;->TN:I

    return-void
.end method
