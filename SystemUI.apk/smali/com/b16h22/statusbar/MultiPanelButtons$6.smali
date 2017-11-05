.class Lcom/b16h22/statusbar/MultiPanelButtons$6;
.super Landroid/content/BroadcastReceiver;
.source "MultiPanelButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b16h22/statusbar/MultiPanelButtons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

.field private final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/b16h22/statusbar/MultiPanelButtons;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    iput-object p2, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->val$sharedPreferences:Landroid/content/SharedPreferences;

    .line 162
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    const-string v2, "layoutType"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/b16h22/statusbar/MultiPanelButtons;->message:Ljava/lang/String;

    .line 167
    const-string v1, "tablet"

    iget-object v2, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    iget-object v2, v2, Lcom/b16h22/statusbar/MultiPanelButtons;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    invoke-virtual {v1}, Lcom/b16h22/statusbar/MultiPanelButtons;->hide()V

    .line 170
    :cond_0
    const-string v1, "normal"

    iget-object v2, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    iget-object v2, v2, Lcom/b16h22/statusbar/MultiPanelButtons;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    invoke-virtual {v1}, Lcom/b16h22/statusbar/MultiPanelButtons;->hide()V

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    const-string v1, "phablet"

    iget-object v2, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    iget-object v2, v2, Lcom/b16h22/statusbar/MultiPanelButtons;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->val$sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "SliderVisibility"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 175
    .local v0, "SliderVisibility":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    invoke-virtual {v1}, Lcom/b16h22/statusbar/MultiPanelButtons;->unhideSlider()V

    .line 181
    :goto_1
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    invoke-virtual {v1}, Lcom/b16h22/statusbar/MultiPanelButtons;->unhide()V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$6;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    invoke-virtual {v1}, Lcom/b16h22/statusbar/MultiPanelButtons;->hideSlider()V

    goto :goto_1
.end method
