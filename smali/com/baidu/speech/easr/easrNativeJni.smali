.class public Lcom/baidu/speech/easr/easrNativeJni;
.super Ljava/lang/Object;
.source "easrNativeJni.java"


# static fields
.field public static final VERIFY_LICENSE_EXPIRED:I = -0x5

.field public static final VERIFY_LICENSE_FAIL_1:I = -0x1

.field public static final VERIFY_LICENSE_FAIL_7:I = -0x7

.field public static final VERIFY_LICENSE_FAIL_CUID:I = -0x4

.field public static final VERIFY_LICENSE_FAIL_PACKAGE_NAME:I = -0x2

.field public static final VERIFY_LICENSE_FAIL_SIGNATURE:I = -0x3

.field public static final VERIFY_LICENSE_WILL_EXPIRED:I = -0x6

.field public static final VERIFY_OK:I = 0x0

.field public static final VERIFY_TEST_LICENSE_EXPIRED:I = -0xa

.field public static final VERIFY_TEST_LICENSE_OK_PREFIX:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "bdEASRAndroid"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native BuildNet(ILjava/lang/String;)I
.end method

.method public static native BuildSlot(Ljava/lang/String;I)I
.end method

.method public static native CalPostProcessTransf(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native CheckMD5(Ljava/lang/String;)Z
.end method

.method public static native Decode(I[SI[[BIZ)I
.end method

.method public static native ExistFile(Ljava/lang/String;)Z
.end method

.method public static native Free()I
.end method

.method public static native GetDate(Ljava/lang/String;)I
.end method

.method public static native GetImmeSentence(I)Ljava/lang/String;
.end method

.method public static native GetLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native GetPyED(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native GetStateED(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native GetTestAuthorize()I
.end method

.method public static native GetVadEd(I)I
.end method

.method public static native GetVadSt(I)I
.end method

.method public static native GetVersion()I
.end method

.method public static native Initial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public static native InitialDecoder(IIID)I
.end method

.method public static native InitialVAD(IFF)I
.end method

.method public static Load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 16

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, -0x1

    :goto_0
    return v14

    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":f_1"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":f_3"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":f_4"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":f_5"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":f_6"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":f_a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":f_b"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":f_c"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":c_a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":c_b"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":c_c"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/baidu/speech/easr/easrNativeJni;->ExistFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {v6}, Lcom/baidu/speech/easr/easrNativeJni;->ExistFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {v7}, Lcom/baidu/speech/easr/easrNativeJni;->ExistFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {v8}, Lcom/baidu/speech/easr/easrNativeJni;->ExistFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    move/from16 v0, p4

    invoke-static {v7, v8, v5, v6, v0}, Lcom/baidu/speech/easr/easrNativeJni;->Initial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v13

    if-gez v13, :cond_2

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_1
    const-string v14, "EASR"

    const-string v15, "Load: no initial file"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p3

    invoke-static {v0, v14}, Lcom/baidu/speech/easr/easrNativeJni;->BuildSlot(Ljava/lang/String;I)I

    move-result v13

    if-gez v13, :cond_3

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_3
    invoke-static {v9}, Lcom/baidu/speech/easr/easrNativeJni;->ExistFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_4

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v9, v0, v14}, Lcom/baidu/speech/easr/easrNativeJni;->ReadLM(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v13

    if-gez v13, :cond_4

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_4
    invoke-static {v10}, Lcom/baidu/speech/easr/easrNativeJni;->ExistFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v10}, Lcom/baidu/speech/easr/easrNativeJni;->ReadSlot(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_5

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {v11}, Lcom/baidu/speech/easr/easrNativeJni;->ExistFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v11}, Lcom/baidu/speech/easr/easrNativeJni;->ReadSlotLink(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_6

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_6
    invoke-static {v1}, Lcom/baidu/speech/easr/easrNativeJni;->ExistFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {v2}, Lcom/baidu/speech/easr/easrNativeJni;->ExistFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {v3}, Lcom/baidu/speech/easr/easrNativeJni;->ExistFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/speech/easr/easrNativeJni;->LoadRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_7

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {v4}, Lcom/baidu/speech/easr/easrNativeJni;->ExistFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, -0x1

    invoke-static {v14, v4}, Lcom/baidu/speech/easr/easrNativeJni;->BuildNet(ILjava/lang/String;)I

    move-result v13

    if-gez v13, :cond_9

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_8
    const-string v14, "EASR"

    const-string v15, "Load: no gram file"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public static native LoadRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native ReadLM(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public static native ReadSlot(Ljava/lang/String;)I
.end method

.method public static native ReadSlotLink(Ljava/lang/String;)I
.end method

.method public static native ResetDecoder(I)I
.end method

.method public static native ResetVAD(I)I
.end method

.method public static native SetCurrNetTreeID(III)I
.end method

.method public static native SetLogLevel(I)I
.end method

.method public static native SetSampleRateMode(I)I
.end method

.method public static native SetVADEndCut(IZ)I
.end method

.method public static native VADDetect(I[SIZ)I
.end method

.method public static native VerifyLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BI[BLjava/lang/String;)I
.end method

.method public static native WakeUpBuildNet(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native WakeUpDecode([SI[[BIZ)I
.end method

.method public static native WakeUpFree()I
.end method

.method public static native WakeUpInitial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method
