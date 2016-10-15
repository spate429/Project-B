<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SportSite._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="contentmain">

    <div id="banner"><a href="#"><img src="assets/pic06.jpg" width="100%" alt=""></a></div>

               <%-- banner image--%>
    <div class ="col-md-5 pull-left">
  <div class="title">
				<h2>Welcome <span class="byline">to our website</span></h2>
			</div>
			<p>
                

               
                This is Sport Portal. It creates sports experiences, connecting fans to what they love through an addictive combination of real-time scores and fantasy information while creating and curating content that is mobile optimized, comprehensive, customizable and seamlessly shareable.




			</p>
			<a href="#" class="button icon icon-arrow-right">Learn More</a>
    </div>
    	<div id="sidebar" class="col-md-5 pull-left"><a href="#"><img src="assets/pic05.jpg" width="100%"  alt=""></a></div>
    <div class="clearfix"></div>
    	<div id="featured">
		<div class="box">
            
			<div class="title">
				<h2>Recent Updates</h2>
			</div>
			<p>
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                     Height="50px" Width="292px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="MatchID" HeaderText="Match" SortExpression="MatchID" />
                        <asp:BoundField DataField="Team1Name" HeaderText="Team1" SortExpression="Team1Name" />
                        <asp:BoundField DataField="Team2Name" HeaderText="Team2" SortExpression="Team2Name" />
                        <asp:BoundField DataField="MatchDate" HeaderText="Date" SortExpression="MatchDate" />
                        <asp:HyperLinkField HeaderText="Details" Text="Click to get" DataNavigateUrlFields="MatchURL" />
                    </Fields>
                     <PagerSettings Mode="NextPreviousFirstLast"
                               FirstPageText="<<"
                               LastPageText=">>"
                               PageButtonCount="1"  
                               Position="Bottom"/> 
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:DetailsView>
            </p>
		</div>
		<div id="box1"> <a href="#"><img src="assets/pic01.jpg" alt=""></a>
			<h2 class="subtitle">8 Ball Pool</h2>
			<p>It is our hope that the website will spark your interest and involvement in the wonderful games of pocket billiards. It is an extremely fast-growing international pastime and the professional segment of pocket billiards is expanding at a rate that exceeds anything ever seen in years gone by.</p>
			<ul class="contact">
				<li><a href="#" class="icon icon-facebook"><span></span></a></li>
				<li><a href="#" class="icon icon-dribbble"><span>Pinterest</span></a></li>
				<li><a href="#" class="icon icon-tumblr"><span>Google+</span></a></li>
			</ul>
		</div>
		<div id="box2"> <a href="#"><img src="assets/pic02.jpg" alt=""></a>
			<h2 class="subtitle">Tenis</h2>
			<p>Tennis is an Olympic sport and is played at all levels of society and at all ages. The sport can be played by anyone who can hold a racket, including wheelchair users. The modern game of tennis originated in Birmingham, England, in the late 19th century as "lawn tennis"</p>
			<ul class="contact">
				<li><a href="#" class="icon icon-facebook"><span></span></a></li>
				<li><a href="#" class="icon icon-dribbble"><span>Pinterest</span></a></li>
				<li><a href="#" class="icon icon-tumblr"><span>Google+</span></a></li>
			</ul>
		</div>
		<div id="box3"> <a href="#"><img src="assets/pic03.jpg" alt=""></a>
			<h2 class="subtitle">Soccer</h2>
			<p>Soccer is a family of team sports that involve, to varying degrees, kicking a ball with the foot to score a goal. Unqualified, the word football is understood to refer to whichever form of football is the most popular in the regional context in which the word appears.</p>
			<ul class="contact">
				<li><a href="#" class="icon icon-facebook"><span></span></a></li>
				<li><a href="#" class="icon icon-dribbble"><span>Pinterest</span></a></li>
				<li><a href="#" class="icon icon-tumblr"><span>Google+</span></a></li>
			</ul>
		</div>
		<div id="box4"> <a href="#"><img src="assets/pic04.jpg" alt=""></a>
			<h2 class="subtitle">Baseball </h2>
			<p>Baseball is a bat-and-ball game played between two teams of nine players each, who take turns batting and fielding.

The batting team attempts to score runs by hitting a ball that is thrown by the pitcher with a bat swung by the batter,</p>
			<ul class="contact">
				<li><a href="#" class="icon icon-facebook"><span></span></a></li>
				<li><a href="#" class="icon icon-dribbble"><span>Pinterest</span></a></li>
				<li><a href="#" class="icon icon-tumblr"><span>Google+</span></a></li>
			</ul>
		</div>
	</div>


</asp:Content>

