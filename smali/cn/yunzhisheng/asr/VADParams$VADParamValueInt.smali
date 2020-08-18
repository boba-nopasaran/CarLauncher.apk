.class public Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;
.super Lcn/yunzhisheng/asr/VADParams$VADParamValue;


# instance fields
.field final synthetic c:Lcn/yunzhisheng/asr/VADParams;


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asr/VADParams;I)V
    .locals 1

    iput-object p1, p0, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->c:Lcn/yunzhisheng/asr/VADParams;

    add-int/lit16 v0, p2, 0x2710

    invoke-direct {p0, p1, v0}, Lcn/yunzhisheng/asr/VADParams$VADParamValue;-><init>(Lcn/yunzhisheng/asr/VADParams;I)V

    return-void
.end method


# virtual methods
.method public setValue(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/asr/VADParams$VADParamValueInt;->a:Ljava/lang/String;

    return-void
.end method
