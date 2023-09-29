function calculateBill(num,id)
{	
	
	var index = parseInt(id);
	
	var priceId = index + "price" ;
	
	var price = document.getElementById(priceId);
	
	var totalId = index + "total";
	
	var total = document.getElementById(totalId);
	
	var qntyId = index + "qnty";
	
	var qnty = document.getElementById(qntyId);
	
	if(id.indexOf('minus') != -1)
	{
		var ans = parseInt(total.innerHTML) - parseInt(price.innerHTML);
		
		qnty.value = parseInt(qnty.value) - 1;
		
		total.innerHTML = ans + "";
	}
	
	if(id.indexOf('plus') != -1)
	{
		var ans = parseInt(total.innerHTML) + parseInt(price.innerHTML);
		
		qnty.value = parseInt(qnty.value) + 1;
		
		total.innerHTML = ans + "";
	}
		
	var finalBill = 0;	
	
	console.log(num);
	
	for(var i=1;i<=num;i++)
	{
		
		totalId = i + "total";
		
		total = document.getElementById(totalId);
		
		finalBill  = finalBill + parseInt(total.innerHTML);
		
	}
	
	var final = document.getElementById("finalBill");
	
	final.innerHTML = finalBill + "";
	
	var finalBillCheckOut = document.getElementById("finalBillCheckOut");
	
	finalBillCheckOut.innerHTML = finalBill + "";
	
}