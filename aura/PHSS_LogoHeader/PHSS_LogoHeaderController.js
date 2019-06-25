/**
 * Created by bjarmolinski on 2019-06-03.
 */
({
    doInit: function(component, event, helper) {
        var sPageURL = decodeURIComponent(window.location.search.substring(1)); //You get the whole decoded URL of the page.
        var indx = sPageURL.indexOf('startURL');
        sPageURL = sPageURL.substring(indx);
        if (sPageURL) {
            component.set("v.b2cOrigin", true);
        } else {
            component.set("v.b2cOrigin", false);
        }

    },

    openMenu: function(component, event, helper) {

        var menu = component.find('menu_container');
        var isClosed = $A.util.hasClass(menu, 'slds-is-closed');
        console.log(isClosed);

        if (isClosed) {
            $A.util.removeClass(menu, 'slds-is-closed');
            $A.util.addClass(menu, 'slds-is-open');
        } else {
            $A.util.removeClass(menu, 'slds-is-open' );
            $A.util.addClass(menu, 'slds-is-closed');
        }
    }
})