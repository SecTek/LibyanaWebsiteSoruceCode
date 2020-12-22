<%@ control language="C#" autoeventwireup="true" inherits="CMS_Controls_FileUploader, App_Web_fileuploader.ascx.413566a5" %>
<asp:UpdatePanel runat="server" ID="sss" UpdateMode="Conditional">
    <ContentTemplate>
        <script type="text/javascript">
            function OnClientDelete(oExplorer, args) {
                var item = args.get_item();
                if (item.isDirectory()) {
                    args.set_cancel(true);
                    alert("You cannot delete directories");
                }
            }
        </script>
        <style>
            .rspPane, .rspLastItem
           {
                height: 401px !important;
                vertical-align: top !important;
            }
        </style>
        <div class="FileUploader_Styles" >
        <telerik:RadFileExplorer runat="server" ID="FileExplorer1" EnableCopy="true" VisibleControls="ContextMenus,Grid,Treeview,Toolbar" Configuration-EnableAsyncUpload="true"
            OnClientDelete="OnClientDelete" Width="530px" Height="540px" Language="ar-JO" >
           
        </telerik:RadFileExplorer></div>
    </ContentTemplate>
</asp:UpdatePanel>
