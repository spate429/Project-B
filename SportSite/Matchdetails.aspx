<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Matchdetails.aspx.cs" Inherits="SportSite.Matchdetails" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="contentmain">
     <div id="banner"><a href="#"><img src="assets/pic03.jpg" width="30%" alt=""></a></div>

               <%-- banner image--%>

    <div class ="col-md-5 pull-left">
  <div class="title">
				<h2>Soccer - Match Details <span class="byline"></span></h2>

      <br />


			    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="398px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Team1Score" HeaderText="Team1" />
                        <asp:BoundField DataField="Team2Score" HeaderText="Team2" />
                        <asp:BoundField DataField="Winner" HeaderText="Winner" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>


			</div>
			</div>


</asp:Content>

