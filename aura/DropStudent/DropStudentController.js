({
    doInit: function (component, event, helper)
    {
        helper.getData(component);
        helper.getPreviousCredit(component, event, helper);
 
        var controllingFieldAPI	= component.get("v.controllingFieldAPI");
        var dependingFieldAPI	= component.get("v.dependingFieldAPI");
        var objDetails			= component.get("v.objDetail");

        helper.fetchPicklistValues(component,objDetails,controllingFieldAPI, dependingFieldAPI);
        
        var orderId = component.get("v.recordId");
        
        console.log("***orderId***"+orderId);
        
        var action = component.get('c.getOrderItemDetail');
        
        action.setParams({ orderId : orderId });
        action.setCallback(this, function(response) 
		{
            var state = response.getState();
            if (state === "SUCCESS")
            {   
                var storeResponse = response.getReturnValue();
                
                component.set("v.orderItemList", storeResponse);
                
                var newPrice 	= storeResponse[0].ccrz__Price__c * -1;
                var itemTotal	= storeResponse[0].ccrz__ItemTotal__c;
                
                console.log("itemTotal***"+itemTotal);
                
                component.set("v.price",newPrice);
                component.set("v.itemTotal",itemTotal);
                
            }
        });
        $A.enqueueAction(action);
    },
    
    processAdj : function(component, event, helper)
    {    
        var objChild	= component.find('adj');
        var adjPrice 	= objChild.get("v.newPrice");
        var quantity	= component.get("v.qty");
        var extQuantity = quantity * adjPrice;
        
        console.log("***extQuantity***"+extQuantity);

        component.set ("v.price",adjPrice);
        component.set("v.extAmount",extQuantity);
    },
    
    onControllerFieldChange: function(component, event, helper)
    {     
        var controllerValueKey	= event.getSource().get("v.value");
        var depnedentFieldMap 	= component.get("v.depnedentFieldMap");
        
        if (controllerValueKey != '--- None ---')
        {
            var ListOfDependentFields = depnedentFieldMap[controllerValueKey];
            
            if(ListOfDependentFields.length > 0)
            {
                component.set("v.bDisabledDependentFld" , false);  
                helper.fetchDepValues(component, ListOfDependentFields);
                component.set("v.adjError", false);
            }
            else
            {
                component.set("v.bDisabledDependentFld" , true); 
                component.set("v.listDependingValues", ['--- None ---']);
            }  
            
        }
        else
        {
            component.set("v.listDependingValues", ['--- None ---']);
            component.set("v.bDisabledDependentFld" , true);
        }
    },
    
    showPrompt : function(component, event, helper)
    {
    	component.set("v.isPrompt", "true");

        var price = component.get("v.price");
        
        component.set("v.adjPercentDiscount",price);
	},
    
    showStep1 : function(component,event,helper)
    {        
        component.set("v.stepNumber", "One");
    },
    
    showStep2 : function(component,event,helper)
    {        
        component.set("v.stepNumber", "Two");
        component.set("v.isPrompt", "false");
    },
    /*
    processAdjustment : function(component,event,helper)
    {        
		var	isValidPercentage 	= true;
        var isValidDiscount		= true;
        
        var percentValue 		= component.get("v.percentDiscount");
        var priceA				= component.get("v.price");
        var qty					= component.get("v.qty");
        var adjPercentDiscount	= component.get("v.adjPercentDiscount");
        
        var discountedPrice 	= priceA * percentValue/100;
        
        priceA = priceA - discountedPrice;

        if(!isNaN(priceA))
        {
            if(percentValue > 100)
            {
                console.log("It's greater than 100" +percentValue);
                component.set("v.hasGraterPercent", true);
                isValidPercentage 	= false;
            }
            else
            {
                component.set("v.hasGraterPercent", false);
                
                var	isValidPercentage 	= true;
                
                var subAmountA = priceA * qty;
                
                component.set("v.price",priceA);
                component.set("v.subAmount",subAmountA);
            }
        }
        else
        {
            var actualPrice = component.get("v.price");
            
            console.log("***adjPercentDiscount###"+adjPercentDiscount);
            console.log("***actualPrice###"+actualPrice);
            if (parseFloat(adjPercentDiscount) >>> parseFloat(actualPrice))
            {
               component.set("v.hasGraterDiscount", true);
               isValidDiscount 	= false; 
            }
            else
            {
                component.set("v.hasGraterDiscount", false);
                
                var	isValidDiscount 	= true;
                
                var subAmountA = adjPercentDiscount * qty;
                
                component.set("v.price",adjPercentDiscount);
                component.set("v.subAmount",subAmountA);
            }
        }
        if(isValidPercentage)
        {
            component.set("v.stepNumber", "Two");
            component.set("v.isPrompt", "false");   
        }
    },*/
    
    onCheck: function(component,event,helper)
    {
		component.set("v.countError", "false");
	},
    
    onclickNext : function(component,event,helper)
    {
        var currentSN = component.get("v.stepNumber");
        
        if(currentSN == "One")
        {
            var lstVouchers = component.get("v.voucherList");
            var prcPrLrnr	= component.get("v.price");
            var itmTotal	= component.get("v.itemTotal");
            var previousCr	= component.get("v.previousCredit");
            var count 		= 0;
            
            for (var i=0; i < lstVouchers.length; i++)
            {
                if (lstVouchers[i].isSelected) count++;
            }
            
            console.log('***count***'+count);
            
            if(count > 0)
            {
                var extAmountActual = prcPrLrnr * count;
                var crLeft			= (itmTotal +previousCr) * -1;
                var rCrLeft			= crLeft.toFixed(2);
                
                component.set("v.countError", false);
                component.set("v.qty",count);
                component.set("v.extAmount",extAmountActual);
                component.set("v.stepNumber", "Two");
                component.set("v.CreditLeft",rCrLeft);
                component.set("v.maxPrice",prcPrLrnr);
                
                if(crLeft >= 0)
                {
                   component.set("v.buttonDisable", true); 
                }
            }
            else
            {
                component.set("v.countError", true);
            }
        }
        
    },
    
    onReasonCodeChange : function(component, event, helper)
    {
        if(component.find("rCodeField").get("v.value") != '--- None ---')
        {
            component.set("v.rCodeError", false);
        }
        
        if(component.find("rCodeField").get("v.value") === 'Other')
        {
            component.set("v.isOther", false);
        }
        else
        {
            component.set("v.isOther", true);
        }
    },
    
    overrideSelected: function (component, event, helper)
    {
        console.log("***overrideSelected***");
    },
    
    processSubmit : function(component, event, helper)
    {
        var explntn	  = component.get("v.explnation");
        
        var adjValid   = false;
        var rCodeValid = false;
        var otherValid = false;
        
        if(component.find("adjField").get("v.value") === '--- None ---')
        {
            component.set("v.adjError", true);
            
        }else{
            adjValid   = true;
        }
        
        if(component.find("rCodeField").get("v.value") === '--- None ---' && adjValid === false)
        {
            console.log("***");
            component.set("v.rCodeError", true);
        }else{
            rCodeValid = true;
        }
        
        if(explntn === undefined && component.find("rCodeField").get("v.value") === 'Other')
        {
            component.set("v.otherError", true);
        }else{
            var otherValid = true;
        }
        
        if (adjValid && rCodeValid && otherValid)
        {
            helper.onClickYes(component, event, helper);
            helper.processDropStudent(component, event, helper);
        }
    },
    
    cancel : function(component, event, helper)
    {
        $A.get("e.force:refreshView").fire();
        component.set("v.stepNumber", "Zero");
    },
    
    isRefreshed: function(component, event, helper)
    {
        location.reload();
    },
})