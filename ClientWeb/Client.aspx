﻿<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="ClientWeb.Client" %>

<%@ Import Namespace="System.Globalization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="js/mdl-select.js"></script>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolderSearch">
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
        <input class="mdl-textfield__input" type="text" id="name" name="name">
        <label class="mdl-textfield__label" for="name">Nom</label>
    </div>
    <label>Type de transactions</label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="achat">
        <input type="radio" id="achat" class="mdl-radio__button" name="transaction" value="1">
        <span class="mdl-radio__label">Achat</span>
    </label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="location">
        <input type="radio" id="location" class="mdl-radio__button" name="transaction" value="2">
        <span class="mdl-radio__label">Location</span>
    </label>
    <label>Type de biens</label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="appartement">
        <input type="radio" id="appartement" class="mdl-radio__button" name="bien" value="1">
        <span class="mdl-radio__label">Appartement</span>
    </label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="maison">
        <input type="radio" id="maison" class="mdl-radio__button" name="bien" value="2">
        <span class="mdl-radio__label">Maison</span>
    </label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="garage">
        <input type="radio" id="garage" class="mdl-radio__button" name="bien" value="3">
        <span class="mdl-radio__label">Garage</span>
    </label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="terrain">
        <input type="radio" id="terrain" class="mdl-radio__button" name="bien" value="4">
        <span class="mdl-radio__label">Terrain</span>
    </label>
    <label>Type de chauffage</label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="aucun">
        <input type="radio" id="aucun" class="mdl-radio__button" name="chauffage" value="1">
        <span class="mdl-radio__label">Aucun</span>
    </label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="individuel">
        <input type="radio" id="individuel" class="mdl-radio__button" name="chauffage" value="2">
        <span class="mdl-radio__label">Individuel</span>
    </label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="collectif">
        <input type="radio" id="collectif" class="mdl-radio__button" name="chauffage" value="3">
        <span class="mdl-radio__label">Collectif</span>
    </label>
    <label>Type d'énergie de chauffage</label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="aucunEnergie">
        <input type="radio" id="aucunEnergie" class="mdl-radio__button" name="energie" value="1">
        <span class="mdl-radio__label">Aucun</span>
    </label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="fioul">
        <input type="radio" id="fioul" class="mdl-radio__button" name="energie" value="2">
        <span class="mdl-radio__label">Fioul</span>
    </label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="gaz">
        <input type="radio" id="gaz" class="mdl-radio__button" name="energie" value="3">
        <span class="mdl-radio__label">Gaz</span>
    </label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="electrique">
        <input type="radio" id="electrique" class="mdl-radio__button" name="energie" value="4">
        <span class="mdl-radio__label">Electrique</span>
    </label>
    <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="bois">
        <input type="radio" id="bois" class="mdl-radio__button" name="energie" value="5">
        <span class="mdl-radio__label">Bois</span>
    </label>
    <br />
    <br />
    <label class="mdl-components__link-text">Prix</label>
    <div id="slider-prix"></div>
    <input type="hidden" name="prix-min" id="prix-min" />
    <input type="hidden" name="prix-max" id="prix-max" />

    <br />
    <br />
    <label class="mdl-components__link-text">Montant des charges</label>
    <div id="slider-charges"></div>
    <input type="hidden" name="charges-min" id="charges-min" />
    <input type="hidden" name="charges-max" id="charges-max" />

    <br />
    <br />
    <label class="mdl-components__link-text">Nombre de pièces</label>
    <div id="slider-piece"></div>
    <input type="hidden" name="piece-min" id="piece-min" />
    <input type="hidden" name="piece-max" id="piece-max" />

    <br />
    <br />
    <label class="mdl-components__link-text">Nombre d'étages</label>
    <div id="slider-etages"></div>
    <input type="hidden" name="etages-min" id="etages-min" />
    <input type="hidden" name="etages-max" id="etages-max" />

    <br />
    <br />
    <label class="mdl-components__link-text">Superficie</label>
    <div id="slider-superficie"></div>
    <input type="hidden" name="superficie-min" id="superficie-min" />
    <input type="hidden" name="superficie-max" id="superficie-max" />
    
    <br/>
    <br/>
    <br/>
    <br/>

    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored  mdl-js-ripple-effect" id="search-button">
        <i class="material-icons">search</i>
    </button>
    <script type="text/javascript">
        var valuePrixMin = $('#prix-min'),
            valuePrixMax = $('#prix-max'),
            valuePieceMin = $('#piece-min'),
            valuePieceMax = $('#piece-max'),
            valueChargesMin = $('#charges-min'),
            valueChargesMax = $('#charges-max'),
            valueEtagesMin = $('#etages-min'),
            valueEtagesMax = $('#etages-max'),
            valueSuperficieMin = $('#superficie-min'),
            valueSuperficieMax = $('#superficie-max');

        var slider_prix = document.getElementById('slider-prix');
        noUiSlider.create(slider_prix, {
            start: [<%# PrixMin %>, <%# PrixMax + 1 %>],
            connect: true,
            step: 100,
            range: {
                'min': <%# PrixMin %>,
                'max': <%# PrixMax + 1 %>
                },
            format: wNumb({
                decimals: 0
            })
        });

        var slider_piece = document.getElementById('slider-piece');
        noUiSlider.create(slider_piece, {
            start: [<%# NbPieceMin %>, <%# NbPieceMax + 1 %>],
            connect: true,
            step: 1,
            range: {
                'min': <%# NbPieceMin %>,
                'max': <%# NbPieceMax + 1 %>
                },
            format: wNumb({
                decimals: 0
            })
        });

        var slider_charges = document.getElementById('slider-charges');
        noUiSlider.create(slider_charges, {
            start: [<%# ChargesMin %>, <%# ChargesMax + 1 %>],
            connect: true,
            step: 1,
            range: {
                'min': <%# ChargesMin %>,
                'max': <%# ChargesMax + 1 %>
                },
            format: wNumb({
                decimals: 0
            })
        });

        var slider_etages = document.getElementById('slider-etages');
        noUiSlider.create(slider_etages, {
            start: [<%# NbEtagesMin %>, <%# NbEtagesMax + 1 %>],
            connect: true,
            step: 1,
            range: {
                'min': <%# NbEtagesMin %>,
                'max': <%# NbEtagesMax + 1 %>
                },
            format: wNumb({
                decimals: 0
            })
        });

        var slider_surface = document.getElementById('slider-superficie');
        noUiSlider.create(slider_surface, {
            start: [<%# SurfaceMin %>, <%# SurfaceMax + 1 %>],
            connect: true,
            step: 1,
            range: {
                'min': <%# SurfaceMin %>,
                'max': <%# SurfaceMax + 1 %>
                },
            format: wNumb({
                decimals: 0
            })
        });

        $('#search-button').click(function(e) {
            e.preventDefault();
            valuePrixMin.val(slider_prix.noUiSlider.get()[0]);
            valuePrixMax.val(slider_prix.noUiSlider.get()[1]);
            valuePieceMin.val(slider_piece.noUiSlider.get()[0]);
            valuePieceMax.val(slider_piece.noUiSlider.get()[1]);
            valueChargesMin.val(slider_charges.noUiSlider.get()[0]);
            valueChargesMax.val(slider_charges.noUiSlider.get()[1]);
            valueEtagesMin.val(slider_etages.noUiSlider.get()[0]);
            valueEtagesMax.val(slider_etages.noUiSlider.get()[1]);
            valueSuperficieMin.val(slider_surface.noUiSlider.get()[0]);
            valueSuperficieMax.val(slider_surface.noUiSlider.get()[1]);
            $('#search').submit();
        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="grid-container">
            <asp:Repeater ID="rpResultats" runat="server">
                <ItemTemplate>
                    <div class="card-square mdl-card mdl-shadow--2dp">
                        <div class="mdl-card__title mdl-card--expand" style="background: url('<%#(string)Eval("PhotoPrincipaleBase64") != "" && Eval("PhotoPrincipaleBase64") != null ? "data:img/png;base64," + Eval("PhotoPrincipaleBase64") : "./res/noImage.jpg"%>'); -ms-background-size: cover; background-size: cover; color: #fff;">
                        </div>
                        <div class="mdl-card__title">
                            <asp:Label runat="server" ID="Label1" Text='<%# Eval("Titre") %>' />
                        </div>
                        <div class="mdl-card__actions mdl-card--border">
                            <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" href="Bien.aspx?id=<%#Eval("Id") %>">Voir l'offre
                            </a>
                            <div class="mdl-layout-spacer"></div>
                            <div class="mdl-color-text--accent price">
                                <%# ((double) Eval("Prix")).ToString("C", new CultureInfo("fr-FR")) %>
                            </div>

                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="grid-container pagination">
            <asp:Button runat="server" ID="FirstPage" Text="<< First" OnClick="lbFirst_Click" CssClass="mdl-button mdl-js-button mdl-js-ripple-effect mdl-color-text--primary" />
            <asp:Button runat="server" ID="PrevPage" Text="< Prev" OnClick="lbPrevious_Click" CssClass="mdl-button mdl-js-button mdl-js-ripple-effect mdl-color-text--primary" />

            <asp:Repeater ID="rptPaging" OnItemCommand="rptPaging_ItemCommand" OnItemDataBound="rptPaging_ItemDataBound" runat="server">
                <ItemTemplate>
                    <asp:Button ID="lbPaging" CssClass="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--primary" runat="server" CommandArgument='<%# Eval("PageIndex") %>' CommandName="newPage" Text='<%# Eval("PageText") %> ' Width="20px" />
                </ItemTemplate>
            </asp:Repeater>

            <asp:Button runat="server" ID="NextPage" Text="Next >" OnClick="lbNext_Click" CssClass="mdl-button mdl-js-button mdl-js-ripple-effect mdl-color-text--primary" />
            <asp:Button runat="server" ID="LastPage" Text="Last >>" OnClick="lbLast_Click" CssClass="mdl-button mdl-js-button mdl-js-ripple-effect mdl-color-text--primary" />
        </div>
    </div>

</asp:Content>
