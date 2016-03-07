<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="Aspose.Sitefinity.FormBuilder.View" %>

<link rel="stylesheet" href='<%= ResolveUrl("~/Content/bootstrap-theme.min.css") %>' />
<link rel="stylesheet" href='<%= ResolveUrl("~/Content/bootstrap-theme.css") %>' />
<link rel="stylesheet" href='<%= ResolveUrl("~/Content/Site.css") %>' />

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
        padding: 15px;
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
        margin-bottom: 0px;
        padding-right: 0px;
        padding-top: 0px;
        padding-bottom: 0px;
        padding-left: 0px;
    }


    .form-horizontal .control-label1 {
        /*margin-bottom: 0;*/
        padding-top: 10px !important;
        text-align: right;
        /*text-align: right;*/
    }

</style>




<div class="panel row">
    <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-body">
                <div class="form form-horizontal" role="form" align="center">
                    <fieldset style="width: 100%; border: 1px solid rgba(66, 139, 202, 0.56);">
                        <legend align="center" class="legend">
                            <img src="Uploads/Images/aspose_logo.gif" style="" />
                            <asp:Label ID="lblTitle" Style="vertical-align: super; font-size: 23px;" runat="server"></asp:Label></legend>
                        <div class="form-group" style="font-weight: bold;">
                            <div style="padding-top: 5px; padding-right: 26px;">
                                <asp:Label ID="lblsetting" Text="Options :" runat="server"></asp:Label>
                                <asp:LinkButton ID="lnkbtnEdit" runat="server" Text="<img src='Uploads/Images/editIcon.png' style='  margin-left: 5px; display: run-in;vertical-align: middle;width: 30px;'/>Edit" OnClick="lnkbtnEdit_OnClick"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="lnkbtnExport" runat="server" Text="<img src='Uploads/Images/exportIcon.png' style=' display: run-in;vertical-align: middle;width: 30px;' /> Export" OnClick="lnkbtnExport_OnClick"></asp:LinkButton>
                            </div>
                            <br />
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:PlaceHolder runat="server" ID="myPlaceHolder"></asp:PlaceHolder>
                            </div>
                            <div align="center">
                                <asp:Button ID="ProcessButton" CssClass="btn3" runat="server" Visible="true" Style="display: inline;" OnClick="ProcessButton_Click" Text="Submit"></asp:Button>
                                &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="ClearFormButton" CssClass="btn3" runat="server" Visible="true" Style="display: inline;" OnClick="ClearFormButton_Click" Text="Clear"></asp:Button>
                            </div>
                            <div>
                                <br />
                                <span id="success_msg" runat="server" visible="false" class="Success"></span>
                                <span id="info_msg" runat="server" visible="false" class="alertupdate"></span>
                                <span id="error_msg" runat="server" visible="false" class="alertdanger"></span>
                            </div>
                            <br />
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</div>
