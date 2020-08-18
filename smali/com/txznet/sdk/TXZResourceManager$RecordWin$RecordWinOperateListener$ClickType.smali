.class public final enum Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NEXTPAGE:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

.field public static final enum PREPAGE:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    const-string v1, "PREPAGE"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;->PREPAGE:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    const-string v1, "NEXTPAGE"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;->NEXTPAGE:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;->PREPAGE:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;->NEXTPAGE:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;->T:[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;
    .locals 1

    const-class v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;->T:[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ClickType;

    return-object v0
.end method
