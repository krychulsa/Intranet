<%@ page language="VB" masterpagefile="~/CN_Master.master" autoeventwireup="false" inherits="cn_rpt, App_Web_hm35mrua" title="Untitled Page" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>


<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>


<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>


<asp:Content ID="Content1" ContentPlaceHolderID="SubTitle" Runat="Server">
    Printing
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SubHead" Runat="Server">
    <style type="text/css">              
        .txt a:link 
        {
        	font-family:Georgia,Verdana, Calibri,Arial Narrow,Microsoft Sans Serif; 
        	font-size:1.1em; 
        	color:#800000; 
        	font-weight:normal;
        	line-height:1.5em;
        	text-align:left;        
        	border-bottom:1px dashed silver;	
        }
        
        .txt a:hover
        {
        	color:#800000; 
        	text-decoration:underline;
        }
        .txt a:visited
        {
        	color:#800000;
        	text-decoration:none;
        }
        .txt a:active 
        {
        	color:#800000;
        	text-decoration:none;
        }
        
        .detail
        {
        	font-family:Georgia,Verdana, Calibri,Arial Narrow,Microsoft Sans Serif; 
        	font-size:1em; 
        	color:#403F3F; 
        	font-weight:normal;
        	line-height:1.5em;
        	text-align:left;
        	vertical-align:top;       	
        }	   
        	
        .CurrentPage 
      {
      	padding: 3px 3px;
      	border: solid 1px #ddd; 
      	text-decoration: none;
      	background: #2E8B57;
      	color:White;
      	font-size:12px;
      	font-weight:bold;
      }
      .PrevNext
      {
      
      	padding: 3px 3px;
      	border: solid 1px #ddd;
      	text-decoration: none;
      	color: #2E8B57;
      	font-size:12px;      	
      }      
      .PrevNext,.PageNumber
      {
        padding: 3px 3px;
      	border: solid 1px #ddd;
      	text-decoration: none;
      	color: #2E8B57;
      	font-size:12px;
      }
      .PageNumber:hover, .PrevNext:hover
      {
      	background-color: #FFA500;
      	color: White;
      	font-size:12px;
      	text-decoration: none;
      }
      .abc
      {
      	padding: 3px 3px;
      	width:32px;
      	height:32px;
      	vertical-align:middle;
      }
    </style> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SubBody" Runat="Server">
    <div class="fullwidth">
        <fieldset>
            <%--<div style="height:30; border-bottom:2px solid silver;"><h3>PRINTING COVER NOTE AND QUOTATION</h3></div>--%> 
            <div style="height:30; border-bottom:2px solid silver;"><h3>PRINTING COVER NOTE</h3></div>           
            <br />
            
            <div style="height:35px; border-bottom:2px solid silver;">
                Search: 
                <asp:TextBox ID="txtSearch" runat="server" CssClass="inputtext" Width="450px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="btnSearch" runat="server"  Text="Search" Width="100px" Height="25"/>
            </div>
            <br />
         
               
                    <div>
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="nvc_code" GroupItemCount="1">                                
                            <LayoutTemplate>
                            <table cellpadding="2" runat="server" class="fullwidth"
                                   id="tblProducts" style="height:auto">
                              <tr runat="server" id="groupPlaceholder">
                              </tr>
                            </table>                                
                          </LayoutTemplate>
                          <GroupTemplate>
                            <tr runat="server" id="productRow"
                                style="height:auto;" valign="top">
                              <td runat="server" id="itemPlaceholder">
                              </td>
                            </tr>
                          </GroupTemplate>
                          <ItemTemplate>
                            <td id="Td1" valign="top" runat="server" style="border-bottom:1px dotted silver;">    
                                <div class="txt">
                                    <asp:LinkButton ID="lnkCover"  runat="server" CommandName="Select" Text="Print Cover Note"/>
                                    <%--&nbsp;&nbsp;
                                    <asp:LinkButton ID="lnkQuot"  runat="server" CommandName="Edit" Text="Print Quotation"/>--%>                                                                        
                                </div>
                                <div>
                                <table class="fullwidth">
                                    <tr>
                                        <td style="width:20%;" class="detail" valign="top">Id</td>
                                        <td>:&nbsp;<%#Eval("nvc_code")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Insured</td>
                                        <td>:&nbsp;<%#Eval("nvc_Insured")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Bank Name</td>
                                        <td>:&nbsp;<%#Eval("nvc_bank_name")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Situation of Risk</td>
                                        <td>:&nbsp;<%#Eval("nvc_situation_of_risk")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Occupied as</td>
                                        <td>:&nbsp;<%#Eval("nvc_Occupied_as")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Sum Insured</td>
                                        <td>:&nbsp;<%#Eval("num_Sum_Insured")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Premium</td>
                                        <td>:&nbsp;<%#Eval("num_Premium")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Date</td>
                                        <td>:&nbsp;<%#Eval("Date")%></td>                                        
                                    </tr> 
                                </table>                           
                                </div>
                            </td>
                          </ItemTemplate>
                          <SelectedItemTemplate>
                            <td id="Td1" valign="top" runat="server" style="border-bottom:1px dotted silver;"> 
                                <div class="txt">
                                    <asp:LinkButton ID="lnkCover"  runat="server" CommandName="Select" Text="Print Cover Note"/>
                                    &nbsp;&nbsp;
                                    <asp:LinkButton ID="lnkQuot"  runat="server" CommandName="Edit" Text="Print Quotation"/>                                                                        
                                </div>
                                <div>
                                <table class="fullwidth">
                                    <tr>
                                        <td style="width:20%;" class="detail" valign="top">Id</td>
                                        <td>:&nbsp;<%#Eval("nvc_code")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Insured</td>
                                        <td>:&nbsp;<%#Eval("nvc_Insured")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Bank Name</td>
                                        <td>:&nbsp;<%#Eval("nvc_bank_name")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Situation of Risk</td>
                                        <td>:&nbsp;<%#Eval("nvc_situation_of_risk")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Occupied as</td>
                                        <td>:&nbsp;<%#Eval("nvc_Occupied_as")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Sum Insured</td>
                                        <td>:&nbsp;<%#Eval("num_Sum_Insured")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Premium</td>
                                        <td>:&nbsp;<%#Eval("num_Premium")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Date</td>
                                        <td>:&nbsp;<%#Eval("Date")%></td>                                        
                                    </tr> 
                                </table>                            
                                </div>
                            </td>
                          </SelectedItemTemplate>
                          <EditItemTemplate>
                            <td id="Td1" valign="top" runat="server" style="border-bottom:1px dotted silver;"> 
                                <div class="txt">
                                    <asp:LinkButton ID="lnkCover"  runat="server" CommandName="Select" Text="Print Cover Note"/>
                                    &nbsp;&nbsp;
                                    <%--<asp:LinkButton ID="lnkQuot"  runat="server" CommandName="Edit" Text="Print Quotation"/> --%>                                                                       
                                </div>
                                <div>
                                <table class="fullwidth">
                                    <tr>
                                        <td style="width:20%;" class="detail" valign="top">Id</td>
                                        <td>:&nbsp;<%#Eval("nvc_code")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Insured</td>
                                        <td>:&nbsp;<%#Eval("nvc_Insured")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Bank Name</td>
                                        <td>:&nbsp;<%#Eval("nvc_bank_name")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Situation of Risk</td>
                                        <td>:&nbsp;<%#Eval("nvc_situation_of_risk")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Occupied as</td>
                                        <td>:&nbsp;<%#Eval("nvc_Occupied_as")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Sum Insured</td>
                                        <td>:&nbsp;<%#Eval("num_Sum_Insured")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Premium</td>
                                        <td>:&nbsp;<%#Eval("num_Premium")%></td>                                        
                                    </tr>
                                    <tr class="detail" valign="top">
                                        <td style="width:20%;">Date</td>
                                        <td>:&nbsp;<%#Eval("Date")%></td>                                        
                                    </tr>           
                                </table>                            
                                </div>
                            </td>
                          </EditItemTemplate>
                        </asp:ListView>
                    </div>
                    
                    <br />
                    
                    <div style="text-align:center;">
                        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="3"> 
                            <Fields>  
                                <asp:NextPreviousPagerField ButtonType="Link" 
                                    FirstPageText="<<"
                                    PreviousPageText="<"
                                    ButtonCssClass="PrevNext"
                                    ShowFirstPageButton="True" ShowNextPageButton="False" />
                         
                                <asp:NumericPagerField ButtonCount="10" NextPreviousButtonCssClass="abc" NumericButtonCssClass="PrevNext"  CurrentPageLabelCssClass="CurrentPage" />
                                <asp:NextPreviousPagerField ButtonType="Link"
                                    NextPageText=">"
                                    LastPageText=">>"
                                    ButtonCssClass="PrevNext"
                                    ShowLastPageButton="True"
                                    ShowPreviousPageButton="False" />
                                
                            </Fields>                            
                        </asp:DataPager>
                    </div>
                    <div>
                        <asp:SqlDataSource ID="SDS1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:HRDBCnn %>" 
                            SelectCommand="SELECT nvc_Code, nvc_Title, nvc_Spoke,Substring(nvc_News,1,case when len(convert(nvarchar(max),nvc_News))>120 then 120 else len(convert(nvarchar(max),nvc_News)) end) as nvc_News ,[sd_Date] FROM [tbl_News] WHERE ch_Status='0' ORDER BY NVC_CODE DESC"></asp:SqlDataSource>
                    </div>
                </fieldset>
            </div>

</asp:Content>

