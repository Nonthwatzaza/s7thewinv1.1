.class Lcom/android/settings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x3e9

    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    # invokes: Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {p2}, Lcom/android/settings/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    .line 148
    .local v0, "state":Lcom/android/internal/telephony/Phone$DataState;
    sget-object v1, Lcom/android/settings/ApnSettings$4;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 191
    .end local v0    # "state":Lcom/android/internal/telephony/Phone$DataState;
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local v0    # "state":Lcom/android/internal/telephony/Phone$DataState;
    :pswitch_0
    # getter for: Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # invokes: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 160
    .end local v0    # "state":Lcom/android/internal/telephony/Phone$DataState;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    # getter for: Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # invokes: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    goto :goto_0

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 166
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.APN_CURRENT_UPDATE_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    # getter for: Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_5

    .line 168
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # invokes: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    goto :goto_0

    .line 170
    :cond_5
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 172
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    # getter for: Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    move-result-object v1

    if-nez v1, :cond_7

    .line 175
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    new-instance v2, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    iget-object v3, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    # setter for: Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    invoke-static {v1, v2}, Lcom/android/settings/ApnSettings;->access$302(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 177
    :cond_7
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->sendEmptyMessage(I)Z

    .line 179
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mCompleteHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$500(Lcom/android/settings/ApnSettings;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mCompleteHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$500(Lcom/android/settings/ApnSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mCompleteRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$600(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 184
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_DATA_SET_ATTACH_APN_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const-string v1, "ApnSettings"

    const-string v2, "ACTION_DATA_SET_ATTACH_APN_DONE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$700(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$800(Lcom/android/settings/ApnSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$700(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$800(Lcom/android/settings/ApnSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$700(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
