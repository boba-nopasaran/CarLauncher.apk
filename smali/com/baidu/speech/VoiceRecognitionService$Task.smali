.class Lcom/baidu/speech/VoiceRecognitionService$Task;
.super Ljava/lang/Object;
.source "VoiceRecognitionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/VoiceRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation


# instance fields
.field private volatile canceled:Z

.field private intent:Landroid/content/Intent;

.field private listener:Landroid/speech/RecognitionService$Callback;

.field private session:Lcom/baidu/speech/Console$Session;

.field final synthetic this$0:Lcom/baidu/speech/VoiceRecognitionService;


# direct methods
.method constructor <init>(Lcom/baidu/speech/VoiceRecognitionService;Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->this$0:Lcom/baidu/speech/VoiceRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    return-void
.end method

.method private _run()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->this$0:Lcom/baidu/speech/VoiceRecognitionService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->intent:Landroid/content/Intent;

    invoke-static {v13, v14}, Lcom/baidu/speech/VoiceRecognitionService;->access$200(Lcom/baidu/speech/VoiceRecognitionService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->this$0:Lcom/baidu/speech/VoiceRecognitionService;

    invoke-static {v13}, Lcom/baidu/speech/VoiceRecognitionService;->access$300(Lcom/baidu/speech/VoiceRecognitionService;)Lcom/baidu/speech/Console;

    move-result-object v14

    if-nez v2, :cond_1

    const-string v13, ""

    :goto_0
    invoke-virtual {v14, v13}, Lcom/baidu/speech/Console;->enter(Ljava/lang/String;)Lcom/baidu/speech/Console$Session;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->session:Lcom/baidu/speech/Console$Session;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_0
    :goto_1
    if-nez v6, :cond_b

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->session:Lcom/baidu/speech/Console$Session;

    invoke-interface {v13}, Lcom/baidu/speech/Console$Session;->msg()Lcom/baidu/speech/Console$Msg;

    move-result-object v9

    if-nez v9, :cond_2

    const-wide/16 v14, 0x3

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Lcom/baidu/speech/Console$Msg;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/baidu/speech/Console$Msg;->getValue()Ljava/lang/Object;

    move-result-object v11

    const-string v13, "asr.ready"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v13, v14}, Landroid/speech/RecognitionService$Callback;->readyForSpeech(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/baidu/speech/VoiceRecognitionService;->access$000()Ljava/util/logging/Logger;

    move-result-object v13

    const-string v14, "--|--ready, hashcode=%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v13, "asr.begin"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/baidu/speech/VoiceRecognitionService;->access$000()Ljava/util/logging/Logger;

    move-result-object v13

    const-string v14, "--|--begin, hashcode=%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v13}, Landroid/speech/RecognitionService$Callback;->beginningOfSpeech()V

    goto/16 :goto_1

    :cond_4
    const-string v13, "asr.audio"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v9}, Lcom/baidu/speech/Console$Msg;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object v3, v13

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v13, v3}, Landroid/speech/RecognitionService$Callback;->bufferReceived([B)V

    goto/16 :goto_1

    :cond_5
    const-string v13, "asr.volume"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v9}, Lcom/baidu/speech/Console$Msg;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v13, v12}, Landroid/speech/RecognitionService$Callback;->rmsChanged(F)V

    goto/16 :goto_1

    :cond_6
    const-string v13, "asr.end"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-static {}, Lcom/baidu/speech/VoiceRecognitionService;->access$000()Ljava/util/logging/Logger;

    move-result-object v13

    const-string v14, "--|--end, hashcode=%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v13}, Landroid/speech/RecognitionService$Callback;->endOfSpeech()V

    goto/16 :goto_1

    :cond_7
    const-string v13, "asr.partial"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    instance-of v13, v11, Lcom/baidu/speech/Results$RunningResult;

    if-eqz v13, :cond_0

    check-cast v11, Lcom/baidu/speech/Results$RunningResult;

    invoke-static {v11}, Lcom/baidu/speech/Parser;->convertToBundler(Lcom/baidu/speech/Results$Result;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v13, v4}, Landroid/speech/RecognitionService$Callback;->partialResults(Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_8
    const-string v13, "asr.finish"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-static {}, Lcom/baidu/speech/VoiceRecognitionService;->access$000()Ljava/util/logging/Logger;

    move-result-object v13

    const-string v14, "--|--finish, %s, hashcode=%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object v7, v11

    goto/16 :goto_1

    :cond_9
    const-string v13, "exit"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_a
    const-string v13, "asr.engine"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    instance-of v13, v11, Lcom/baidu/speech/MergedDecoder$MessageResult;

    if-eqz v13, :cond_0

    check-cast v11, Lcom/baidu/speech/MergedDecoder$MessageResult;

    invoke-virtual {v11}, Lcom/baidu/speech/MergedDecoder$MessageResult;->getEngineType()I

    move-result v10

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v13, "engine_type"

    invoke-virtual {v5, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    const/16 v14, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v5}, Lcom/baidu/speech/VoiceRecognitionService$Task;->callbackOnEvent(Landroid/speech/RecognitionService$Callback;ILandroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_b
    return-object v7
.end method

.method private final callbackOnEvent(Landroid/speech/RecognitionService$Callback;ILandroid/os/Bundle;)V
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mListener"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v4, "android.speech.IRecognitionListener"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onEvent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/baidu/speech/VoiceRecognitionService;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->canceled:Z

    iget-object v0, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->session:Lcom/baidu/speech/Console$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->session:Lcom/baidu/speech/Console$Session;

    invoke-interface {v0, v1}, Lcom/baidu/speech/Console$Session;->cancel(Z)V

    :cond_0
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->canceled:Z

    return v0
.end method

.method public run()V
    .locals 12

    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/speech/VoiceRecognitionService$Task;->_run()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    :try_start_1
    instance-of v9, v8, Lcom/baidu/speech/Results$FinalResult;

    if-eqz v9, :cond_1

    check-cast v8, Lcom/baidu/speech/Results$FinalResult;

    invoke-static {v8}, Lcom/baidu/speech/Parser;->convertToBundler(Lcom/baidu/speech/Results$Result;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {}, Lcom/baidu/speech/VoiceRecognitionService;->access$000()Ljava/util/logging/Logger;

    move-result-object v9

    const-string v10, "--|--call listener.results"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v9, v1}, Landroid/speech/RecognitionService$Callback;->results(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->this$0:Lcom/baidu/speech/VoiceRecognitionService;

    invoke-static {v9}, Lcom/baidu/speech/VoiceRecognitionService;->access$100(Lcom/baidu/speech/VoiceRecognitionService;)Ljava/util/HashMap;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v8, v3

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :try_start_2
    instance-of v9, v8, Ljava/lang/Throwable;

    if-eqz v9, :cond_2

    move-object v0, v8

    check-cast v0, Ljava/lang/Throwable;

    move-object v7, v0

    :goto_3
    iget-boolean v9, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->canceled:Z

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "^#(\\d+)[\t]*,.+"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v9, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v9, v4}, Landroid/speech/RecognitionService$Callback;->error(I)V

    :goto_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v9, "reason"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    const/16 v10, 0xb

    invoke-direct {p0, v9, v10, v2}, Lcom/baidu/speech/VoiceRecognitionService$Task;->callbackOnEvent(Landroid/speech/RecognitionService$Callback;ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v9, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->this$0:Lcom/baidu/speech/VoiceRecognitionService;

    invoke-static {v9}, Lcom/baidu/speech/VoiceRecognitionService;->access$100(Lcom/baidu/speech/VoiceRecognitionService;)Ljava/util/HashMap;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :try_start_4
    new-instance v7, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#7, No recognition result matched. non expected results: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v9, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->this$0:Lcom/baidu/speech/VoiceRecognitionService;

    invoke-static {v10}, Lcom/baidu/speech/VoiceRecognitionService;->access$100(Lcom/baidu/speech/VoiceRecognitionService;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->listener:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v9
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->session:Lcom/baidu/speech/Console$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/VoiceRecognitionService$Task;->session:Lcom/baidu/speech/Console$Session;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/speech/Console$Session;->cancel(Z)V

    :cond_0
    return-void
.end method
