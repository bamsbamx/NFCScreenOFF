.class Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;
.super Ljava/lang/Object;
.source "NfcPRBSTestMode2.java"

# interfaces
.implements Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UiEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(ZII)V
    .registers 13
    .param p1, "modulation"    # Z
    .param p2, "type"    # I
    .param p3, "bitrate"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 142
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    const v8, 0x7f0d005c

    invoke-virtual {v5, v8}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 143
    .local v4, "typesGp":Landroid/widget/RadioGroup;
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    const v8, 0x7f0d0060

    invoke-virtual {v5, v8}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 144
    .local v1, "bitratesGp":Landroid/widget/RadioGroup;
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    const v8, 0x7f0d0065

    invoke-virtual {v5, v8}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 146
    .local v2, "cb":Landroid/widget/CheckBox;
    if-nez p2, :cond_28

    .line 147
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 149
    :cond_28
    if-nez p3, :cond_2d

    .line 150
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 153
    :cond_2d
    if-eqz p1, :cond_6a

    move v5, v6

    :goto_30
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get1()[I

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_70

    .line 156
    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 157
    .local v0, "b":Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v5}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get6(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get1()[I

    move-result-object v8

    aget v8, v8, v3

    invoke-virtual {v5, p1, v8}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->acceptType(ZI)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 159
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 161
    if-eqz p2, :cond_67

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p2, v5, :cond_67

    .line 162
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 155
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .end local v0    # "b":Landroid/widget/RadioButton;
    .end local v3    # "i":I
    :cond_6a
    move v5, v7

    .line 153
    goto :goto_30

    .line 166
    .restart local v0    # "b":Landroid/widget/RadioButton;
    .restart local v3    # "i":I
    :cond_6c
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_67

    .line 169
    .end local v0    # "b":Landroid/widget/RadioButton;
    :cond_70
    const/4 v3, 0x0

    :goto_71
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get0()[I

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_ab

    .line 170
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 171
    .restart local v0    # "b":Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v5}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get6(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get0()[I

    move-result-object v8

    aget v8, v8, v3

    invoke-virtual {v5, p1, p2, v8}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->acceptTypeAndBitrate(ZII)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 174
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 176
    if-eqz p3, :cond_a4

    .line 177
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p3, v5, :cond_a4

    .line 178
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 169
    :cond_a4
    :goto_a4
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 183
    :cond_a7
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_a4

    .line 186
    .end local v0    # "b":Landroid/widget/RadioButton;
    :cond_ab
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    iget-object v6, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v6}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->isEnabled()Z

    move-result v6

    iget-object v7, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v7}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get6(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->isComplete()Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-wrap1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;ZZ)V

    .line 139
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get6(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    move-result-object v1

    if-eqz p2, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->setModulation(Z)Z

    .line 121
    return-void

    .line 122
    :cond_d
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 127
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_7

    .line 129
    return-void

    .line 131
    :cond_7
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v1

    const v2, 0x7f0d005c

    if-ne v1, v2, :cond_24

    .line 132
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get6(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->setType(I)Z

    .line 126
    :cond_23
    :goto_23
    return-void

    .line 133
    :cond_24
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v1

    const v2, 0x7f0d0060

    if-ne v1, v2, :cond_23

    .line 134
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get6(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->setBitrate(I)Z

    goto :goto_23
.end method
