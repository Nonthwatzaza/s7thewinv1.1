.class final Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickRemoveAllButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V
    .locals 0

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
    .param p2, "x1"    # Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$1;

    .prologue
    .line 1327
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1330
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->sendAccessibilityEvent(I)V

    .line 1332
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    # getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$1400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1334
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    # getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$1400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1336
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1340
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    # getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1341
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    # getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/TaskDescription;

    .line 1342
    .local v4, "td":Lcom/android/systemui/recent/TaskDescription;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1340
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1347
    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->getPersistentTaskId()I

    move-result v5

    invoke-virtual {v0, v5, v8}, Landroid/app/ActivityManager;->removeTask(II)Z

    goto :goto_1

    .line 1349
    .end local v4    # "td":Lcom/android/systemui/recent/TaskDescription;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->clearRecentTasksList()V

    .line 1350
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    invoke-virtual {v5, v7}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->hide(Z)V

    .line 1351
    return-void
.end method