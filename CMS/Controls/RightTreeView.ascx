<%@ control language="C#" autoeventwireup="true" inherits="RightTreeView, App_Web_righttreeview.ascx.413566a5" %>

<%--<asp:UpdatePanel ID="upTV" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
        <div class="right-wrapper ">
            <telerik:RadTreeView runat="server" ID="RadTreeView1" DataFieldID="ID" DataFieldParentID="ID_PARENT" DataNavigateUrlField="ID_MAIN" DataSourceID="LinqDataSource1" DataTextField="TITLE" OnNodeDataBound="RadTreeView1_NodeDataBound" Skin="" SingleExpandPath="True">
                <DataBindings>
                    <telerik:RadTreeNodeBinding Depth="3" Expanded="true"></telerik:RadTreeNodeBinding>
                </DataBindings>
            </telerik:RadTreeView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (ID, ID_MAIN, ID_PARENT, TITLE, ID_LANG,ORDER)" TableName="C_CONTENTs" Where="ID_LANG == @ID_LANG" OrderBy="ORDER">
                <WhereParameters>
                    <asp:Parameter Name="ID_LANG" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>--%>
