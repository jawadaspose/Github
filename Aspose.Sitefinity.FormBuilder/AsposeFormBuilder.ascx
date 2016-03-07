<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AsposeFormBuilder.ascx.cs" Inherits="Aspose.Sitefinity.FormBuilder.AsposeFormBuilder" %>

<link rel="stylesheet" href='<%= ResolveUrl("~/Content/bootstrap-theme.min.css") %>' />
<link rel="stylesheet" href='<%= ResolveUrl("~/Content/bootstrap-theme.css") %>' />
<link rel="stylesheet" href='<%= ResolveUrl("~/Content/Site.css") %>' />
<link rel="stylesheet" href='<%= ResolveUrl("~/Content/font-awesome.css") %>' />
<link rel="stylesheet" href='<%= ResolveUrl("~/Content/jquery-ui.css") %>' />



<style type="text/css"> 

    .Success {
        color: #3c763d;
        background-color: #dff0d8;
        border-color: #d6e9c6;
        padding: 8px;
        margin-bottom: 20px;
        border: 1px solid transparent;
        border-radius: 4px;
    }

    .alertdanger {
        color: #a94442;
        background-color: #f2dede;
        border-color: #ebccd1;
        padding: 8px;
        margin-bottom: 20px;
        border: 1px solid transparent;
        border-radius: 4px;
    }

    .alertupdate {
        color: #31708f;
        background-color: #d9edf7;
        border-color: #bce8f1;
        padding: 8px;
        margin-bottom: 20px;
        border: 1px solid transparent;
        border-radius: 4px;
    }

    .setColor {
        border-collapse: collapse;
        -webkit-print-color-adjust: exact;
        border: 1px solid #ddd;
        padding: 8px;
        line-height: 1.42857143;
        vertical-align: top;
        border-top: 1px solid #ddd;
        text-align: left;
    }

    .table td,
    .table th {
        text-align: left;
    }


        .table th + th {
            text-align: center;
        }

    .btn {
        display: inline-block;
        color: #FFF !important;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.25) !important;
        border: 5px solid #FFF;
        border-radius: 0;
        box-shadow: none !important;
        cursor: pointer;
        vertical-align: middle;
        position: relative;
        padding: 2px 7px;
        border-color: #87b87f;
    }

    .btn3 {
        display: inline-block;
        color: #FFF !important;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.25) !important;
        border: 5px solid #FFF;
        border-radius: 0;
        box-shadow: none !important;
        cursor: pointer;
        vertical-align: middle;
        position: relative;
        padding: 0px 2px;
        background-color: #428bca !important;
        border-color: #428bca;
    }



    .form-control {
        background-color: #fff;
        border: 1px solid #d5d5d5;
        box-shadow: none !important;
        color: #666;
        padding: 5px 4px;
        border-radius: 0 !important;
        line-height: 1.42857143;
        margin-top: 10px;
        margin-bottom: 5px;
    }

    .legend {
        display: block;
        width: 100%;
        padding: 0;
        margin-bottom: 0px;
        margin-bottom: 20px;
        font-size: 21px;
        line-height: inherit;
        color: #333;
        border: 0;
        /*border-bottom: 1px solid #e5e5e5;*/
        /*background: none repeat scroll 0 0 #276A97;*/
        background: -webkit-linear-gradient(top, #428bca 0%, #357ebd 100%);
        background: -moz-linear-gradient(top, #428bca 0%, #357ebd 100%);
        /*border-radius: 8px 8px 8px 8px;
  border: 1px solid #FEBB72;*/
        color: white;
        font-size: 1.1em;
        font-weight: bold;
        padding: 4px;
        padding-left: 0px;
        margin-bottom: 10px;
        padding-top: 0px;
        padding-bottom: 0px;
        padding-right: 4px;
    }


    .form-horizontal .control-label1 {
        padding-top: 10px !important;
        text-align: right;
    }

</style>





<div class="panel row">
    <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-body">
                <div class="form form-horizontal" role="form" align="center">
                    <fieldset style="width: 100%; border: 1px solid rgba(66, 139, 202, 0.56);" align="center">
                        <legend align="center" class="legend">
                            <img src="Uploads/Images/aspose_logo.gif" style="vertical-align: bottom;" />&nbsp;<asp:Label ID="lblTitle" Style="font-size: 23px;" runat="server">Manage Form Fields</asp:Label></legend>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="lbl_Msg" runat="server" Text=""></asp:Label>
                            </div>
                            <div>
                                <p style="font-weight: bold; margin-top: 10px;">
                                    Field Type : &nbsp;<asp:DropDownList ID="ddlFieldType" runat="server" Style="margin-bottom: 10px; border: 1px solid rgba(34, 34, 34, 0.5);">
                                        <asp:ListItem Text="TextBox" Selected="True" Value="Text"></asp:ListItem>
                                        <asp:ListItem Text="Multiline TextBox" Value="MultiText"></asp:ListItem>
                                        <asp:ListItem Text="Title" Value="Title"></asp:ListItem>
                                        <asp:ListItem Text="Success Message" Value="Success"></asp:ListItem>
                                        <asp:ListItem Text="Radio Button" Value="Radio"></asp:ListItem>
                                        <asp:ListItem Text="CheckBox Button" Value="Check"></asp:ListItem>
                                        <asp:ListItem Text="DropDown List" Value="DropDown"></asp:ListItem>
                                    </asp:DropDownList>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <p style="font-weight: bold; margin-bottom: 10px;">
                                    &nbsp;&nbsp;&nbsp;Field ID : &nbsp;<asp:TextBox ID="txtFieldId" class="input" runat="server" ToolTip="(Seprate Multiple Ids with ';' for Radio/Check)" Style="border: 1px solid rgba(34, 34, 34, 0.5); width: 14.4%;"></asp:TextBox>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <p style="font-weight: bold;">
                                    Field Label Text : 
									<asp:TextBox ID="txtFieldLableText" class="input" runat="server" Style="margin-bottom: 10px; border: 1px solid rgba(34, 34, 34, 0.5); width: 14.1%;"></asp:TextBox>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <p style="font-weight: bold;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Field Values&nbsp;:&nbsp;							 
                                    <asp:TextBox ID="txtFieldValues" class="input" runat="server" ToolTip="(Seprate Multiple Values with ';' for Radio/Check/Dropdown)" Style="margin-bottom: 6px; width: auto; border: 1px solid rgba(34, 34, 34, 0.5);"></asp:TextBox>
                                </p>
                            </div>
                        </div>

                        <div class="form-group">
                            <div>
                                <p style="font-weight: bold;">
                                    Display on Form : &nbsp;<asp:CheckBox ID="chkIsDisplay" runat="server" Text="Display on Form" Checked="true" />
                                </p>
                            </div>
                        </div>

                        <div class="form-group">
                            <div>
                                <p style="font-weight: bold;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sort # :&nbsp;								 
                                    <asp:TextBox ID="txtSortId" runat="server" class="input" Style="border: 1px solid rgba(34, 34, 34, 0.5); width: 16%; margin-bottom: 10px;"></asp:TextBox>
                                </p>
                            </div>
                        </div>

                        <div class="form-group" align="center">
                            <div>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="ProcessButton" CssClass="btn3" runat="server" Visible="true" OnClick="ProcessButton_Click" Text="Add"></asp:Button>
                                <asp:Button ID="ClearFormButton" CssClass="btn3" runat="server" Visible="true" OnClick="ClearFormButton_Click" Text="Clear"></asp:Button>
                                <asp:Button ID="btnUpdate" CssClass="btn3" runat="server" Visible="true" OnClick="btnUpdate_OnClick" Text="Update"></asp:Button>
                                <asp:Button ID="btnBack" CssClass="btn3" runat="server" Visible="true" OnClick="btnBack_OnClick" Text="Back"></asp:Button>
                            </div>
                        </div>

                        <div class="form-group" align="center" style="border-collapse: collapse; font-size: 12px !important;">
                            <br />
                            <asp:GridView ID="GridView1" class="table table-striped table-bordered table-hover datatable table-responsive" runat="server" Style="border-collapse: collapse; width: 885px;" AutoGenerateColumns="false" ShowHeader="true" OnRowCommand="GridView1_RowCommand" OnRowDeleting="PendingRecordsGridview_RowDeleting" OnPageIndexChanging="GridView1_RowCommand_OnPageIndexChanging" DataKeyNames="Field ID" AllowSorting="True" AllowPaging="true" PageSize="10" EmptyDataText="There is no record found.">
                                <Columns>

                                    <asp:BoundField DataField="Sort ID" HeaderText="Sort Id" ItemStyle-HorizontalAlign="Center"
                                        ItemStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" />
                                    <asp:BoundField DataField="Field Type" HeaderText="Field Type" ItemStyle-HorizontalAlign="Left"
                                        ItemStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" />
                                    <asp:BoundField DataField="Field ID" HeaderText="Field ID" ItemStyle-HorizontalAlign="Left"
                                        ItemStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" />
                                    <asp:BoundField DataField="Field Label Text" HeaderText="Field Label Text" ItemStyle-HorizontalAlign="Left"
                                        ItemStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" />
                                    <asp:BoundField DataField="Field Values" HeaderText="Field Values" ItemStyle-HorizontalAlign="Left"
                                        ItemStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" />
                                    <asp:BoundField DataField="Is Display" HeaderText="Is Display" ItemStyle-HorizontalAlign="Left"
                                        ItemStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" />
                                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"
                                        HeaderText="Action" Visible="true" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle"
                                        HeaderStyle-Width="118px">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkEditCommand" runat="server" Text="<i class='fa fa-edit'></i> Edit" Style="border: 0px solid #FFF; padding: 1px 5px;"
                                                CssClass="btn btn-xs btn-success" ToolTip="Click here to edit record" CausesValidation="false"
                                                CommandArgument='<%# Eval("Field ID") %>' CommandName="EditSetupValue">  
                                            </asp:LinkButton>

                                            <asp:LinkButton ID="lnkDeleteCommand" runat="server" Text="<i class='fa fa-remove'></i>Delete</a>" Style="border: 0px solid #FFF; padding: 1px 5px;"
                                                CssClass="btn btn-xs btn-danger" ToolTip="Click here to delete record" CausesValidation="false"
                                                CommandArgument='<%# Container.DataItemIndex%>' CommandName="Delete">  
                                            </asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <br />
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</div>
<script>



    $(document).ready(function () {

        $("tr:even").css("background-color", "#f5f5f5");
        $("tr:odd").css("background-color", "#fff");
        $("td").addClass('setColor');
        $("tr").addClass('setColor');

    });


</script>
