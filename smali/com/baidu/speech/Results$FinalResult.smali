.class public final Lcom/baidu/speech/Results$FinalResult;
.super Lcom/baidu/speech/Results$Result;
.source "Results.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/Results;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FinalResult"
.end annotation


# instance fields
.field private resultForSdk1X:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/baidu/speech/Results$Result;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v21, "idxs"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const-string v21, "idxs"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_2

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v21, "content"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_1

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v21

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v22

    new-instance v4, Lcom/baidu/voicerecognition/android/Candidate;

    move-wide/from16 v0, v22

    invoke-direct {v4, v13, v0, v1}, Lcom/baidu/voicerecognition/android/Candidate;-><init>(Ljava/lang/String;D)V

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    new-instance v21, Ljava/lang/Exception;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "#5, Other client side errors.,"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    :cond_0
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/speech/Results$FinalResult;->resultForSdk1X:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/baidu/voicerecognition/android/Candidate;

    invoke-virtual/range {v21 .. v21}, Lcom/baidu/voicerecognition/android/Candidate;->getWord()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/Results$FinalResult;->bundle:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v24, "results_recognition"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void

    :cond_4
    const-string v21, "content"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string v21, "item"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    const/4 v11, 0x0

    :goto_5
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_5

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/baidu/speech/Results$FinalResult;->resultForSdk1X:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/Results$FinalResult;->bundle:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v24, "results_recognition"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method


# virtual methods
.method public addPrefix(Ljava/lang/String;)Lcom/baidu/speech/Results$Result;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v11, 0x4

    invoke-super {p0, p1}, Lcom/baidu/speech/Results$Result;->addPrefix(Ljava/lang/String;)Lcom/baidu/speech/Results$Result;

    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v8, p0, Lcom/baidu/speech/Results$FinalResult;->response:Lorg/json/JSONObject;

    const-string v9, "idxs"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/baidu/speech/Results$FinalResult;->response:Lorg/json/JSONObject;

    const-string v9, "idxs"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "content"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    :goto_2
    if-ltz v4, :cond_2

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v10, p1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/baidu/speech/Results$FinalResult;->response:Lorg/json/JSONObject;

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/speech/Results$FinalResult;->strResponse:Ljava/lang/String;

    iget-object v8, p0, Lcom/baidu/speech/Results$FinalResult;->bundle:Ljava/util/HashMap;

    const-string v9, "origin_result"

    iget-object v10, p0, Lcom/baidu/speech/Results$FinalResult;->strResponse:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/baidu/speech/Results$FinalResult;->response:Lorg/json/JSONObject;

    const-string v9, "content"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lcom/baidu/speech/Results$FinalResult;->response:Lorg/json/JSONObject;

    const-string v9, "content"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/baidu/speech/Results$FinalResult;->response:Lorg/json/JSONObject;

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/speech/Results$FinalResult;->strResponse:Ljava/lang/String;

    iget-object v8, p0, Lcom/baidu/speech/Results$FinalResult;->bundle:Ljava/util/HashMap;

    const-string v9, "origin_result"

    iget-object v10, p0, Lcom/baidu/speech/Results$FinalResult;->strResponse:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public err_no()I
    .locals 1

    const-string v0, "err_no"

    invoke-virtual {p0, v0}, Lcom/baidu/speech/Results$FinalResult;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getResultForSdk1x()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/Results$FinalResult;->resultForSdk1X:Ljava/lang/Object;

    return-object v0
.end method

.method public success()Z
    .locals 2

    const-string v1, "err_no"

    invoke-virtual {p0, v1}, Lcom/baidu/speech/Results$FinalResult;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
