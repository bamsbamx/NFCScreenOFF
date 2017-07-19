.class Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;
.super Ljava/lang/Object;
.source "SeCePreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/SeCePreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 10
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    packed-switch p2, :pswitch_data_10e

    .line 155
    :goto_5
    return-void

    .line 158
    :pswitch_6
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get0(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 159
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get1(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 160
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get2(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 161
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get0(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 162
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get1(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 163
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get2(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 166
    :pswitch_3d
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-virtual {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 167
    .local v3, "techMask":I
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v6, :cond_97

    const/4 v0, 0x1

    .line 168
    .local v0, "isAEnabled":Z
    :goto_53
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_99

    const/4 v1, 0x1

    .line 169
    .local v1, "isBEnabled":Z
    :goto_59
    and-int/lit8 v4, v3, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9b

    const/4 v2, 0x1

    .line 170
    .local v2, "isFEnabled":Z
    :goto_5f
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get0(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 171
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get1(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 172
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get2(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 173
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get0(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get1(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 175
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get2(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 167
    .end local v0    # "isAEnabled":Z
    .end local v1    # "isBEnabled":Z
    .end local v2    # "isFEnabled":Z
    :cond_97
    const/4 v0, 0x0

    .restart local v0    # "isAEnabled":Z
    goto :goto_53

    .line 168
    :cond_99
    const/4 v1, 0x0

    .restart local v1    # "isBEnabled":Z
    goto :goto_59

    .line 169
    :cond_9b
    const/4 v2, 0x0

    .restart local v2    # "isFEnabled":Z
    goto :goto_5f

    .line 178
    .end local v0    # "isAEnabled":Z
    .end local v1    # "isBEnabled":Z
    .end local v2    # "isFEnabled":Z
    .end local v3    # "techMask":I
    :pswitch_9d
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get0(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 179
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get1(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 180
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get2(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 181
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get0(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get1(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get2(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 186
    :pswitch_d5
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get0(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 187
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get1(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 188
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get2(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 189
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get0(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get1(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 191
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;->this$0:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->-get2(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 156
    nop

    :pswitch_data_10e
    .packed-switch 0x7f0d0050
        :pswitch_6
        :pswitch_3d
        :pswitch_9d
        :pswitch_d5
    .end packed-switch
.end method
