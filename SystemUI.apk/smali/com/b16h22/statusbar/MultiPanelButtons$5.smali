.class Lcom/b16h22/statusbar/MultiPanelButtons$5;
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


# direct methods
.method constructor <init>(Lcom/b16h22/statusbar/MultiPanelButtons;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b16h22/statusbar/MultiPanelButtons$5;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    .line 154
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/b16h22/statusbar/MultiPanelButtons$5;->this$0:Lcom/b16h22/statusbar/MultiPanelButtons;

    invoke-virtual {v0}, Lcom/b16h22/statusbar/MultiPanelButtons;->unhideSlider()V

    .line 158
    return-void
.end method
