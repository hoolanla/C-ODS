﻿<%@ Page Title="Upload" Language="C#" MasterPageFile="~/Masterpage/Site.Master" AutoEventWireup="true" CodeBehind="SendMailApprove.aspx.cs" Inherits="ODS.PROJECT.SendMailApprove"  EnableEventValidation="FALSE" %>





<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



   
        <h2><%: Title %> </h2>

<%--    <script type="text/javascript" src="Scripts/jquery-1.10.2.min.js"></script>--%>
  <%--      <script src="jquery.multifile.js"></script>--%>


    
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>
<script type="text/javascript">



    $(function () {
        $('[id*=dlemailCC]').multiselect({
            includeSelectAllOption: true
        });
    });
</script>






<div class="form-group">

                    <label class="white col-sm-3 control-label " id="lblcountry">Send to :</label>
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-md-4 gap-text">
                                <select class="form-control ft20" id="dlemail" tabindex ="1" name="dlemail">     
                                      <option value="THAILAND" selected ="selected"></option>
                      
                                </select>
                            </div>
             
                        </div>
                    </div>
                </div>     

<br />
    <br />

    <div class="form-group">

                    <label class="white col-sm-3 control-label " id="lblCC">Content :</label>
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-md-4 gap-text">
                              <%--  <select class="form-control ft20" id="dlemailCC" tabindex ="2" name="dlemailCC" multiple="multiple">     
                                      <option value="THAILAND" selected ="selected"></option>
                                </select>--%>

                          <asp:Listbox ID="dlemailCC" runat="server" SelectionMode="Multiple">

 
</asp:Listbox>

                            </div>
             
                        </div>
                    </div>
                </div> 



        <asp:HiddenField ID="doc_id" runat="server"  />
        <asp:HiddenField ID="email" runat="server" />
        <asp:HiddenField ID="content" runat="server" />



        <div class="row">
        <div class="col-md-4">
        
        </div>
        <div class="col-md-4">
 
            <br />
            <br />


                    <asp:Button ID="btnUpload" runat="server" Text="SEND MAIL" CssClass="btn btn-default"
onclick="btnUpload_Click" />


         
        </div>
        <%--<div class="col-md-4">--%>
     
        <%--</div>--%>
    </div>    
         

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="CotentScript" runat="server">
  
    <script src="<%=ResolveClientUrl("~/Scripts/pageScript/Upload.js")%>"></script>
     <input runat="server" type="hidden" value="" id="HidEmail"  />
</asp:Content>





