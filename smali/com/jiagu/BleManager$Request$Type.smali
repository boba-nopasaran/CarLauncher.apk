.class final enum Lcom/jiagu/BleManager$Request$Type;
.super Ljava/lang/Enum;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiagu/BleManager$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiagu/BleManager$Request$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiagu/BleManager$Request$Type;

.field public static final enum ENABLE_INDICATIONS:Lcom/jiagu/BleManager$Request$Type;

.field public static final enum ENABLE_NOTIFICATIONS:Lcom/jiagu/BleManager$Request$Type;

.field public static final enum READ:Lcom/jiagu/BleManager$Request$Type;

.field public static final enum WRITE:Lcom/jiagu/BleManager$Request$Type;

.field public static final enum WRITE_TYPE_NO_RESPONSE:Lcom/jiagu/BleManager$Request$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/jiagu/BleManager$Request$Type;

    const-string v1, "WRITE"

    invoke-direct {v0, v1, v2}, Lcom/jiagu/BleManager$Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiagu/BleManager$Request$Type;->WRITE:Lcom/jiagu/BleManager$Request$Type;

    new-instance v0, Lcom/jiagu/BleManager$Request$Type;

    const-string v1, "WRITE_TYPE_NO_RESPONSE"

    invoke-direct {v0, v1, v3}, Lcom/jiagu/BleManager$Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiagu/BleManager$Request$Type;->WRITE_TYPE_NO_RESPONSE:Lcom/jiagu/BleManager$Request$Type;

    new-instance v0, Lcom/jiagu/BleManager$Request$Type;

    const-string v1, "READ"

    invoke-direct {v0, v1, v4}, Lcom/jiagu/BleManager$Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiagu/BleManager$Request$Type;->READ:Lcom/jiagu/BleManager$Request$Type;

    new-instance v0, Lcom/jiagu/BleManager$Request$Type;

    const-string v1, "ENABLE_NOTIFICATIONS"

    invoke-direct {v0, v1, v5}, Lcom/jiagu/BleManager$Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiagu/BleManager$Request$Type;->ENABLE_NOTIFICATIONS:Lcom/jiagu/BleManager$Request$Type;

    new-instance v0, Lcom/jiagu/BleManager$Request$Type;

    const-string v1, "ENABLE_INDICATIONS"

    invoke-direct {v0, v1, v6}, Lcom/jiagu/BleManager$Request$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiagu/BleManager$Request$Type;->ENABLE_INDICATIONS:Lcom/jiagu/BleManager$Request$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jiagu/BleManager$Request$Type;

    sget-object v1, Lcom/jiagu/BleManager$Request$Type;->WRITE:Lcom/jiagu/BleManager$Request$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiagu/BleManager$Request$Type;->WRITE_TYPE_NO_RESPONSE:Lcom/jiagu/BleManager$Request$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jiagu/BleManager$Request$Type;->READ:Lcom/jiagu/BleManager$Request$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jiagu/BleManager$Request$Type;->ENABLE_NOTIFICATIONS:Lcom/jiagu/BleManager$Request$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jiagu/BleManager$Request$Type;->ENABLE_INDICATIONS:Lcom/jiagu/BleManager$Request$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/jiagu/BleManager$Request$Type;->$VALUES:[Lcom/jiagu/BleManager$Request$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jiagu/BleManager$Request$Type;
    .locals 1

    const-class v0, Lcom/jiagu/BleManager$Request$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiagu/BleManager$Request$Type;

    return-object v0
.end method

.method public static values()[Lcom/jiagu/BleManager$Request$Type;
    .locals 1

    sget-object v0, Lcom/jiagu/BleManager$Request$Type;->$VALUES:[Lcom/jiagu/BleManager$Request$Type;

    invoke-virtual {v0}, [Lcom/jiagu/BleManager$Request$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiagu/BleManager$Request$Type;

    return-object v0
.end method
