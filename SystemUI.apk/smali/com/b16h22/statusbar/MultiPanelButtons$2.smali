.class Lcom/b16h22/statusbar/MultiPanelButtons$2;
.super Ljava/lang/Object;
.source "MultiPanelButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/b16h22/statusbar/MultiPanelButtons;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$2;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    iput-object p2, p0, Lcom/b16h22/statusbar/MultiPanelButtons$2;->val$context:Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 121
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 122
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$2;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    iget-object v1, v1, Lcom/b16h22/statusbar/MultiPanelButtons;->notif:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 123
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$2;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    iget-object v1, v1, Lcom/b16h22/statusbar/MultiPanelButtons;->slider:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.b16h22.statusbar.FLIP_TO_TOGGLES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    return-void
.end method
