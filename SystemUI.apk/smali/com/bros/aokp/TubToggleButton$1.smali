.class Lcom/bros/aokp/TubToggleButton$1;
.super Ljava/lang/Object;
.source "TubToggleButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bros/aokp/TubToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bros/aokp/TubToggleButton;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bros/aokp/TubToggleButton;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bros/aokp/TubToggleButton$1;->this$0:Lcom/bros/aokp/TubToggleButton;

    iput-object p2, p0, Lcom/bros/aokp/TubToggleButton$1;->val$context:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 35
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.b16h22.statusbar.HIDE_TUB_TOGGLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v3, p0, Lcom/bros/aokp/TubToggleButton$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    iget-object v3, p0, Lcom/bros/aokp/TubToggleButton$1;->val$context:Landroid/content/Context;

    const-string v4, "EvoPrefsFile"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 39
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "TubToggleVisibility"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    :goto_0
    return-void

    .line 43
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 44
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 45
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.b16h22.statusbar.UNHIDE_TUB_TOGGLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v3, p0, Lcom/bros/aokp/TubToggleButton$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    iget-object v3, p0, Lcom/bros/aokp/TubToggleButton$1;->val$context:Landroid/content/Context;

    const-string v4, "EvoPrefsFile"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 48
    .restart local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "TubToggleVisibility"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
