.class Lcom/android/settings/RadioInfo$12;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 871
    iget-object v2, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/android/settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 873
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$3000(Lcom/android/settings/RadioInfo;)Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDataState()I

    move-result v1

    .line 874
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 885
    :goto_0
    :pswitch_0
    return v4

    .line 876
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 879
    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 874
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
